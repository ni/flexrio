<?xml version="1.0" encoding="UTF-8"?>
<!-- githubvisible=true -->
<Target name="${lv_target_name}" version="1.0" arbitrationDefault="NeverArbitrate">
  <Protocols>NI-FlexRIO</Protocols>
  <DeviceCategory>FlexRIO Coprocessor Modules</DeviceCategory>
%if custom_target:
  <FPGAItemSubType>{${lv_target_guid}}</FPGAItemSubType>
%else:
  <FPGAItemSubType>{9d0f247d-14f5-436d-9d3f-f5c644366947}</FPGAItemSubType>
%endif
%if custom_target:
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7903.${lv_target_name}_VU11P_DDR1280</TargetClass>
% else:
  <TargetClass>COM.NI.FPGA.RIO.FlexRIO.79XXR.798X.7903.PXIe-7903L_VU11P_DDR1280</TargetClass>
% endif
  <IOModuleID>0x10937AEC</IOModuleID>
  <:Include what="children">Targets/NI/FPGA/RIO/79XXR/${lv_target_name}/Sasquatch7903DDR1280.xml</:Include>
</Target>
