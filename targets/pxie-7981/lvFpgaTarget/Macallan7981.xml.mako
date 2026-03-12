<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target>

  <!-- Basic Device Configuration -->
% if custom_target:   
  <FPGASourceFilesDirPath>Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/FpgaFiles</FPGASourceFilesDirPath>
% else:
  <FPGASourceFilesDirPath>Targets/NI/FPGA/RIO/79XXR/PXIe-7981/FpgaFiles</FPGASourceFilesDirPath>
% endif
  <DeviceIDs>0x78F8</DeviceIDs>
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
        <XdcFilePath>Targets/NI/FPGA/RIO/79XXR/PXIe-7981/FpgaFiles/constraints_place.xdc</XdcFilePath>
% endif
      </Process>
    </ProcessPropertyList>
  </FPGACompilation>

  <!-- Optional Features -->
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDio.xml</:Include>

  <!-- Clocks -->
  <ClockList>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanClocks.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/HMB/resource/Dram2DPClocks.xml</:Include>
% if include_custom_io:    
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/${custom_clock}</:Include>
% endif
  </ClockList>

  <!-- CLIPs -->
  <CLIPSocketTypeList>
% if include_clip_socket:
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanIoModule.xml</:Include>
% endif
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/RoutingSocket.xml</:Include>
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

% if include_custom_io:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/${custom_boardio}</:Include>  
% endif
</Target>
