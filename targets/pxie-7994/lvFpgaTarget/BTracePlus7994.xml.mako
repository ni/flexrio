<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target>

  <!-- Basic Device Configuration -->
% if custom_target:   
  <FPGASourceFilesDirPath>Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/FpgaFiles</FPGASourceFilesDirPath>
% else:
  <FPGASourceFilesDirPath>Targets/NI/FPGA/RIO/79XXR/PXIe-7994/FpgaFiles</FPGASourceFilesDirPath>
% endif
  <DeviceIDs>0x7AAA</DeviceIDs>
  <FPGASynthesisSourceFileList>
    <Path>Targets/NI/FPGA/RIO/79XXR/HMB/VHDL</Path>
  </FPGASynthesisSourceFileList>
  <RequiredNICoresFiles>SingleClkFifo.vhd</RequiredNICoresFiles>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/G3x8Common.xml</:Include>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanCommonPxi.xml</:Include>
  <MaxLabVIEWFPGARegisterOffset>0x2FFFC</MaxLabVIEWFPGARegisterOffset>
  <MinLabVIEWFPGARegisterOffset>${min_lv_reg_offset}</MinLabVIEWFPGARegisterOffset> 

  <!-- Compilation -->
  <FPGACompilation>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/BTracePlusCompileOptions.xml</:Include>
    <NetPathToTheWindow>${net_path_to_the_window}</NetPathToTheWindow>
% if include_current_instance_path_for_window:
    <CurrentInstancePathForLvFpgaXdcConstraints>${current_instance_path_for_window}</CurrentInstancePathForLvFpgaXdcConstraints>
% endif
    <FPGADevice>xcku060</FPGADevice>
    <SpeedGrade>-2</SpeedGrade>
    <Package>ffva1156</Package>
    <PartNumber>xcku060-ffva1156-2-e</PartNumber>
    <ProcessPropertyList>
      <Process name="Place">
% if custom_target:   
        <XdcFilePath>Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/FpgaFiles/constraints_place.xdc</XdcFilePath>
% else:
        <XdcFilePath>Targets/NI/FPGA/RIO/79XXR/PXIe-7994/FpgaFiles/constraints_place.xdc</XdcFilePath>
% endif
      </Process>
    </ProcessPropertyList>
  </FPGACompilation>

  <!-- Optional Features -->
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDramUtilities.xml</:Include>

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
% if include_target_io:
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/BTracePlusIoModule.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/BTracePlusQsfp0MgtSocket.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/BTracePlusQsfp1MgtSocket.xml</:Include>    
% endif
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDramSocketTypePxi.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/RoutingSocket.xml</:Include>
  </CLIPSocketTypeList>

% if include_custom_io:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/${custom_boardio}</:Include>  
% endif

  <SkipTopCompilationFileCheck/>
    <FlexRIOPortMappingList>
        <source name="BTracePlusTopTemplate.vhd" >
          <constraintsSource>constraints.xdc_template</constraintsSource>
          <constraintsTarget>constraints.xdc</constraintsTarget>
          <target>BTracePlusTop.vhd</target>

            <port names="MgtTxPortOneLane[index=0..3]_p"> <!-- top level port name -->
                <change_type>RemoveIfUnused</change_type>
                <component_port>Qsfp1MgtTx_p(#{index})</component_port>
                <clip_attribute>BasePort1Tx#{index}</clip_attribute>
            </port>
            <port names="MgtTxPortOneLane[index=0..3]_n"> <!-- top level port name -->
                <change_type>RemoveIfUnused</change_type>
                <component_port>Qsfp1MgtTx_n(#{index})</component_port>
                <clip_attribute>BasePort1Tx#{index}</clip_attribute>
            </port>
            <port names="MgtTxPortZeroLane[index=0..3]_p"> <!-- top level port name -->
                <change_type>RemoveIfUnused</change_type>
                <component_port>Qsfp0MgtTx_p(#{index})</component_port>
                <clip_attribute>BasePort0Tx#{index}</clip_attribute>
            </port>
            <port names="MgtTxPortZeroLane[index=0..3]_n"> <!-- top level port name -->
                <change_type>RemoveIfUnused</change_type>
                <component_port>Qsfp0MgtTx_n(#{index})</component_port>
                <clip_attribute>BasePort0Tx#{index}</clip_attribute>
            </port>
            
            <port names="MgtRxPortOneLane[index=0..3]_p"> <!-- top level port name -->
                <change_type>RemoveIfUnused</change_type>
                <component_port>Qsfp1MgtRx_p(#{index})</component_port>
                <clip_attribute>BasePort1Rx#{index}</clip_attribute>
            </port>
            <port names="MgtRxPortOneLane[index=0..3]_n"> <!-- top level port name -->
                <change_type>RemoveIfUnused</change_type>
                <component_port>Qsfp1MgtRx_n(#{index})</component_port>
                <clip_attribute>BasePort1Rx#{index}</clip_attribute>
            </port>
            <port names="MgtRxPortZeroLane[index=0..3]_p"> <!-- top level port name -->
                <change_type>RemoveIfUnused</change_type>
                <component_port>Qsfp0MgtRx_p(#{index})</component_port>
                <clip_attribute>BasePort0Rx#{index}</clip_attribute>
            </port>
            <port names="MgtRxPortZeroLane[index=0..3]_n"> <!-- top level port name -->
                <change_type>RemoveIfUnused</change_type>
                <component_port>Qsfp0MgtRx_n(#{index})</component_port>
                <clip_attribute>BasePort0Rx#{index}</clip_attribute>
            </port>

        </source>
    </FlexRIOPortMappingList>

</Target>
