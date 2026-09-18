<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO FPGA Modules</DeviceCategory>
% if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
% else:
  <FPGAItemSubType>{0a22e4f4-c02c-449b-b560-7f0a065edc6c}</FPGAItemSubType>
% endif
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.799X.7993.${lv_target_name}</TargetClass>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/Blackadder7993.xml</:Include>
</Target>
