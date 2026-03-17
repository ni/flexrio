<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
% if custom_target:   
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
% else:
<Target name="PXIe-7911" version="1.0" arbitrationDefault="NeverArbitrate">
% endif
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO Coprocessor Modules</DeviceCategory>
%if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
%else:
  <FPGAItemSubType>{89af8884-ec45-4f8f-bb79-139f4fdb041e}</FPGAItemSubType>
%endif
%if custom_target:
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7911.${lv_target_name}</TargetClass>
% else:
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7911.PXIe-7911</TargetClass>
% endif
%if custom_target:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/Macallan7911.xml</:Include>
% else:
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/PXIe-7911/Macallan7911.xml</:Include>
% endif  
</Target>
