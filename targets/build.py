#!/usr/bin/env python
# build.py

"""This build.py can be used to synthesize the clip fixed logic or compile it for simulation:
For synthesis run:  python build.py (--noinc)
For simulation run: python build.py --flow=compile (--noinc)
"""

import os
import shutil
from hwtools.api import (
    cmd,
    EdaBuildClass,
    githubbuildtools,
    pathapi,
    pp,
    vivado,
    WorkingFolder,
)
from hwcommon.cmd.gitcmd import git
from mako.template import Template
from enum import Enum

import commonbuildfuncs

from targetconfig import targetconfigs
from targetutils import add_target_build_arg, get_applicable_targetconfigs

# Global list to track temporary files
TEMP_FILES = []

# Construct the uservisible tag to prevent this file from being kept as a user visible file
USERVISIBLE_TAG = "githubvisible" + "=" + "true"
GITHUBKEEP_TAG = "githubkeep" + "=" + "true"

def _get_nihdl_command():
    """Determine which command to use for the LV FPGA HDL Tools."""
    try:
        # Run 'where nihdl.bat' to check if it exists in the PATH
        result = cmd.run("where", "nihdl.bat", raise_on_err=False)
        # If command succeeds (result = True), then nihdl.bat exists
        if result:
            return "nihdl.bat"
    except Exception:
        # Ignore errors from the 'where' command
        pass
    
    # Default to 'nihdl' if nihdl.bat is not found or an error occurred
    return "nihdl"

def _render_mako_template(template_path):
    """Render a Mako template and write the output to objects directory
    
    Args:
        template_path: Path to template file
        
    Returns:
        bool: True if successful, False otherwise
    """
    template_dir = os.path.dirname(template_path)
    template_file = os.path.basename(template_path)
    output_dir = os.path.join("objects", template_dir)
    output_file = template_file.replace('.mako', '')
    output_path = os.path.join(output_dir, output_file) 
    
    if os.path.exists(template_path):
        os.makedirs(output_dir, exist_ok=True)
        with open(template_path, 'r') as f:
            template = Template(f.read())
        output_text = template.render(
            include_clip_socket=True,
            include_custom_io=False,
            custom_target=False,
            lv_target_name="",
            lv_target_guid="",
            custom_signals=[]
        )
        with open(output_path, 'w') as f:
            f.write(output_text)

class VSMakeMode(Enum):
    nosynth = "nosynth"
    synth = "synth"
    lvfpgasynth = "lvfpgasynth"

def _run_cfmake(args, githubonly=False):
    """Run cfmake on the targets
    """

    for target in get_applicable_targetconfigs(args):
        tc = targetconfigs[target]
        if tc.get("supportsgithubrelease", True) or (not githubonly):
            print(f"Running cfmake on {target}")
            tc = targetconfigs[target]

            target_xml = pathapi.get_abs_path(
                base="root", path=f"{target}/xdc/cfmakesettings.xml"
            )

            target_xdc = pathapi.get_abs_path(
                base="objects",
                path=f"{target}/cfmake/{tc['constraintsfile']}",
                checkexist=False,
            )

            commonbuildfuncs.cfmake(target_xml, target_xdc, tc["toplevelname"])           

            """Run cfmake on placement constraints"""
            target_xml = pathapi.get_abs_path(
                base="root", path=f"{target}/xdc/cfmakesettings_place.xml"
            )
            target_xdc = pathapi.get_abs_path(
                base="objects",
                path=f"{target}/cfmake/constraints_place.xdc",
                checkexist=False,
            )

            commonbuildfuncs.cfmake(
                target_xml, target_xdc, "constraints_place", delete_and_recreate=False
            )

