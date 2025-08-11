
## User Workflow
### Prerequisites
1.	Install latest version Git  – https://git-scm.com/downloads
2.	Install Python (version XYZ officially tested) –  https://www.python.org/downloads/
3.	Install LabVIEW FPGA Compilation tool for Vivado 2021.1 – https://www.ni.com/en/support/downloads/software-products/download.package-manager.html

### Phase 1 – Clone the FlexRIO GitHub repo
1.	Go to the FlexRIO repo on GitHub – https://github.com/ni/flexrio-test
2.	Copy the repo HTTPS URL to clipboard
3.	Open a command prompt in C:\dev\github
4.	Clone the FlexRIO GitHub repo:
    > git clone <b>[paste FlexRIO GitHub repo URL]</b>
    >
    >   EXAMPLE:
    >
    > git clone https://github.com/ni/flexrio-test.git

### Phase 2 – Install the FlexRIO dependencies
1.	Download the dependencies zip file from the latest FlexRIO release
2.	Put the zip file into this folder:
    > C:\dev\github\flexrio-test\dependencies
3.	Run the batch file to extract the dependencies:
    > extractdependencies.bat

### Phase 3 – Create and Build the Vivado Project
1.	Open a command prompt at the PXIe-7903 folder:
    > C:\dev\github\flexrio-test\targets\pxie-7903
    * Note: the PXIe-7903 folder is the working directory where you will run all commands
2.	Run the setenv script to setup the tools into your command path
    > setenv
    * Note: run setenv each time you create a new command prompt
3.	Create the Vivado Project:
    > createvivadoproject
4.	Launch Vivado:
    > launchvivado
5.	In the Vivado IDE, click <b>Synthesize</b>


