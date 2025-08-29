
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
    > git clone https://github.com/ni/flexrio-test.git

### Phase 2 – Install the LabVIEW FPGA HDL Tools Module
1. Open a command prompt to the targets folder:
    > C:\dev\github\flexrio-test\targets
2. Run pip to install the HDL tools module and any dependencies:
    > pip install -r requirements.txt

### Phase 3 - Install the FlexRIO dependencies
1.	Download the dependencies zip file from the latest FlexRIO release:
2.	Put the zip file into this folder:
    > C:\dev\github\flexrio-test\dependencies
3.  Go to the targets folder in your command prompt:
    > C:\dev\github\flexrio-test\targets
4. Run the nihdl command to extract the dependencies:
    > nihdl extract-deps

#### NOTE - Installing the HDL tools and dependencies are the only commands you run from the "targets" folder.  Everything else is done from the "targets/pxie-6903" folder

### Phase 4 – Create and Build the Vivado Project
You may skip steps 1-3 if continuing from the previous phase
1.	Open a command prompt at the PXIe-7903 folder:
    > C:\dev\github\flexrio-test\targets\pxie-7903
2.  Run the nihdl help command to see what functions are available:
    > nihdl --help
3.	Create the Vivado Project:
    > nihdl create-project
4.	Launch Vivado:
    > nihdl launch-vivado
5.	In the Vivado IDE, click <b>Run Synthesis</b>, then <b>Run Implementation</b>, then <b>Generate Bitstream</b>