def _run_vsmake(mode: VSMakeMode):
    # Delete old modelsim data just in case
    shutil.rmtree("./modelsim", ignore_errors=True)

    # delete old vsmake outputs
    cmd.runlive("vsmake", "--clean", raise_on_err=True)

    # Create a new modelsim project, if needed, by running vsmake
    # on a low-level package that shouldn't have any dependencies
    cmd.runlive("vsmake", "PkgNiUtilities", raise_on_err=True)

    # Run VSMake with arguements
    if mode == VSMakeMode.nosynth:
        cmd.runlive("vsmake", raise_on_err=True)
    elif mode == VSMakeMode.synth:
        cmd.runlive("vsmake", "--synth", raise_on_err=True)        
    elif mode == VSMakeMode.lvfpgasynth:
        cmd.runlive("vsmake", "--synth", "--customarg=lvfpga", raise_on_err=True)
    else:
        raise ValueError(f"Unsupported vsmake mode: {mode}")

def _copy_object_files_for_github(args):
    # Copy files from the objects directory into the GitHub source code directory
    # It is not ideal to put objects into the source code, but we have a couple exceptions
    # like the combined XDC files and the list of source HDL produced by VSMake
    global TEMP_FILES
    
    for target in get_applicable_targetconfigs(args):
        tc = targetconfigs[target]
        if tc.get("supportsgithubrelease", True):
            # Copy hdl files list from the objects directory into the source code directory
            hdl_file_list_objects = pathapi.get_abs_path(
                base="objects", path=f"{target}/githubfilelists"
            )
            hdl_file_list_github = pathapi.get_abs_path(
                base="root", path=f"{target}", checkexist=False
            )
            # Iterate through files in the source directory
            for file_name in os.listdir(hdl_file_list_objects):
                objects_file = os.path.join(hdl_file_list_objects, file_name)
                github_file = os.path.join(hdl_file_list_github, file_name)
                shutil.copyfile(objects_file, github_file)
                TEMP_FILES.append(github_file)

            # Copy XDC files from the objects directory into the source code directory            
            xdc_cfmake_objects = pathapi.get_abs_path(
                base="objects", path=f"{target}/cfmake"
            )
            xdc_github = pathapi.get_abs_path(
                base="root", path=f"{target}/xdc", checkexist=False
            )
            os.makedirs(xdc_github, exist_ok=True)
            # ##### DOUBLE SOURCED CODE ALERT #####
            # This text is double sourced to what is in cfmake - be careful to keep it in sync
            header = "Automatically generated XDC file. Do not modify manually!"
            # Copy all files from xdc_objects to xdc_github
            for file_name in os.listdir(xdc_cfmake_objects):
                objects_file = os.path.join(xdc_cfmake_objects, file_name)
                github_file = os.path.join(xdc_github, file_name)
                # Read source file content
                with open(objects_file, 'r') as f:
                    content = f.read()           
                # Remove all instances of the header text
                original_content = content
                content = content.replace(header, "")
                # If no header is found, then it has changed in cfmake and we need to raise an error
                if content == original_content:
                    raise ValueError(f"XDC header text not found in file: {objects_file}")            
                # Write modified content to destination
                with open(github_file, 'w') as f:
                    f.write(content)
                TEMP_FILES.append(github_file)              


def _delete_temp_files():
    """Deletes all temporary files that were created during the build process"""
    global TEMP_FILES
    
    pp.printmsg(f"Deleting {len(TEMP_FILES)} temporary files...")
    
    for file_path in TEMP_FILES:
        try:
            if os.path.exists(file_path):
                os.remove(file_path)
                pp.printmsg(f"Deleted: {file_path}")
            else:
                pp.printmsg(f"File not found: {file_path}")
        except Exception as e:
            pp.printwrn(f"Failed to delete {file_path}: {str(e)}")
    
    # Clear the list after deletion
    TEMP_FILES.clear()
    pp.printmsg("Temporary file cleanup complete.")


