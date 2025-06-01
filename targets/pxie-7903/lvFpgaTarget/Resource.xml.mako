<?xml version="1.0" encoding="UTF-8"?>
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO Coprocessor Modules</DeviceCategory>
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7903.PXIe-7903_VU11P</TargetClass>
  <IOModuleID>0x10937AEC</IOModuleID>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/Sasquatch7903.xml</:Include>
</Target>
<!-- githubvisible=true -->
