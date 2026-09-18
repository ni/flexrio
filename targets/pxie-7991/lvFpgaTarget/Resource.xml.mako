<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO FPGA Modules</DeviceCategory>
% if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
% else:
  <FPGAItemSubType>{4957eb04-4b30-4887-8361-80a90428f42d}</FPGAItemSubType>
% endif
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.799X.7991.${lv_target_name}</TargetClass>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/BTrace7991.xml</:Include>
</Target>