def _process_vsmake_file_lists(args):
    """Process the file lists generated by VSMake to create file lists for use in the GitHub user project

       This is a pre-req for bundle_user_dependencies because it turns the VSMake file lists into the GitHub
       file lists that are used to create the Vivado project. 
    """
 
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"{target}", base="root"):
            # Check if the target supports GitHub release before processing the vsmake file lists
            tc = targetconfigs[target]
            toplevelname = tc["toplevelname"]
            if tc.get("supportsgithubrelease", True):
                # List of files to include (in addition to files listed in the JSON file)
                include_files = [] # currently empty, but leaving this in case we need it in the future
                # List of files to exclude
                exclude_files = []  # currently empty, but leaving this in case we need it in the future
                # File generated by VSMake that contains the list of files to include in the Vivado project
                vsmake_file_list_path = pathapi.get_abs_path(
                    base="objects", path=f"{target}/vsmake/absfiles_{toplevelname}.json", checkexist=False
                )                       
                # Locations to store the generated file lists in the objects directory during build
                deps_file_list_path = pathapi.get_abs_path(
                    base="objects", path=f"{target}/githubfilelists/vivadoprojectdeps.txt", checkexist=False
                )
                source_file_list_path = pathapi.get_abs_path(
                    base="objects", path=f"{target}/githubfilelists/vivadoprojectsources.txt", checkexist=False
                )         
                # Create the lists of files that will be included in the Vivado project
                githubbuildtools.process_vsmake_file_list(
                    vsmake_file_list_path, 
                    include_files, 
                    exclude_files, 
                    deps_file_list_path, 
                    source_file_list_path       
                )


def _gather_dependencies(args):
    # Aggregate all vsmake file list paths
    all_vsmake_file_lists = []    
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"{target}", base="root"):
            # Check if the target supports GitHub release before processing the vsmake file lists
            tc = targetconfigs[target]
            toplevelname = tc["toplevelname"]
            if tc.get("supportsgithubrelease", True):
                vsmake_file_list_path = pathapi.get_abs_path(
                    base="objects", path=f"{target}/vsmake/absfiles_{toplevelname}.json", checkexist=False
                )
                # Add to aggregated list
                all_vsmake_file_lists.append(vsmake_file_list_path)  
    # Copy all dependency files into deps/flexrio_deps
    deps_folder = "../deps/flexrio_deps"
    githubbuildtools.gather_release_deps_files(
        all_vsmake_file_lists, 
        deps_folder
    )   

def _write_version_file(args):
    # Write the version file into the deps repo
    version_file = pathapi.get_abs_path(
        base="repo", path=f"version.txt", checkexist=False
    )
    githubbuildtools.write_version_file(version_file)
    return version_file


@EdaBuildClass.flow(["compile", "build"])
def update_revision(args):
    """Updates the revision to generate the package file"""

    if args.noinc:
        cmd.runlive("updaterevision", "--noinc", raise_on_err=True)
    else:
        cmd.runlive("updaterevision", raise_on_err=True)


@EdaBuildClass.flow(["buildgithubrelease", "testgithubrelease"])
def cfmake_github(args):
    """Run cfmake only on GitHub targets to save time
    """
    _run_cfmake(args, githubonly=True) 


@EdaBuildClass.flow(["build"])
def cfmake(args):
    """Run cfmake on all targets
    """
    _run_cfmake(args, githubonly=False) 


@EdaBuildClass.flow(["build", "buildgithubrelease", "testgithubrelease", "compile"])
def process_the_window(args):
    """Process TheWindow mako template - needed for both VSMake and GitHub release

       This is a pre-req for vsmake_compile and vsmake_build because TheWindow.vhd needs mako processing
    """
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"{target}", base="root"):
            # Process TheWindow.vhd.mako template     
            template_path = "rtl-lvfpga/lvgen/TheWindow.vhd.mako"
            _render_mako_template(template_path)


