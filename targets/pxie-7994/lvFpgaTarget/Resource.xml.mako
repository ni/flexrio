<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
% if custom_target:   
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
% else:
<Target name="PXIe-7994" version="1.0" arbitrationDefault="NeverArbitrate">
% endif
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO FPGA Modules</DeviceCategory>
%if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
%else:
  <FPGAItemSubType>{a9f29861-0963-4ace-ac8f-73a6031310a2}</FPGAItemSubType>
% endif
%if custom_target:
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7994.${lv_target_name}</TargetClass>
% else:
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.799X.7994.PXIe-7994</TargetClass>
% endif
%if custom_target:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/BTracePlus7994.xml</:Include>
% else:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/PXIe-7994/BTracePlus7994.xml</:Include>
% endif
</Target>
