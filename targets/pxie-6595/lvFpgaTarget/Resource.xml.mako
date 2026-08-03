<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO High-Speed Serial Modules</DeviceCategory>
% if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
% else:
  <FPGAItemSubType>{2dc90b1b-81fd-4aeb-8b26-faff2f9db743}</FPGAItemSubType>
% endif
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.6595.${lv_target_name}_KUP015</TargetClass>
  <IOModuleID>0x10937A7C</IOModuleID>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/Coruba6595.xml</:Include>
</Target>