@EdaBuildClass.flow(["build"])
def process_resource_xml(args):
    """Process Resource XML mako template
        
       This is a pre-req for build because the processed resource XML file is published in the nuget
       that proves the XML files to the LV FPGA target support installer.  This is not needed for
       buildgithubrelease because in the GitHub workflow the XML files are processed as a user step
       when they export a custom LV FPGA target.
    """
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"{target}", base="root"):
            # Look for XML Mako templates in the lvFpgaTarget directory
            template_dir = "lvFpgaTarget"
            if os.path.exists(template_dir):
                # Find all .xml.mako files in the directory
                # The XML processing needs to be  generic because targets have different file names
                template_files = [f for f in os.listdir(template_dir) 
                                 if f.endswith('.xml.mako')]               
                if not template_files:
                    continue                    
                # Process each template file
                for template_file in template_files:
                    template_path = os.path.join(template_dir, template_file)
                    _render_mako_template(template_path)


@EdaBuildClass.flow(["build", "buildgithubrelease", "testgithubrelease"])
def process_xdc_template(args):
    """Process Resource XDC constraints template
    """
    for target in get_applicable_targetconfigs(args):
        tc = targetconfigs[target]
        if tc.get("supportsgithubrelease", True):
            xdc_cfmake_objects = pathapi.get_abs_path(
                base="objects", path=f"{target}/cfmake")
            xdc_github_processed = pathapi.get_abs_path(
                base="root", path=f"{target}/objects/xdc", checkexist=False
            )
            for file_name in os.listdir(xdc_cfmake_objects):
                objects_file = os.path.join(xdc_cfmake_objects, file_name)   
                if "_template" in objects_file:
                    # For _template files, duplicate the XDC file to the objects/xdc folder while removing "_template"
                    # The template files are processed as part of the GitHub workflow of creating a Vivado project.  But
                    # for this release testing, we don't need to process it because we aren't inserting a TheWindow netlist.
                    # We just need it in the right place with the right name
                    processed_file = os.path.join(
                        xdc_github_processed, file_name.replace("_template", "")
                    )
                    os.makedirs(os.path.dirname(processed_file), exist_ok=True)
                    shutil.copyfile(objects_file, processed_file)


@EdaBuildClass.flow(["compile"])
def vsmake_compile(args):
    """Compile the target for nisim"""
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"{target}", base="root"):
            _run_vsmake(mode=VSMakeMode.nosynth)


@EdaBuildClass.flow(["buildgithubrelease", "testgithubrelease"])
def vsmake_synth_buildgithub(args):
    """Run VSMake only on GitHub targets to save build time
    """    
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"{target}", base="root"):
            tc = targetconfigs[target]
            if tc.get("supportsgithubrelease", True):
                _run_vsmake(mode=VSMakeMode.synth)
    _process_vsmake_file_lists(args)


@EdaBuildClass.flow(["build"])
def vsmake_synth(args):
    """Run VSMake on tall targets - by default, the FlexRIO targets will include fies needed for the GitHub release
    in the synthesis file list when running VSMake.  
    """    
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"{target}", base="root"):
            _run_vsmake(mode=VSMakeMode.synth)


@EdaBuildClass.flow(["build"])
def vsmake_synth_lvfpga(args):
    """Run VSMake again with the "lvfga" option
    
       This runs VSMake excluding lvgen and other files that are needed for 
       synthesis but should not ship with the LV FPGA target plugin.  The file
       list output of this VSMake run is used to create the target plugin export.

       This only needs to run on targets that support GitHub release because all other
       targets do the file exclusion all the time when VSMake runs.
    """
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"{target}", base="root"):
            tc = targetconfigs[target]
            if tc.get("supportsgithubrelease", True):
                _run_vsmake(mode=VSMakeMode.lvfpgasynth)


