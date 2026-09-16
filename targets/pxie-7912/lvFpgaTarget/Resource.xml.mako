<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
% if custom_target:   
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
% else:
<Target name="PXIe-7912" version="1.0" arbitrationDefault="NeverArbitrate">
% endif
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO Coprocessor Modules</DeviceCategory>
%if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
%else:
  <FPGAItemSubType>{c612a5c3-0103-4e7a-81c2-0d1da895dcc8}</FPGAItemSubType>
%endif
%if custom_target:
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7912.${lv_target_name}</TargetClass>
% else:
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7912.PXIe-7912</TargetClass>
% endif
%if custom_target:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/Macallan7912.xml</:Include>
% else:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/PXIe-7912/Macallan7912.xml</:Include>
% endif  
</Target>
