#!/usr/bin/env python
# build.py

"""This build.py can be used to synthesize the clip fixed logic or compile it for simulation:
    For synthesis run:  python build.py (--noinc)
    For simulation run: python build.py --flow=compile (--noinc)
"""

import os
import shutil
from hwtoolsapi import pathapi, EdaBuildClass, WorkingFolder, cmd, python, multitask
from hwtools import userhdlbuildtools

import sys

sys.path.insert(0, pathapi.get_abs_path(base="root", path=f"source/fpga/common/"))
sys.path.insert(0, pathapi.get_abs_path(base="root", path=f"tools/"))

from targetconfig import targetconfigs
from commonbuildfuncs import _cfmake, _copy_files

sys.path.insert(0, pathapi.get_abs_path(base="root", path=f"source/fpga/common/"))
from targetutils import add_target_build_arg, get_applicable_targetconfigs


def update_revision(args):
    """Updates the revision to generate the package file"""

    if args.noinc:
        cmd.runlive("updaterevision", "--noinc", raise_on_err=True)
    else:
        cmd.runlive("updaterevision", raise_on_err=True)


@EdaBuildClass.flow(["build"])
def cfmake(args):
    """Run cfmake on the targets"""
    for target in get_applicable_targetconfigs(args):
        print(f"Running cfmake on {target}")
        tc = targetconfigs[target]

        target_xml = pathapi.get_abs_path(
            base="root", path=f"source/fpga/{target}/xdc/cfmakesettings.xml"
        )
        target_xdc = pathapi.get_abs_path(
            base="objects",
            path=f"{target}/cfmake/{tc['constraintsfile']}",
            checkexist=False,
        )

        _cfmake(target_xml, target_xdc, tc["toplevelname"])

        """Run cfmake on placement constraints"""
        target_xml = pathapi.get_abs_path(
            base="root", path=f"source/fpga/{target}/xdc/cfmakesettings_place.xml"
        )
        target_xdc = pathapi.get_abs_path(
            base="objects",
            path=f"{target}/cfmake/constraints_place.xdc",
            checkexist=False,
        )

        _cfmake(target_xml, target_xdc, "constraints_place", delete_and_recreate=False)


@EdaBuildClass.flow("compile")
def vsmake_compile(args):
    """Compile the target for nisim"""
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"source/fpga/{target}", base="root"):
            # Delete old modelsim data just in case
            shutil.rmtree("./modelsim", ignore_errors=True)

            # delete old vsmake outputs
            cmd.runlive("vsmake", "--clean", raise_on_err=True)

            # Create a new modelsim project, if needed, by running vsmake
            # on a low-level package that shouldn't have any dependencies
            cmd.runlive("vsmake", "PkgNiUtilities", raise_on_err=True)

            # Normal vsmake run.
            cmd.runlive("vsmake", raise_on_err=True)


@EdaBuildClass.flow("build")
def vsmake_build(args):
    """Compile the clip fixed logic for nisim"""
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"source/fpga/{target}", base="root"):
            # Delete old modelsim data just in case
            shutil.rmtree("./modelsim", ignore_errors=True)

            # delete old vsmake outputs
            cmd.runlive("vsmake", "--clean", raise_on_err=True)

            # Create a new modelsim project, if needed, by running vsmake
            # on a low-level package that shouldn't have any dependencies
            cmd.runlive("vsmake", "PkgNiUtilities", raise_on_err=True)

            # Normal vsmake run.
            cmd.runlive("vsmake", "--synth", raise_on_err=True)


@EdaBuildClass.flow("build")
def gather_files(args):
    """Gathers all files used by synthesis to a single directory"""
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
                    print(shutil.copyfile(s, d) + " <--- " + s)

@EdaBuildClass.flow("build")
def bundle_user_dependencies(args):
    print("CWD: ", os.getcwd())
    python.runlive("bundlereleasedeps.py", raise_on_err=True)
   