@EdaBuildClass.flow("build")
def gather_synthesis_files(args):
    """Gathers all files used by synthesis to a single directory
    
       This must run after vsmake_lvfpga because we want to rerun vsmake on github targets
       without including all the lvgen files so they don't get pulled into gatheredfiles
       for export into the target plugin.
    """
    for target in get_applicable_targetconfigs(args):
        tc = targetconfigs[target]
        topname = tc["toplevelname"]

        # Copy files used by vsmake
        absfiles_txt = pathapi.get_abs_path(
            base="objects", path=f"{target}/vsmake/absfiles_{topname}.txt"
        )
        dest_base = pathapi.get_abs_path(
            base="objects", path=f"{target}/gatheredfiles", checkexist=False
        )

        with WorkingFolder(dest_base, base=None, delete_and_recreate=True):
            with open(absfiles_txt, "r") as file:
                for line in file:
                    s = line.split("::")[1].rstrip()
                    f = os.path.basename(s)
                    d = os.path.join(dest_base, f)
                    pp.printmsg(shutil.copyfile(s, d) + " <--- " + s)


# Only run this steps if this is a CI build - creating the release branch does not work
# in a PR build because the "source_branch" is a temporary merge branch for the PR that 
# cannot be used to restore the files.
@EdaBuildClass.flow(["buildgithubrelease"])
def build_release_branch(args):
    """Build the GitHub release branch and check it into AzDO"""
    git.runlive("status", raise_on_err=True)  
    git.runlive("fetch", "origin", "github/targets", raise_on_err=True)
    git.runlive("checkout", "github/targets", raise_on_err=True)
    source_branch = "origin/" + args.source_branch.replace("refs/heads/", "")
    print(f"Source branch: {source_branch}")    
    git.runlive("restore", "--source", source_branch, ":/", raise_on_err=True)
    # 1) Keep the .git folder because we need it to push to the git repo
    # 2) Keep the repo docs/public folder because it contains the user-facing documentation and
    #    it has binaries that can't get uservisible tag
    # 3) Keep the objects folder because it contains files needed to build
    #    - this is OK because they are ignored in .gitignore
    # 4) Keep the targetpluginmenus folder because it contains the target plugin files that are needed
    #    to generate the target plugin.  Some of these files are binary and not marked as user visible.
    skip_paths = [
        pathapi.get_abs_path(".git", base="repo"),
        pathapi.get_abs_path("docs/public", base="repo"),     
        pathapi.get_abs_path("objects/", base="root"),
        pathapi.get_abs_path("targets/common/lvFpgaTarget/targetpluginmenus", base="repo"),        
    ]
    # 5) Keep the target docs/public folder because it contains the user-facing documentation and
    #    it has binaries that can't get uservisible tag.  Not all targets have this folder so we disable
    #    checking existence
    for target in get_applicable_targetconfigs(args):
        skip_paths.append(pathapi.get_abs_path(f"targets/{target}/docs/public", base="repo", checkexist=False))

    # Normalize the skip_paths for cross-platform compatibility
    skip_paths = [os.path.normpath(path) for path in skip_paths]
    githubbuildtools.delete_files_without_uservisible_tag(
        pathapi.get_abs_path(".", base="repo"), USERVISIBLE_TAG, skip_paths
    )

    # Copy files from objects directory into the GitHub source code directory
    _copy_object_files_for_github(args)     

    # Write the version file into the repo
    _write_version_file(args) 

    git.runlive("add", "--all", raise_on_err=True)

    # Check if there are any changes using diff-index
    # diff-index returns True if no changes, False if there are changes
    has_no_changes = git.run("diff-index", "--quiet", "HEAD", raise_on_err=False)   
    if has_no_changes:
        pp.printmsg("No changes to commit. Skipping commit and push.")
    else:
        git.runlive("commit", "-m", args.commit_message, raise_on_err=True)
        git.runlive("push", "origin", "github/targets", raise_on_err=True)


