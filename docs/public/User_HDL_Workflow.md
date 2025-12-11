
## User Workflow
### Prerequisites
1.	Install latest version Git  – https://git-scm.com/downloads
2.	Install Python (version 3.11.8 officially tested) –  https://www.python.org/downloads/
3.	Install LabVIEW FPGA Compilation tool for Vivado 2021.1 – https://www.ni.com/en/support/downloads/software-products/download.package-manager.html

### Phase 1 – Clone the FlexRIO GitHub repo
1.	Create a github development folder on your computer:
    > c:\dev\github
2. Go to the FlexRIO repo on GitHub: https://github.com/ni/flexrio
3.	Copy the repo HTTPS URL to clipboard
4.	Open a command prompt in C:\dev\github
5.	Clone the FlexRIO GitHub repo:
    > git clone <b>[paste FlexRIO GitHub repo URL]</b>
    >
    > git clone https://github.com/ni/flexrio.git

### Phase 2 – Install the LabVIEW FPGA HDL Tools
1. Open a command prompt in the PXIe-7903 target folder:
    > C:\dev\github\flexrio\targets\pxie-7903
2. Run the install command:
    > pip install -r requirements.txt   

### Phase 3 – Install the FlexRIO dependencies
1. Go to the releases page of the FlexRIO repo on GitHub: https://github.com/ni/flexrio/releases
2. Download the dependencies.zip artifact from the latest release
3. Place the dependencies.zip file in the dependencies folder on your computer:
    > C:\dev\github\flexrio\dependencies
4. At the command prompt for the PXIe-7903 folder:
    > C:\dev\github\flexrio-test\targets\pxie-7903 
5. Run the extract-deps command:
    > nihdl extract-deps

### Phase 4 – Create and Synthesize the Vivado Project
1.	At the command prompt for the PXIe-7903 folder:
    > C:\dev\github\flexrio-test\targets\pxie-7903
2. Run the create-project command:
    > nihdl create-project
3. Run the launch-vivado command:
    > nihdl launch-vivado
4. In Vivado, click the **Synthesize** button in the left-hand pane.

This will ensure that the repo and tools are properly setup on your computer