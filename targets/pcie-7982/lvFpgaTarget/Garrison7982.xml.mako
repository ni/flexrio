<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target>

  <!-- Basic Device Configuration -->
  <FPGASourceFilesDirPath>Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/FpgaFiles</FPGASourceFilesDirPath>
  <DeviceIDs>0x79D4</DeviceIDs>
  <RequiredNICoresFiles>SingleClkFifo.vhd, HandshakeBool.vhd</RequiredNICoresFiles>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanCommon.xml</:Include>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/GarrisonCommonPci.xml</:Include>
  <MaxLabVIEWFPGARegisterOffset>0x2FFFC</MaxLabVIEWFPGARegisterOffset>
  <MinLabVIEWFPGARegisterOffset>${min_lv_reg_offset}</MinLabVIEWFPGARegisterOffset>

  <!-- Hardware Interface Based on K7, modified to match Inchworm UserGuide  -->
  <HardwareInterface>
    <Type>DmaPort</Type>
    <ClockName>BusClk</ClockName>
    <RegisterAccessStrategies>BusHold</RegisterAccessStrategies>
    <DmaAndIrqClockName>DmaClk</DmaAndIrqClockName>
    <NumberOfMasterPorts>64</NumberOfMasterPorts>
    <BusBaggageWidth>6</BusBaggageWidth>
    <InputMaxTransfer>1024</InputMaxTransfer>
    <OutputMaxTransfer>1024</OutputMaxTransfer>
    <DmaAddressWidth>64</DmaAddressWidth>
    <DmaDataWidth>256</DmaDataWidth>
    <ReservedChannelIDs>${num_reserved_dma_stream_channel_ids}</ReservedChannelIDs>
    <HMBChannelsReserved>0</HMBChannelsReserved>
    <NumberOfFixedInputPorts>3</NumberOfFixedInputPorts>
    <NumberOfFixedOutputPorts>2</NumberOfFixedOutputPorts>
  </HardwareInterface>

  <!-- Compilation -->
  <FPGACompilation>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/GarrisonCompileOptions.xml</:Include>
    <NetPathToTheWindow>${net_path_to_the_window}</NetPathToTheWindow>
% if include_current_instance_path_for_window:
    <CurrentInstancePathForLvFpgaXdcConstraints>${current_instance_path_for_window}</CurrentInstancePathForLvFpgaXdcConstraints>
% endif
    <FPGADevice>xcku040</FPGADevice>
    <SpeedGrade>-2</SpeedGrade>
    <Package>ffva1156</Package>
    <PartNumber>xcku040-ffva1156-2-e</PartNumber>
    <ProcessPropertyList>
      <Process name="Place">
        <XdcFilePath>Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/FpgaFiles/constraints_place.xdc</XdcFilePath>
      </Process>
    </ProcessPropertyList>
  </FPGACompilation>

  <!-- Optional Features -->
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDramUtilities.xml</:Include>
% if include_board_io:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDio.xml</:Include>
% endif

  <!-- Clocks -->
  <ClockList>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanClocks.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDramClocks.xml</:Include>
% if include_custom_io:
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/${custom_clock}</:Include>
% endif
  </ClockList>



  <!-- CLIPs -->
  <CLIPSocketTypeList>
% if include_board_io:
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanIoModule.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDioMgtsSocket.xml</:Include>
% endif
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDramSocketType.xml</:Include>
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/RoutingSocket.xml</:Include>
% if include_board_io:
    <:Include what="children">Targets/NI/FPGA/RIO/79XXR/Common/Resource/MacallanDioVoltageSocket.xml</:Include>
% endif
  </CLIPSocketTypeList>

% if include_custom_io:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/${custom_boardio}</:Include>
% endif
</Target>
