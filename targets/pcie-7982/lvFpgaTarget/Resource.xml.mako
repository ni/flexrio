<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO FPGA Modules</DeviceCategory>
% if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
% else:
  <FPGAItemSubType>{88cb2a21-2940-4c67-8c90-9d82a5c48462}</FPGAItemSubType>
% endif
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7982.${lv_target_name}</TargetClass>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/Garrison7982.xml</:Include>
</Target>
