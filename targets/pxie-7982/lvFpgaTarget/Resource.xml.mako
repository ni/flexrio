<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
% if custom_target:   
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
% else:
<Target name="PXIe-7982" version="1.0" arbitrationDefault="NeverArbitrate">
% endif
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO FPGA Modules</DeviceCategory>
%if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
%else:
  <FPGAItemSubType>{49d4062f-5e30-470d-a9e7-f60fb861a973}</FPGAItemSubType>
%endif
%if custom_target:
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7982.${lv_target_name}</TargetClass>
% else:
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7982.PXIe-7982</TargetClass>
% endif
%if custom_target:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/Macallan7982.xml</:Include>
% else:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/PXIe-7982/Macallan7982.xml</:Include>
% endif  
</Target>