@EdaBuildClass.flow("build")
def create_user_vivado_project(args):
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"source/fpga/{target}", base="root"):
            config_file = "vivadoprojectsettings.ini"
            vivado_tools_path = os.path.abspath(
                os.path.join(os.getcwd(), "../../../../../lvfpgahdltools/vivadoprojecttools/vivadoprojecttools.py")
            )
            if os.path.exists(config_file):
                # Run the Vivado project tools script
                python.runlive(vivado_tools_path, "update_project_files", "--new", raise_on_err=True)
            else:
                print(f"{config_file} does not exist, skipping Vivado project creation.")


@EdaBuildClass.flow("build")
def synth_user_fpga(args):
    for target in get_applicable_targetconfigs(args):
        with WorkingFolder(folder=f"source/fpga/{target}", base="root"):
            config_file = "vivadoprojectsettings.ini"
            # Check if the path exists, ignoring case
            if any(file.lower() == config_file.lower() for file in os.listdir(os.getcwd())):
                #python.runlive("vivadoprojecttools.py", "update_project_files", "--new", raise_on_err=True)
                xilinx_vivado = os.getenv('XILINX')
                if xilinx_vivado:
                    if os.name == 'nt':  # Windows
                        vivado_cmd = os.path.normpath(os.path.join(xilinx_vivado, "bin", "vivado.bat")) + " -mode tcl -source ..\\TCL\\SynthProject2.tcl"
                    else:  # Linux or other OS
                        vivado_cmd = os.path.normpath(os.path.join(xilinx_vivado, "bin", "vivado")) + " -mode tcl -source ../TCL/SynthProject2.tcl"                 
                    # Ensure the VivadoProject folder exists
                    vivado_project_path = os.path.join(os.getcwd(), "VivadoProject")
                    if not os.path.exists(vivado_project_path):
                        # How do we throw an assertion in the build pipeline? *********
                        print("ERROR NO VIVADO PROJECT FOLDER") 
                    else:
                        os.chdir(vivado_project_path)
                        userhdlbuildtools.run_command(vivado_cmd)
                else:
                    print("Environment variable 'XILINX' is not set.")
            else:
                print(f"{config_file} does not exist, skipping synthesis.")

@EdaBuildClass.flow("buildgithubrelease")
def build_release_branch(args):
    userhdlbuildtools.run_command("git status")
    userhdlbuildtools.run_command("git fetch origin users/ssantolu/release")
    userhdlbuildtools.run_command("git checkout users/ssantolu/release") # go to release branch 
    userhdlbuildtools.run_command("git restore --source origin/users/ssantolu/flexrionew :/") # restore files from main branch 
    folder_path = os.getcwd()
    # Set folder_path to two directory levels above the current directory
    # Buildall is run in hw-flexrio/baseboards/fpgas and we want to delete evertyhing starting from the hw-flexrio directory
    folder_path = os.path.abspath(os.path.join(folder_path, "..", ".."))
    print(folder_path) 
    userhdlbuildtools.delete_files_without_uservisible_tag(folder_path, "githubvisible=true")
    userhdlbuildtools.run_command("git add --all")
    userhdlbuildtools.run_command('git commit -m "release commit"')
    userhdlbuildtools.run_command("git push origin users/ssantolu/release")
       
@EdaBuildClass.flow("pushgithubrelease")
def publish_release_branch_to_github(args):
    userhdlbuildtools.run_command("git status")
    userhdlbuildtools.run_command("git checkout users/ssantolu/release") # go to release branch 
    userhdlbuildtools.run_command("git remote add flexrio-test https://github.com/ni/flexrio-test.git") # add github remote repo
    userhdlbuildtools.run_command("git fetch flexrio-test") # fetch the remote repo
    userhdlbuildtools.run_command("git push flexrio-test users/ssantolu/release")  # push the release branch to the remote repo


def build():
    with EdaBuildClass() as buildobj:
        buildobj.set_default_flow("build")
        add_target_build_arg(buildobj)


if __name__ == "__main__":
    build()