# User Visible FlexRIO Releases on GitHub


## Repo and Tool Structure

![Repo Structure](repo_structure.png)

## Dependencies

Dependencies is a complicated part of the release process.  We have many files duplicated across all the dependencies for the FlexRIO repo.  For example, ni cores are pulled in from a normal ni cores export and also they are re-packaged within the FPGA Digital Designs export.  Different FlexRIO products may choose to depend on different versions of these files.  

In our internal process, we use hwtools to pull all of the dependencies from Perforce and Nugets into one folder.  And then each product has a vsmake settings file that specifies which files from within those dependencies are used for a particular FPGA build.  The dependencies have very deep folder hierarchies and Vivado has trouble with long file paths.  To mitigate this, our internal tools copy the files used for the Vivado build into a single flat gatheredfiles folder.

Our user facing process will mirror what we do in HW tools in a simpler way.  For example, internal hwtools needs to pull dependencies from a variety of sources that NI has created over the years.  For the user facing workflow, we will bundle all of those dependencies into ONE export object and give that to the user.  This means their tools won't require all the dependency syncing complexity of NI's internal process.

The general flow is:
* VSMake produces absfiles_[topentityname].txt that lists all the files used in synthesis
* Build runs a githubbuildtools function that processes that into vivadoprojectdeps.txt and vivadoprojectsources.txt files
* The vivadoprojectdeps.txt file is used to bundle the dependnecies that are used into a flexriodeps.zip file
    * The zip file is published into the nuget during build
* Both text files are copied into the branch that ends up as GitHub source
* The user clones the GitHub repo and follows this process for installing the dependencies:
    * Downloads the flexriodeps.zip file into the dependencies folder within their cloned GitHub folder hierarchy
    * Runs extractdeps.bat to unzip the dependencies into the right folder
* The user runs createvivadoproject.bat from the target folder:
    * Generates a TCL script and runs it to create a Vivado project using all the files in vivadoprojectdeps.txt and vivadoprojectsources.txt
    * Copies all of the deps files needed by Vivado into a flat gathereddeps folder (this is necessary to avoid long file path problems)

## Release Process

1. Run the <b>hw-flexrio Global CI</b> pipeline
    * These steps are automated:
        * Aggregates the dependencies used by products in the FlexRIO GitHub release into a zip file that is put into the export nuget
        * Unzips that zip file so that later pipeline steps can test the user workflow
        * Runs the user tools function to create a new Vivado project
        * Runs a synthesis script to ensure that the Vivado project has all of the necessary dependency files
        * Creates a filtered githubreleasestaging  branch that only contains files with the github visible tag
    * Optionally review the githubreleasestaging branch in AzDO
3. Push to GitHub
    * This is not supported in the AzDO pipeline yet because it requires a user's GitHub credentials
        * Go onto GitHub and login with your SSO crecentials before proceeding
    * Here are the steps to manually run the push script:
        > git clone https://ni@dev.azure.com/ni/DevCentral/_git/hw-flexrio
        >
        > cd hw-flexrio/targets
        >
        > git checkout main (probably not needed, should be on main branch already)
        >
        > hwsetup
        >
        > python build.py --flow=pushgithubrelease
4. On GitHub, complete the pull request
    * Review and sanity check that things look OK
5. On GitHub, create a release that contains the bundled dependencies zip file
    * Download the nuget from the CI pipeline run in Step #1
    * Change the extension to a .zip
    * Extract the deliverables\githubflexrioreleasedeps\flexriodeps.zip file
    * Create a Release on GitHub and attach the zip file 

## Supporting GitHub Release on a New Target
* Set the "supportsgithubrelease" parameter to True in targetconfig.py
* Add the github visible to the header comments of each HDL file you wish to show up on GitHub
    * The tag is "github visible = true" without any spaces
    * We can't have the exact tag in this doc file because it should not be on GitHub
* Add the license header text (replace any existing copyright header that was in the file)
> Copyright (c) 2025 National Instruments Corporation
> 
> SPDX-License-Identifier: MIT
* Create the vivadoprojectsettings.ini file in the pxie-7xxx directory
* Add setenv.bat and setenv.sh to the pxie-7xxx directory
* Add a TCL folder to the pxie-7xxx directory
    * Required TCL files:
        * CreateNewProjectTemplate.tcl
        * PostGenerateBitfile.tcl
        * PreGenerateBitfile.tcl
        * PreSynthesize.tcl
        * SynthProject2.tcl
        * UpdateProjectFilesTemplate.tcl
    * The CreateNewProjectTemplate is derived from settings used in the target project from a LV FPGA Vivado Project Export
* Determine what files should be user visible vs encrypted
    * Follow directions <<<< HERE >>>>
* For all files with "githubvisible=true", ensure that the comments are professional and appropriate for users
    * You can automate this by asking copilot to "Ensure that all comments in this file are professional"
    * I've found that this catches typos and other unprofessional-sounding content
* Add a .gitignore file to ignore objects and VivadoProject folders
* Convert TheWindow.vhd to TheWindow.vhd.mako (following what the PXIe-7903 does)
* Convert the target's resource XML to mako (following what is done in Sasquatch7903.xml.mako)
* Add GitHub.xdc into the cfmakesettings.xml file to show users where to insert custom constraints



## FAQ
### Why don't we leverage hwtools for the user-facing side of the workflow?
### Why are the user FlexRIO dependencies delivered in a zip file?



