<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target>

  <!-- Basic Device Configuration -->
% if custom_target:   
  <FPGASourceFilesDirPath>Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/FpgaFiles</FPGASourceFilesDirPath>
% else:
  <FPGASourceFilesDirPath>Targets/NI/FPGA/RIO/79XXR/PXIe-7911/FpgaFiles</FPGASourceFilesDirPath>
% endif
  <DeviceIDs>0x7995</DeviceIDs>
  <FPGASynthesisSourceFileList>
    <Path>Targets/NI/FPGA/RIO/79XXR/HMB/VHDL</Path>
  </FPGASynthesisSourceFileList>
  <RequiredNICoresFiles>SingleClkFifo.vhd</RequiredNICoresFiles>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanCommon.xml</:Include>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanCommonPxi.xml</:Include>
  <MaxLabVIEWFPGARegisterOffset>0x2FFFC</MaxLabVIEWFPGARegisterOffset>
  <MinLabVIEWFPGARegisterOffset>${min_lv_reg_offset}</MinLabVIEWFPGARegisterOffset> 

  <!-- Compilation -->
  <FPGACompilation>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanCompileOptions.xml</:Include>
    <NetPathToTheWindow>${net_path_to_the_window}</NetPathToTheWindow>
% if include_current_instance_path_for_window:
    <CurrentInstancePathForLvFpgaXdcConstraints>${current_instance_path_for_window}</CurrentInstancePathForLvFpgaXdcConstraints>
% endif
    <FPGADevice>xcku035</FPGADevice>
    <SpeedGrade>-2</SpeedGrade>
    <Package>ffva1156</Package>
    <PartNumber>xcku035-ffva1156-2-e</PartNumber>
    <ProcessPropertyList>
      <Process name="Place">
% if custom_target:   
        <XdcFilePath>Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/FpgaFiles/constraints_place.xdc</XdcFilePath>
% else:
        <XdcFilePath>Targets/NI/FPGA/RIO/79XXR/PXIe-7911/FpgaFiles/constraints_place.xdc</XdcFilePath>
% endif
      </Process>
    </ProcessPropertyList>
  </FPGACompilation>

  <!-- Clocks -->
  <ClockList>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanClocks.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/HMB/resource/Dram2DPClocks.xml</:Include>
  </ClockList>

  <!-- CLIPs -->
  <CLIPSocketTypeList>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/RoutingSocket.xml</:Include>
    <!-- Not sure why the DIO voltage socket is here because the 7911 does not have DIO -->
    <!-- Leaving this in here because we don't want to mess with it and accidentally break something -->
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDioVoltageSocket.xml</:Include>
    <CLIPSocketType name="DRAM">
      <DramAddressBitAlignment>3</DramAddressBitAlignment>
      <CustomWizardUI>
        <VIPath>Targets/NI/FPGA/RIO/79XXR/Common/WizardPages/DRAM/79XXR_DRAMWizardPage1.vi</VIPath>
      </CustomWizardUI>
      <CLIPSocketList>
        <:Include what="children">Targets/NI/FPGA/RIO/79XXR/HMB/resource/Dram2DPSocket-1024bit.xml</:Include>
      </CLIPSocketList>
    </CLIPSocketType>
  </CLIPSocketTypeList>
</Target>
