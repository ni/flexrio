<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target>

  <!-- Basic Device Configuration -->
% if custom_target:   
  <FPGASourceFilesDirPath>Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/FpgaFiles</FPGASourceFilesDirPath>
% else:
  <FPGASourceFilesDirPath>Targets/NI/FPGA/RIO/79XXR/PXIe-7912/FpgaFiles</FPGASourceFilesDirPath>
% endif
  <DeviceIDs>0x7996</DeviceIDs>
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
    <FPGADevice>xcku040</FPGADevice>
    <SpeedGrade>-2</SpeedGrade>
    <Package>ffva1156</Package>
    <PartNumber>xcku040-ffva1156-2-e</PartNumber>
    <ProcessPropertyList>
      <Process name="Place">
% if custom_target:   
        <XdcFilePath>Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/FpgaFiles/constraints_place.xdc</XdcFilePath>
% else:
        <XdcFilePath>Targets/NI/FPGA/RIO/79XXR/PXIe-7912/FpgaFiles/constraints_place.xdc</XdcFilePath>
% endif
      </Process>
    </ProcessPropertyList>
  </FPGACompilation>

  <!-- Optional Features -->
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDramUtilities.xml</:Include>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDio.xml</:Include>

  <!-- Clocks -->
  <ClockList>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanClocks.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDramClocks.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/HMB/resource/Dram2DPClocks.xml</:Include>
% if include_custom_io:
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/${custom_clock}</:Include>
% endif
  </ClockList>

  <!-- CLIPs -->
  <CLIPSocketTypeList>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDioMgtsSocket.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDramSocketTypePxi.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/RoutingSocket.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDioVoltageSocket.xml</:Include>
  </CLIPSocketTypeList>

% if include_custom_io:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/${custom_boardio}</:Include>
% endif
</Target>