# Only run this steps if this is a PR build - we cannot build the release staging branch in a PR build
# because the "source_branch" is a temporary merge branch for the PR.  However, we still want to test
# the GitHub release process so we run this step to copy the files into the GitHub source code directory
# which is needed for the downstream tests to work properly.
@EdaBuildClass.flow(["testgithubrelease"])
def copy_testing_files(args):
    # Copy files from objects directory into the GitHub source code directory
    _copy_object_files_for_github(args)  


@EdaBuildClass.flow(["buildgithubrelease", "testgithubrelease"])
def create_user_vivado_project(args):
    """Create a Vivado project for the user FPGA - for testing only
    
       This is done after build_release_branch because the repo is in the state after all the
       non-user-visible files are deleted and better mimicks what it will be like for the user.
    """
    # Gather all of the dependency files from objects into deps/flexrio_deps
    _gather_dependencies(args)    
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"{target}", base="root"):
            if os.path.exists("VivadoProject"):
                shutil.rmtree("VivadoProject", ignore_errors=True)
            # Check if the target supports GitHub release before running Vivado project creation
            tc = targetconfigs[target]
            if tc.get("supportsgithubrelease", True):
                _render_mako_template("rtl-lvfpga/lvgen/TheWindow.vhd.mako")
                nihdl_command = _get_nihdl_command()
                cmd.runlive(nihdl_command, "create-project", "--test", raise_on_err=True)
            else:
                pp.printmsg(
                    f"Target does not support GitHub, skipping Vivado project creation."
                )


# ******* SKIPPING THIS STEP FOR NOW **************
# ** WE WILL RE ENABLE THIS LATER ONCE WE HAVE IT WORKING **
# #@EdaBuildClass.flow(["buildgithubrelease", "testgithubrelease"])
@EdaBuildClass.flow(["SKIP"])
def synth_user_fpga(args):
    """Synthesize the user FPGA using Vivado - for testing only
    
       This is done after build_release_branch because the repo is in a state after all the
       non-user-visible files are deleted and better mimicks what it will be like for the user.
    """
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"{target}", base="root"):
            # Check if the target supports GitHub release before running Vivado project creation
            tc = targetconfigs[target]
            if tc.get("supportsgithubrelease", True):
                vivado_project_path = pathapi.get_abs_path(
                    base="root", path=f"{target}/VivadoProject"
                )
                os.chdir(vivado_project_path)
                vivado.run(
                    "-mode",
                    "tcl",
                    "-source",
                    "../TCL/SynthProject2.tcl",
                    raise_on_err=True,
                )
            else:
                pp.printmsg(f"Target does not support GitHub, skipping synthesis.")


@EdaBuildClass.flow(["testgithubrelease"])
def cleanup_testing_files(args):
    _delete_temp_files()


# This must be the last stage of buildgithubrelease because it deletes everything except the dependencies
@EdaBuildClass.flow(["buildgithubrelease"])
def build_deps_branch(args):
    """Build the GitHub dependencies branch and check it into AzDO"""

    _write_version_file(args)

    # Gather all of the dependency files from objects into deps/flexrio_deps
    _gather_dependencies(args)
                            
    # 1) Keep the .git folder because we need it to push to the git repo
    # 2) Keep the targets objects folder because it contains the files that are during the build
    #    - this is OK because they are ignored in .gitignore
    # 3) Keep the githubdeps folder because these are the files we want in the deps repo
    skip_paths = [
        pathapi.get_abs_path(".git", base="repo"),
        pathapi.get_abs_path("objects/", base="root"),
        pathapi.get_abs_path("deps/flexrio_deps", base="repo"),
        pathapi.get_abs_path("version.txt", base="repo"),
        pathapi.get_abs_path(".gitignore", base="repo"),
    ]

    git.runlive("status", raise_on_err=True)  
    git.runlive("fetch", "origin", "github/deps", raise_on_err=True)
    git.runlive("checkout", "github/deps", raise_on_err=True)
    source_branch = "origin/" + args.source_branch.replace("refs/heads/", "")
    print(f"Source branch: {source_branch}")    
    git.runlive("restore", "--source", source_branch, ":/", raise_on_err=True)

    # Normalize the skip_paths for cross-platform compatibility
    skip_paths = [os.path.normpath(path) for path in skip_paths]
    githubbuildtools.delete_files_without_uservisible_tag(
        pathapi.get_abs_path(".", base="repo"), "FOOXYZABC", skip_paths
    )

    git.runlive("add", "--all", raise_on_err=True)
    
    # Check if there are any changes using diff-index
    # diff-index returns True if no changes, False if there are changes
    has_no_changes = git.run("diff-index", "--quiet", "HEAD", raise_on_err=False)   
    if has_no_changes:
        pp.printmsg("No changes to commit. Skipping commit and push.")
    else:
        git.runlive("commit", "-m", args.commit_message, raise_on_err=True)
        git.runlive("push", "origin", "github/deps", raise_on_err=True)


