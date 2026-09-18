<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO FPGA Modules</DeviceCategory>
% if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
% else:
  <FPGAItemSubType>{8efccf80-204e-4944-bd33-08486540f671}</FPGAItemSubType>
% endif
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.799X.7992.${lv_target_name}</TargetClass>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/BTrace7992.xml</:Include>
</Target>
