<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO FPGA Modules</DeviceCategory>
%if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
%else:
  <FPGAItemSubType>{23e2bd74-1db5-47dc-91f2-7d5222b04b9e}</FPGAItemSubType>
%endif
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7981.${lv_target_name}</TargetClass>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/Macallan7981.xml</:Include>
</Target>
