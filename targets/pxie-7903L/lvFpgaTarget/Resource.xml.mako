<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO Coprocessor Modules</DeviceCategory>
%if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
%else:
  <FPGAItemSubType>{5c7d9a01-6adb-4953-8b31-f1d1030b8497}</FPGAItemSubType>
%endif
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7903.${lv_target_name}_VU11P</TargetClass>
  <IOModuleID>0x10937AEC</IOModuleID>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/Sasquatch7903.xml</:Include>
</Target>
