# 
# This file was automatically processed for release on GitHub
# All comments were removed and this header was added
# 
# 
# MIT License
# 
# Copyright (c) 2025 National Instruments Corporation
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy of this
# software and associated documentation files (the "Software"), to deal in the Software
# without restriction, including without limitation the rights to use, copy, modify, merge,
# publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
# to whom the Software is furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all copies or
# substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
# PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
# FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
# 
# 

# LOC for Board Control Microblaze Debug Core
set MicroBlazeBScan [get_cells UserRTL_PXIe7903_Aurora64b66b_Framing_Crcx4_28p0GHz/SasquatchClipFixedLogicx/FamConfigMicroblazex/FamConfigMicroblazeBdx/mdm_0/U0/Use_E2.BSCAN_I/Use_E2.BSCANE2_I]
set_property LOC CONFIG_SITE_X0Y0 [get_cells $MicroBlazeBScan]
set_property BEL BSCAN2           [get_cells $MicroBlazeBScan]