@EdaBuildClass.flow("encryptdeps")
def encrypt_dependencies(args):
    """Encrypt the dependencies using encrypt-vhdl-vivado tool"""
    git.runlive("status", raise_on_err=True)
    git.runlive("checkout", "github/deps", raise_on_err=True)
    git.runlive("pull", raise_on_err=True)

    dependencies_folder = pathapi.get_abs_path("deps/flexrio_deps", base="repo")
    temp_folder = pathapi.get_abs_path("deps/temp", base="repo", checkexist=False)
    
    # Create temp folder if it doesn't exist
    os.makedirs(temp_folder, exist_ok=True)
    
    # Run the encryption command
    cmd.runlive("encrypt-vhdl-vivado", dependencies_folder, temp_folder, raise_on_err=True)  
    
    # Delete the old flexrio_deps folder
    if os.path.exists(dependencies_folder):
        shutil.rmtree(dependencies_folder)
        pp.printmsg(f"Deleted old dependencies folder: {dependencies_folder}")
    
    # Rename temp folder to flexrio_deps
    os.rename(temp_folder, dependencies_folder)
    pp.printmsg(f"Renamed {temp_folder} to {dependencies_folder}")

    git.runlive("add", "--all", raise_on_err=True)
    git.runlive("commit", "-m", "Encrypt dependencies", raise_on_err=True)
    git.runlive("push", "origin", "github/deps", raise_on_err=True)


@EdaBuildClass.flow("pushgithubrelease")
def push_release_branch_to_github(args):
    git.runlive("status", raise_on_err=True)
    git.runlive("checkout", "github/targets", raise_on_err=True)
    git.runlive("pull", raise_on_err=True)
    githubbuildtools.add_git_remote_if_not_exists(
        "flexrio", "https://github.com/ni/flexrio.git"
    )
    git.runlive("fetch", "flexrio", raise_on_err=True)
    git.runlive("push", "flexrio", "github/targets", raise_on_err=True)


@EdaBuildClass.flow("pushgithubdeps")
def push_deps_branch_to_github(args):
    git.runlive("status", raise_on_err=True)
    git.runlive("checkout", "github/deps", raise_on_err=True)
    git.runlive("pull", raise_on_err=True)
    githubbuildtools.add_git_remote_if_not_exists(
        "flexrio", "https://github.com/ni/flexrio-dependencies.git"
    )
    git.runlive("fetch", "flexrio", raise_on_err=True)
    git.runlive("push", "flexrio", "github/deps", raise_on_err=True)


def build():
    with EdaBuildClass() as buildobj:
        buildobj.set_default_flow("build")
        buildobj.add_argument(
            "--commit_message",
            type=str,
            default="Update release branch",
            help="Commit message for the release branch",
        )
        buildobj.add_argument(
            "--source_branch",
            type=str,
            default="main",
            help="Branch used to create the release branch",
        )        
        add_target_build_arg(buildobj)


if __name__ == "__main__":
    build()
