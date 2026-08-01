<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO FPGA Modules</DeviceCategory>
% if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
% else:
  <FPGAItemSubType>{97f39b4a-bb4b-45da-9355-fc07f246a418}</FPGAItemSubType>
% endif
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.799X.7990.${lv_target_name}</TargetClass>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/BTrace7990.xml</:Include>
</Target>
