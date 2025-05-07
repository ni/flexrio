# User Visible FlexRIO Releases on GitHub

## Dependencies

Dependencies is a complicated part of the release process.  We have many files duplicated across all the dependencies for the FlexRIO repo.  For example, ni cores are pulled in from a normal ni cores export and also they are re-packaged within the FPGA Digital Designs export.  Different FlexRIO products may choose to depend on different versions of these files.  

In our internal process, we use hwtools to pull all of the dependencies from Perforce and Nugets into one folder.  And then each product has a vsmake settings file that specifies which files from within those dependencies are used for a particular FPGA build.  The dependencies have very deep folder hierarchies and Vivado has trouble with long file paths.  To mitigate this, our internal tools copy the files used for the Vivado build into a single flat gatheredfiles folder.

Our user facing process will mirror what we do in HW tools in a simpler way.  For example, internal hwtools needs to pull dependencies from a variety of sources that NI has created over the years.  For the user facing workflow, we will bundle all of those dependencies into ONE export object and give that to the user.  This means their tools won't require all the dependency syncing complexity of NI's internal process.

### <u>Build Flow for Generating User Dependencies</u>
![FlexRIO Repo Deps](flexrio_deps.png)

### <u>User Flow for Getting Dependencies into Vivado Projects</u>
![FlexRIO Module Specific Deps](flexrio_model_deps.png)

## Repo and Tool Structure
![Repo and Tool Structure](repo_tools.png)

## Release Process

1. Run the <b>hw-flexrio-baseboards-ci</b> pipeline
    * These steps are automated:
        * Runs bundlereleasedeps.py to aggregate the dependencies used by products in the FlexRIO GitHub release into a zip file
        * Unzips that zip file so that later pipeline steps can test the userworkflow
        * Runs the update_project_files user tools function to create a new Vivado project
        * Runs a synthesis script to ensure that the Vivado project has all of the necessary dependency files
2. Run the <b>hw-flexrio-baseboards-buildgithubrelease</b> pipeline
    * These steps are automated:
        * Creates a filtered release branch that only contains files with the "githubvisible=true" tag
    * The pipeline has a <b>commit_message</b> variable which shows up on all of the files that are pushed to GitHub.  As you are developing and pushing to main in AzDO, those commit messages will not show on GitHub.  Make sure you have a good commit message that describes all of the changes that are being pushed into the release branch.  It is ideal for you to have more incremental AzDO release branch pushes rather than one mega-push that contains lots of changes.
    * Optionally review the release branch in AzDO
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
* Add "githubvisible=true" to the header comments of each HDL file you wish to show up on GitHub
* Add the license header text (replace any existing copyright header that was in the file)
> MIT License<br />
> 
> Copyright (c) 2025 National Instruments Corporation<br />
> 
> Permission is hereby granted, free of charge, to any person obtaining a copy of this<br />
> software and associated documentation files (the "Software"), to deal in the Software<br />
> without restriction, including without limitation the rights to use, copy, modify, merge,<br />
> publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons<br />
> to whom the Software is furnished to do so, subject to the following conditions:<br />
> 
> The above copyright notice and this permission notice shall be included in all copies or<br />
> substantial portions of the Software.<br />
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,<br />
> INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR<br />
> PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE<br />
> FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR<br />
> OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER<br />
> DEALINGS IN THE SOFTWARE.<br />
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
* Add a .gitignore file to ignore objects and VivadoProject folders
* Convert TheWindow.vhd to TheWindow.vhd.mako (following what the PXIe-7903 does)
* Convert the target's resource XML to mako (following what is done in Sasquatch7903.xml.mako)



## FAQ
### Why don't we leverage hwtools for the user-facing side of the workflow?
### Why are the user FlexRIO dependencies delivered in a zip file?



