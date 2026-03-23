
###################################################################################
##
## 
##
###################################################################################
## Start add from file DramConstraints.xdc

###################################################################################
##
## 
##
###################################################################################
## Start add from file MacallanBank0Dram.xdc
# DRAM Clock creation
# The DRAM Reference Clock is 133.33 MHz for now
create_clock -name DramRefClk0 -period 7.5 [get_ports Dram0RefClk_p]

set_property PACKAGE_PIN AC22 [get_ports {dr0DramOdt}]
set_property PACKAGE_PIN AA20 [get_ports {dr0DramReset_n}]
set_property PACKAGE_PIN AC23 [get_ports {dr0DramAct_n}]
set_property PACKAGE_PIN W26 [get_ports {dr0DramAddr[0]}]
set_property PACKAGE_PIN Y25 [get_ports {dr0DramAddr[10]}]
set_property PACKAGE_PIN T23 [get_ports {dr0DramAddr[11]}]
set_property PACKAGE_PIN V29 [get_ports {dr0DramAddr[12]}]
set_property PACKAGE_PIN U21 [get_ports {dr0DramAddr[13]}]
set_property PACKAGE_PIN W24 [get_ports {dr0DramAddr[14]}]
set_property PACKAGE_PIN V27 [get_ports {dr0DramAddr[15]}]
set_property PACKAGE_PIN V28 [get_ports {dr0DramAddr[16]}]
set_property PACKAGE_PIN Y28 [get_ports {dr0DramAddr[1]}]
set_property PACKAGE_PIN V26 [get_ports {dr0DramAddr[2]}]
set_property PACKAGE_PIN W29 [get_ports {dr0DramAddr[3]}]
set_property PACKAGE_PIN W25 [get_ports {dr0DramAddr[4]}]
set_property PACKAGE_PIN V22 [get_ports {dr0DramAddr[5]}]
set_property PACKAGE_PIN V23 [get_ports {dr0DramAddr[6]}]
set_property PACKAGE_PIN T22 [get_ports {dr0DramAddr[7]}]
set_property PACKAGE_PIN U24 [get_ports {dr0DramAddr[8]}]
set_property PACKAGE_PIN U22 [get_ports {dr0DramAddr[9]}]
set_property PACKAGE_PIN W23 [get_ports {dr0DramBankAddr[0]}]
set_property PACKAGE_PIN W28 [get_ports {dr0DramBankAddr[1]}]
set_property PACKAGE_PIN U27 [get_ports {Dram0Clk_n}]
set_property PACKAGE_PIN U26 [get_ports {Dram0Clk_p}]
set_property PACKAGE_PIN U25 [get_ports {dr0DramBg[0]}]
set_property PACKAGE_PIN AB22 [get_ports {dr0DramClkEn}]
set_property PACKAGE_PIN AA22 [get_ports {dr0DramCs_n}]
set_property PACKAGE_PIN W33 [get_ports {dr0DramDmDbi_n[0]}]
set_property PACKAGE_PIN AA32 [get_ports {dr0DramDmDbi_n[1]}]
set_property PACKAGE_PIN AG31 [get_ports {dr0DramDmDbi_n[2]}]
set_property PACKAGE_PIN AE27 [get_ports {dr0DramDmDbi_n[3]}]
set_property PACKAGE_PIN W30 [get_ports {dr0DramDq[0]}]
set_property PACKAGE_PIN AC33 [get_ports {dr0DramDq[10]}]
set_property PACKAGE_PIN AA34 [get_ports {dr0DramDq[11]}]
set_property PACKAGE_PIN AD34 [get_ports {dr0DramDq[12]}]
set_property PACKAGE_PIN AB31 [get_ports {dr0DramDq[13]}]
set_property PACKAGE_PIN AD33 [get_ports {dr0DramDq[14]}]
set_property PACKAGE_PIN AB34 [get_ports {dr0DramDq[15]}]
set_property PACKAGE_PIN AG34 [get_ports {dr0DramDq[16]}]
set_property PACKAGE_PIN AC32 [get_ports {dr0DramDq[17]}]
set_property PACKAGE_PIN AF33 [get_ports {dr0DramDq[18]}]
set_property PACKAGE_PIN AD31 [get_ports {dr0DramDq[19]}]
set_property PACKAGE_PIN U34 [get_ports {dr0DramDq[1]}]
set_property PACKAGE_PIN AE32 [get_ports {dr0DramDq[20]}]
set_property PACKAGE_PIN AC31 [get_ports {dr0DramDq[21]}]
set_property PACKAGE_PIN AF32 [get_ports {dr0DramDq[22]}]
set_property PACKAGE_PIN AD30 [get_ports {dr0DramDq[23]}]
set_property PACKAGE_PIN AD28 [get_ports {dr0DramDq[24]}]
set_property PACKAGE_PIN AF30 [get_ports {dr0DramDq[25]}]
set_property PACKAGE_PIN AE28 [get_ports {dr0DramDq[26]}]
set_property PACKAGE_PIN AE30 [get_ports {dr0DramDq[27]}]
set_property PACKAGE_PIN AC28 [get_ports {dr0DramDq[28]}]
set_property PACKAGE_PIN AG30 [get_ports {dr0DramDq[29]}]
set_property PACKAGE_PIN W34 [get_ports {dr0DramDq[2]}]
set_property PACKAGE_PIN AD29 [get_ports {dr0DramDq[30]}]
set_property PACKAGE_PIN AF28 [get_ports {dr0DramDq[31]}]
set_property PACKAGE_PIN W31 [get_ports {dr0DramDq[3]}]
set_property PACKAGE_PIN Y30 [get_ports {dr0DramDq[4]}]
set_property PACKAGE_PIN V31 [get_ports {dr0DramDq[5]}]
set_property PACKAGE_PIN V33 [get_ports {dr0DramDq[6]}]
set_property PACKAGE_PIN V34 [get_ports {dr0DramDq[7]}]
set_property PACKAGE_PIN AC34 [get_ports {dr0DramDq[8]}]
set_property PACKAGE_PIN AB30 [get_ports {dr0DramDq[9]}]
set_property PACKAGE_PIN Y32 [get_ports {dr0DramDqs_n[0]}]
set_property PACKAGE_PIN AB29 [get_ports {dr0DramDqs_n[1]}]
set_property PACKAGE_PIN AF34 [get_ports {dr0DramDqs_n[2]}]
set_property PACKAGE_PIN AG29 [get_ports {dr0DramDqs_n[3]}]
set_property PACKAGE_PIN Y31 [get_ports {dr0DramDqs_p[0]}]
set_property PACKAGE_PIN AA29 [get_ports {dr0DramDqs_p[1]}]
set_property PACKAGE_PIN AE33 [get_ports {dr0DramDqs_p[2]}]
set_property PACKAGE_PIN AF29 [get_ports {dr0DramDqs_p[3]}]
set_property PACKAGE_PIN Y27 [get_ports {dr0DramTestMode}]

## Reference Clock
set_property PACKAGE_PIN AA25 [get_ports Dram0RefClk_n]
set_property PACKAGE_PIN AA24 [get_ports Dram0RefClk_p]

######################################################
# Pin Properties
######################################################

## IO Standards
set_property IOSTANDARD DIFF_POD12_DCI  [get_ports {dr0DramDqs_?[*]}]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports Dram0Clk_?]
set_property IOSTANDARD LVCMOS12        [get_ports dr0DramReset_n]
set_property DRIVE      8               [get_ports dr0DramReset_n]
set_property IOSTANDARD POD12_DCI       [get_ports {dr0DramDmDbi_n[*]}]
set_property IOSTANDARD POD12_DCI       [get_ports {dr0DramDq[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports dr0DramAct_n]
set_property IOSTANDARD SSTL12_DCI      [get_ports {dr0DramAddr[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {dr0DramBankAddr[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {dr0DramBg[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports dr0DramClkEn]
set_property IOSTANDARD SSTL12_DCI      [get_ports dr0DramOdt]
set_property IOSTANDARD SSTL12_DCI      [get_ports dr0DramCs_n]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports Dram0RefClk_?]
set_property IOSTANDARD LVCMOS12        [get_ports dr0DramTestMode]
set_property DRIVE      8               [get_ports dr0DramTestMode]

###################
## Other Properties
###################
# SLEW RATE
set_property SLEW             FAST       [get_ports dr0DramAct_n]
set_property SLEW             FAST       [get_ports {dr0DramAddr[*]}]
set_property SLEW             FAST       [get_ports {dr0DramBankAddr[*]}]
set_property SLEW             FAST       [get_ports {dr0DramBg[*]}]
set_property SLEW             FAST       [get_ports Dram0Clk_?]
set_property SLEW             FAST       [get_ports dr0DramClkEn]
set_property SLEW             FAST       [get_ports {dr0DramDmDbi_n[*]}]
set_property SLEW             FAST       [get_ports {dr0DramDq[*]}]
set_property SLEW             FAST       [get_ports {dr0DramDqs_?[*]}]
set_property SLEW             FAST       [get_ports dr0DramOdt]
set_property SLEW             FAST       [get_ports dr0DramCs_n]
# Output Impedance
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports dr0DramAct_n]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {dr0DramAddr[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {dr0DramBankAddr[?]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {dr0DramBg[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports Dram0Clk_?]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports dr0DramClkEn]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {dr0DramDmDbi_n[?]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {dr0DramDq[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {dr0DramDqs_?[?]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports dr0DramOdt]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports dr0DramCs_n]
# Low Power
set_property IBUF_LOW_PWR     FALSE      [get_ports {dr0DramDmDbi_n[?]}]
set_property IBUF_LOW_PWR     FALSE      [get_ports {dr0DramDq[*]}]
set_property IBUF_LOW_PWR     FALSE      [get_ports {dr0DramDqs_?[?]}]
# ODT RTT
set_property ODT              RTT_40     [get_ports {dr0DramDmDbi_n[?]}]
set_property ODT              RTT_40     [get_ports {dr0DramDq[*]}]
set_property ODT              RTT_40     [get_ports {dr0DramDqs_?[?]}]
set_property ODT              RTT_48     [get_ports {Dram0RefClk_?}]
# Equalization
set_property EQUALIZATION     EQ_LEVEL2  [get_ports {dr0DramDmDbi_n[?]}]
set_property EQUALIZATION     EQ_LEVEL2  [get_ports {dr0DramDq[*]}]
set_property EQUALIZATION     EQ_LEVEL2  [get_ports {dr0DramDqs_?[?]}]
# Pre Emphasis
set_property PRE_EMPHASIS     RDRV_240   [get_ports {dr0DramDmDbi_n[?]}]
set_property PRE_EMPHASIS     RDRV_240   [get_ports {dr0DramDq[*]}]
set_property PRE_EMPHASIS     RDRV_240   [get_ports {dr0DramDqs_?[?]}]
# Data Rate DDR
set_property DATA_RATE        DDR        [get_ports {dr0DramDmDbi_n[?]}]
set_property DATA_RATE        DDR        [get_ports {dr0DramDq[*]}]
set_property DATA_RATE        DDR        [get_ports {dr0DramDqs_?[?]}]
set_property DATA_RATE        DDR        [get_ports Dram0Clk_?]
# Data Rate SDR
set_property DATA_RATE        SDR        [get_ports {dr0DramAddr[*]}]
set_property DATA_RATE        SDR        [get_ports {dr0DramBankAddr[?]}]
set_property DATA_RATE        SDR        [get_ports {dr0DramBg[*]}]
set_property DATA_RATE        SDR        [get_ports dr0DramAct_n]
set_property DATA_RATE        SDR        [get_ports dr0DramOdt]
set_property DATA_RATE        SDR        [get_ports dr0DramClkEn]
set_property DATA_RATE        SDR        [get_ports dr0DramCs_n]


#############
# Interface
#############

create_interface Ddr4_Bank0
set_property INTERFACE Ddr4_Bank0 \
[get_ports dr0DramAct_n] \
[get_ports {dr0DramAddr[*]}] \
[get_ports {dr0DramBankAddr[*]}] \
[get_ports {dr0DramBg[*]}]\
[get_ports Dram0Clk_?]\
[get_ports dr0DramClkEn]\
[get_ports {dr0DramDmDbi_n[*]}]\
[get_ports {dr0DramDq[*]}]\
[get_ports {dr0DramDqs_?[*]}]\
[get_ports dr0DramOdt] \
[get_ports dr0DramCs_n] \
[get_ports {Dram0RefClk_?}] \
[get_ports dr0DramReset_n] \
[get_ports dr0DramTestMode]


## Start add from file MacallanBank1Dram.xdc
# DRAM Clock creation
# The DRAM Reference Clock is 133.33 MHz for now
create_clock -name DramRefClk1 -period 7.5 [get_ports Dram1RefClk_p]

set_property PACKAGE_PIN B25 [get_ports {dr1DramOdt}]
set_property PACKAGE_PIN E26 [get_ports {dr1DramReset_n}]
set_property PACKAGE_PIN A25 [get_ports {dr1DramAct_n}]
set_property PACKAGE_PIN B22 [get_ports {dr1DramAddr[0]}]
set_property PACKAGE_PIN C23 [get_ports {dr1DramAddr[10]}]
set_property PACKAGE_PIN G22 [get_ports {dr1DramAddr[11]}]
set_property PACKAGE_PIN B20 [get_ports {dr1DramAddr[12]}]
set_property PACKAGE_PIN E21 [get_ports {dr1DramAddr[13]}]
set_property PACKAGE_PIN D23 [get_ports {dr1DramAddr[14]}]
set_property PACKAGE_PIN D20 [get_ports {dr1DramAddr[15]}]
set_property PACKAGE_PIN A20 [get_ports {dr1DramAddr[16]}]
set_property PACKAGE_PIN G24 [get_ports {dr1DramAddr[1]}]
set_property PACKAGE_PIN B21 [get_ports {dr1DramAddr[2]}]
set_property PACKAGE_PIN E20 [get_ports {dr1DramAddr[3]}]
set_property PACKAGE_PIN C22 [get_ports {dr1DramAddr[4]}]
set_property PACKAGE_PIN E23 [get_ports {dr1DramAddr[5]}]
set_property PACKAGE_PIN C21 [get_ports {dr1DramAddr[6]}]
set_property PACKAGE_PIN E22 [get_ports {dr1DramAddr[7]}]
set_property PACKAGE_PIN F23 [get_ports {dr1DramAddr[8]}]
set_property PACKAGE_PIN F22 [get_ports {dr1DramAddr[9]}]
set_property PACKAGE_PIN F25 [get_ports {dr1DramBankAddr[0]}]
set_property PACKAGE_PIN F24 [get_ports {dr1DramBankAddr[1]}]
set_property PACKAGE_PIN F20 [get_ports {Dram1Clk_n}]
set_property PACKAGE_PIN G20 [get_ports {Dram1Clk_p}]
set_property PACKAGE_PIN D21 [get_ports {dr1DramBg[0]}]
set_property PACKAGE_PIN B26 [get_ports {dr1DramClkEn}]
set_property PACKAGE_PIN C26 [get_ports {dr1DramCs_n}]
set_property PACKAGE_PIN J15 [get_ports {dr1DramDmDbi_n[0]}]
set_property PACKAGE_PIN G17 [get_ports {dr1DramDmDbi_n[1]}]
set_property PACKAGE_PIN D14 [get_ports {dr1DramDmDbi_n[2]}]
set_property PACKAGE_PIN B14 [get_ports {dr1DramDmDbi_n[3]}]
set_property PACKAGE_PIN K18 [get_ports {dr1DramDq[0]}]
set_property PACKAGE_PIN H16 [get_ports {dr1DramDq[10]}]
set_property PACKAGE_PIN H19 [get_ports {dr1DramDq[11]}]
set_property PACKAGE_PIN G15 [get_ports {dr1DramDq[12]}]
set_property PACKAGE_PIN F17 [get_ports {dr1DramDq[13]}]
set_property PACKAGE_PIN G14 [get_ports {dr1DramDq[14]}]
set_property PACKAGE_PIN H18 [get_ports {dr1DramDq[15]}]
set_property PACKAGE_PIN E18 [get_ports {dr1DramDq[16]}]
set_property PACKAGE_PIN F15 [get_ports {dr1DramDq[17]}]
set_property PACKAGE_PIN E17 [get_ports {dr1DramDq[18]}]
set_property PACKAGE_PIN E15 [get_ports {dr1DramDq[19]}]
set_property PACKAGE_PIN J16 [get_ports {dr1DramDq[1]}]
set_property PACKAGE_PIN D16 [get_ports {dr1DramDq[20]}]
set_property PACKAGE_PIN F14 [get_ports {dr1DramDq[21]}]
set_property PACKAGE_PIN E16 [get_ports {dr1DramDq[22]}]
set_property PACKAGE_PIN D15 [get_ports {dr1DramDq[23]}]
set_property PACKAGE_PIN C18 [get_ports {dr1DramDq[24]}]
set_property PACKAGE_PIN A19 [get_ports {dr1DramDq[25]}]
set_property PACKAGE_PIN B16 [get_ports {dr1DramDq[26]}]
set_property PACKAGE_PIN A18 [get_ports {dr1DramDq[27]}]
set_property PACKAGE_PIN B15 [get_ports {dr1DramDq[28]}]
set_property PACKAGE_PIN C17 [get_ports {dr1DramDq[29]}]
set_property PACKAGE_PIN K17 [get_ports {dr1DramDq[2]}]
set_property PACKAGE_PIN A15 [get_ports {dr1DramDq[30]}]
set_property PACKAGE_PIN B17 [get_ports {dr1DramDq[31]}]
set_property PACKAGE_PIN K16 [get_ports {dr1DramDq[3]}]
set_property PACKAGE_PIN L18 [get_ports {dr1DramDq[4]}]
set_property PACKAGE_PIN K15 [get_ports {dr1DramDq[5]}]
set_property PACKAGE_PIN L15 [get_ports {dr1DramDq[6]}]
set_property PACKAGE_PIN L19 [get_ports {dr1DramDq[7]}]
set_property PACKAGE_PIN H17 [get_ports {dr1DramDq[8]}]
set_property PACKAGE_PIN F18 [get_ports {dr1DramDq[9]}]
set_property PACKAGE_PIN J18 [get_ports {dr1DramDqs_n[0]}]
set_property PACKAGE_PIN F19 [get_ports {dr1DramDqs_n[1]}]
set_property PACKAGE_PIN D18 [get_ports {dr1DramDqs_n[2]}]
set_property PACKAGE_PIN B19 [get_ports {dr1DramDqs_n[3]}]
set_property PACKAGE_PIN J19 [get_ports {dr1DramDqs_p[0]}]
set_property PACKAGE_PIN G19 [get_ports {dr1DramDqs_p[1]}]
set_property PACKAGE_PIN D19 [get_ports {dr1DramDqs_p[2]}]
set_property PACKAGE_PIN C19 [get_ports {dr1DramDqs_p[3]}]
set_property PACKAGE_PIN A27 [get_ports {dr1DramTestMode}]

## Reference Clock
set_property PACKAGE_PIN C24 [get_ports Dram1RefClk_n]
set_property PACKAGE_PIN D24 [get_ports Dram1RefClk_p]

######################################################
# Pin Properties
######################################################

## IO Standards
set_property IOSTANDARD DIFF_POD12_DCI  [get_ports {dr1DramDqs_?[*]}]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports Dram1Clk_?]
set_property IOSTANDARD LVCMOS12        [get_ports dr1DramReset_n]
set_property DRIVE      8               [get_ports dr1DramReset_n]
set_property IOSTANDARD POD12_DCI       [get_ports {dr1DramDmDbi_n[*]}]
set_property IOSTANDARD POD12_DCI       [get_ports {dr1DramDq[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports dr1DramAct_n]
set_property IOSTANDARD SSTL12_DCI      [get_ports {dr1DramAddr[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {dr1DramBankAddr[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports {dr1DramBg[*]}]
set_property IOSTANDARD SSTL12_DCI      [get_ports dr1DramClkEn]
set_property IOSTANDARD SSTL12_DCI      [get_ports dr1DramOdt]
set_property IOSTANDARD SSTL12_DCI      [get_ports dr1DramCs_n]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports Dram1RefClk_?]
set_property IOSTANDARD LVCMOS12        [get_ports dr1DramTestMode]
set_property DRIVE      8               [get_ports dr1DramTestMode]

###################
## Other Properties
###################
# SLEW RATE
set_property SLEW             FAST       [get_ports dr1DramAct_n]
set_property SLEW             FAST       [get_ports {dr1DramAddr[*]}]
set_property SLEW             FAST       [get_ports {dr1DramBankAddr[*]}]
set_property SLEW             FAST       [get_ports {dr1DramBg[*]}]
set_property SLEW             FAST       [get_ports Dram1Clk_?]
set_property SLEW             FAST       [get_ports dr1DramClkEn]
set_property SLEW             FAST       [get_ports {dr1DramDmDbi_n[*]}]
set_property SLEW             FAST       [get_ports {dr1DramDq[*]}]
set_property SLEW             FAST       [get_ports {dr1DramDqs_?[*]}]
set_property SLEW             FAST       [get_ports dr1DramOdt]
set_property SLEW             FAST       [get_ports dr1DramCs_n]
# Output Impedance
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports dr1DramAct_n]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {dr1DramAddr[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {dr1DramBankAddr[?]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {dr1DramBg[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports Dram1Clk_?]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports dr1DramClkEn]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {dr1DramDmDbi_n[?]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {dr1DramDq[*]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {dr1DramDqs_?[?]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports dr1DramOdt]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports dr1DramCs_n]
# Low Power
set_property IBUF_LOW_PWR     FALSE      [get_ports {dr1DramDmDbi_n[?]}]
set_property IBUF_LOW_PWR     FALSE      [get_ports {dr1DramDq[*]}]
set_property IBUF_LOW_PWR     FALSE      [get_ports {dr1DramDqs_?[?]}]
# ODT RTT
set_property ODT              RTT_40     [get_ports {dr1DramDmDbi_n[?]}]
set_property ODT              RTT_40     [get_ports {dr1DramDq[*]}]
set_property ODT              RTT_40     [get_ports {dr1DramDqs_?[?]}]
set_property ODT              RTT_48     [get_ports {Dram1RefClk_?}]
# Equalization
set_property EQUALIZATION     EQ_LEVEL2  [get_ports {dr1DramDmDbi_n[?]}]
set_property EQUALIZATION     EQ_LEVEL2  [get_ports {dr1DramDq[*]}]
set_property EQUALIZATION     EQ_LEVEL2  [get_ports {dr1DramDqs_?[?]}]
# Pre Emphasis
set_property PRE_EMPHASIS     RDRV_240   [get_ports {dr1DramDmDbi_n[?]}]
set_property PRE_EMPHASIS     RDRV_240   [get_ports {dr1DramDq[*]}]
set_property PRE_EMPHASIS     RDRV_240   [get_ports {dr1DramDqs_?[?]}]
# Data Rate DDR
set_property DATA_RATE        DDR        [get_ports {dr1DramDmDbi_n[?]}]
set_property DATA_RATE        DDR        [get_ports {dr1DramDq[*]}]
set_property DATA_RATE        DDR        [get_ports {dr1DramDqs_?[?]}]
set_property DATA_RATE        DDR        [get_ports Dram1Clk_?]
# Data Rate SDR
set_property DATA_RATE        SDR        [get_ports {dr1DramAddr[*]}]
set_property DATA_RATE        SDR        [get_ports {dr1DramBankAddr[?]}]
set_property DATA_RATE        SDR        [get_ports {dr1DramBg[*]}]
set_property DATA_RATE        SDR        [get_ports dr1DramAct_n]
set_property DATA_RATE        SDR        [get_ports dr1DramOdt]
set_property DATA_RATE        SDR        [get_ports dr1DramClkEn]
set_property DATA_RATE        SDR        [get_ports dr1DramCs_n]


#############
# Interface
#############

create_interface Ddr4_Bank1
set_property INTERFACE Ddr4_Bank1 \
[get_ports dr1DramAct_n] \
[get_ports {dr1DramAddr[*]}] \
[get_ports {dr1DramBankAddr[*]}] \
[get_ports {dr1DramBg[*]}]\
[get_ports Dram1Clk_?]\
[get_ports dr1DramClkEn]\
[get_ports {dr1DramDmDbi_n[*]}]\
[get_ports {dr1DramDq[*]}]\
[get_ports {dr1DramDqs_?[*]}]\
[get_ports dr1DramOdt]\
[get_ports dr1DramCs_n] \
[get_ports {Dram1RefClk_?}] \
[get_ports dr1DramReset_n] \
[get_ports dr1DramTestMode]



## Need these constraints if the MMCM on the MIG is not on the same bank as the DramRefClk
## pin, and we're not using the built-in clock buffer path (in this case because we want
## to enable DQS_BIAS).
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets MacallanDramx/GenBank0.Bank0Dram/Bank0Dram/DramRefClkIbuf/O]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets MacallanDramx/GenBank1.Bank1Dram/Bank1Dram/DramRefClkIbuf/O]

set UltrascaleDdr40 [current_instance .]
current_instance MacallanDramx/GenBank0.Bank0Dram/Bank0Dram/ddr4_0x
## Start add from file UltrascaleDdr4_mod.xdc
set UltrascaleDdr4Inst [current_instance .]

####################################################################################
# Generated by Vivado 2021.1 built on 'Thu Jun 10 19:36:07 MDT 2021' by 'xbuild'
# Command Used: write_xdc -force -exclude_physical /mnt/Work/myagent/_work/3/s/hw-flexrio/ipcores/vendorip/dram/objects/tool/synth_dram/kintexultrascale/macallan/UltrascaleDdr4/vivado/output/constraint/UltrascaleDdr4.xdc
####################################################################################


####################################################################################
# Constraints from file : 'bd_8f18_microblaze_I_0.xdc'
####################################################################################

current_instance inst/u_ddr4_mem_intfc/u_ddr_cal_riu/mcs0/U0/microblaze_I/U0
set_false_path -through [get_ports -scoped_to_current_instance Reset]

####################################################################################
# Constraints from file : 'bd_8f18_rst_0_0.xdc'
####################################################################################

current_instance -quiet
current_instance $UltrascaleDdr4Inst
current_instance inst/u_ddr4_mem_intfc/u_ddr_cal_riu/mcs0/U0/rst_0/U0
set_false_path -to [get_pins -hier *cdc_to*/D]

####################################################################################
# Constraints from file : 'bd_8f18_ilmb_0.xdc'
####################################################################################

current_instance -quiet
current_instance $UltrascaleDdr4Inst
current_instance inst/u_ddr4_mem_intfc/u_ddr_cal_riu/mcs0/U0/ilmb/U0
set_false_path -through [get_ports -scoped_to_current_instance SYS_Rst]

####################################################################################
# Constraints from file : 'bd_8f18_dlmb_0.xdc'
####################################################################################

current_instance -quiet
current_instance $UltrascaleDdr4Inst
current_instance inst/u_ddr4_mem_intfc/u_ddr_cal_riu/mcs0/U0/dlmb/U0
set_false_path -through [get_ports -scoped_to_current_instance SYS_Rst]

####################################################################################
# Constraints from file : 'UltrascaleDdr4.xdc'
####################################################################################

current_instance -quiet
current_instance $UltrascaleDdr4Inst
current_instance inst
set_false_path -hold -to [get_pins */*/*/*/*/*.u_xiphy_control/xiphy_control/RIU_ADDR*]
set_false_path -hold -to [get_pins */*/*/*/*/*.u_xiphy_control/xiphy_control/RIU_WR_DATA*]
set_max_delay -datapath_only -from [get_pins */*/*/u_ddr_cal_addr_decode/io_ready_lvl_reg/C] -to [get_pins {*/u_io_ready_lvl_sync/SYNC[*].sync_reg_reg[0]/D}] 5.000
set_max_delay -datapath_only -from [get_pins {*/*/*/u_ddr_cal_addr_decode/io_read_data_reg[*]/C}] -to [get_pins {*/u_io_read_data_sync/SYNC[*].sync_reg_reg[0]/D}] 5.000
set_max_delay -datapath_only -from [get_pins */*/*/phy_ready_riuclk_reg/C] -to [get_pins {*/u_phy2clb_phy_ready_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/*/bisc_complete_riuclk_reg/C] -to [get_pins {*/u_phy2clb_bisc_complete_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/io_addr_strobe_lvl_riuclk_reg/C] -to [get_pins {*/u_io_addr_strobe_lvl_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/io_write_strobe_riuclk_reg/C] -to [get_pins {*/u_io_write_strobe_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins {*/*/io_address_riuclk_reg[*]/C}] -to [get_pins {*/u_io_addr_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins {*/*/io_write_data_riuclk_reg[*]/C}] -to [get_pins {*/u_io_write_data_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */en_vtc_in_reg/C] -to [get_pins {*/u_en_vtc_sync/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins {*/*/riu2clb_valid_r1_riuclk_reg[*]/C}] -to [get_pins {*/u_riu2clb_valid_sync/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins {*/*/*/phy2clb_fixdly_rdy_low_riuclk_int_reg[*]/C}] -to [get_pins {*/u_phy2clb_fixdly_rdy_low/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins {*/*/*/phy2clb_fixdly_rdy_upp_riuclk_int_reg[*]/C}] -to [get_pins {*/u_phy2clb_fixdly_rdy_upp/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins {*/*/*/phy2clb_phy_rdy_low_riuclk_int_reg[*]/C}] -to [get_pins {*/u_phy2clb_phy_rdy_low/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins {*/*/*/phy2clb_phy_rdy_upp_riuclk_int_reg[*]/C}] -to [get_pins {*/u_phy2clb_phy_rdy_upp/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins */rst_r1_reg/C] -to [get_pins {*/u_fab_rst_sync/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins */*/*/clb2phy_t_b_addr_riuclk_reg/C] -to [get_pins {*/*/*/clb2phy_t_b_addr_i_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/*/*/slave_en_lvl_reg/C] -to [get_pins {*/*/*/*/u_slave_en_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/*/*/slave_we_r_reg/C] -to [get_pins {*/*/*/*/u_slave_we_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins {*/*/*/*/slave_addr_r_reg[*]/C}] -to [get_pins {*/*/*/*/u_slave_addr_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins {*/*/*/*/slave_di_r_reg[*]/C}] -to [get_pins {*/*/*/*/u_slave_di_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/*/*/slave_rdy_cptd_sclk_reg/C] -to [get_pins {*/*/*/*/u_slave_rdy_cptd_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/*/*/slave_rdy_lvl_fclk_reg/C] -to [get_pins {*/*/*/*/u_slave_rdy_sync/SYNC[*].sync_reg_reg[0]/D}] 12.000
set_max_delay -datapath_only -from [get_pins {*/*/*/*/slave_do_fclk_reg[*]/C}] -to [get_pins {*/*/*/*/u_slave_do_sync/SYNC[*].sync_reg_reg[0]/D}] 12.000
set_false_path -through [get_pins u_ddr4_infrastructure/sys_rst]
set_false_path -from [get_pins */input_rst_design_reg/C] -to [get_pins {*/rst_div_sync_r_reg[0]/D}]
set_false_path -from [get_pins */input_rst_design_reg/C] -to [get_pins {*/rst_riu_sync_r_reg[0]/D}]
set_false_path -from [get_pins */input_rst_design_reg/C] -to [get_pins {*/rst_mb_sync_r_reg[0]/D}]
set_false_path -from [get_pins */rst_async_riu_div_reg/C] -to [get_pins {*/rst_div_sync_r_reg[0]/D}]
set_false_path -from [get_pins */rst_async_mb_reg/C] -to [get_pins {*/rst_mb_sync_r_reg[0]/D}]
set_false_path -from [get_pins */rst_async_riu_div_reg/C] -to [get_pins {*/rst_riu_sync_r_reg[0]/D}]

# Vivado Generated miscellaneous constraints

#revert back to original instance
current_instance -quiet
current_instance $UltrascaleDdr4Inst



current_instance -quiet
current_instance $UltrascaleDdr40
set UltrascaleDdr40 [current_instance .]
current_instance MacallanDramx/GenBank1.Bank1Dram/Bank1Dram/ddr4_0x
## Start add from file UltrascaleDdr4_mod.xdc
set UltrascaleDdr4Inst [current_instance .]

####################################################################################
# Generated by Vivado 2021.1 built on 'Thu Jun 10 19:36:07 MDT 2021' by 'xbuild'
# Command Used: write_xdc -force -exclude_physical /mnt/Work/myagent/_work/3/s/hw-flexrio/ipcores/vendorip/dram/objects/tool/synth_dram/kintexultrascale/macallan/UltrascaleDdr4/vivado/output/constraint/UltrascaleDdr4.xdc
####################################################################################


####################################################################################
# Constraints from file : 'bd_8f18_microblaze_I_0.xdc'
####################################################################################

current_instance inst/u_ddr4_mem_intfc/u_ddr_cal_riu/mcs0/U0/microblaze_I/U0
set_false_path -through [get_ports -scoped_to_current_instance Reset]

####################################################################################
# Constraints from file : 'bd_8f18_rst_0_0.xdc'
####################################################################################

current_instance -quiet
current_instance $UltrascaleDdr4Inst
current_instance inst/u_ddr4_mem_intfc/u_ddr_cal_riu/mcs0/U0/rst_0/U0
set_false_path -to [get_pins -hier *cdc_to*/D]

####################################################################################
# Constraints from file : 'bd_8f18_ilmb_0.xdc'
####################################################################################

current_instance -quiet
current_instance $UltrascaleDdr4Inst
current_instance inst/u_ddr4_mem_intfc/u_ddr_cal_riu/mcs0/U0/ilmb/U0
set_false_path -through [get_ports -scoped_to_current_instance SYS_Rst]

####################################################################################
# Constraints from file : 'bd_8f18_dlmb_0.xdc'
####################################################################################

current_instance -quiet
current_instance $UltrascaleDdr4Inst
current_instance inst/u_ddr4_mem_intfc/u_ddr_cal_riu/mcs0/U0/dlmb/U0
set_false_path -through [get_ports -scoped_to_current_instance SYS_Rst]

####################################################################################
# Constraints from file : 'UltrascaleDdr4.xdc'
####################################################################################

current_instance -quiet
current_instance $UltrascaleDdr4Inst
current_instance inst
set_false_path -hold -to [get_pins */*/*/*/*/*.u_xiphy_control/xiphy_control/RIU_ADDR*]
set_false_path -hold -to [get_pins */*/*/*/*/*.u_xiphy_control/xiphy_control/RIU_WR_DATA*]
set_max_delay -datapath_only -from [get_pins */*/*/u_ddr_cal_addr_decode/io_ready_lvl_reg/C] -to [get_pins {*/u_io_ready_lvl_sync/SYNC[*].sync_reg_reg[0]/D}] 5.000
set_max_delay -datapath_only -from [get_pins {*/*/*/u_ddr_cal_addr_decode/io_read_data_reg[*]/C}] -to [get_pins {*/u_io_read_data_sync/SYNC[*].sync_reg_reg[0]/D}] 5.000
set_max_delay -datapath_only -from [get_pins */*/*/phy_ready_riuclk_reg/C] -to [get_pins {*/u_phy2clb_phy_ready_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/*/bisc_complete_riuclk_reg/C] -to [get_pins {*/u_phy2clb_bisc_complete_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/io_addr_strobe_lvl_riuclk_reg/C] -to [get_pins {*/u_io_addr_strobe_lvl_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/io_write_strobe_riuclk_reg/C] -to [get_pins {*/u_io_write_strobe_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins {*/*/io_address_riuclk_reg[*]/C}] -to [get_pins {*/u_io_addr_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins {*/*/io_write_data_riuclk_reg[*]/C}] -to [get_pins {*/u_io_write_data_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */en_vtc_in_reg/C] -to [get_pins {*/u_en_vtc_sync/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins {*/*/riu2clb_valid_r1_riuclk_reg[*]/C}] -to [get_pins {*/u_riu2clb_valid_sync/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins {*/*/*/phy2clb_fixdly_rdy_low_riuclk_int_reg[*]/C}] -to [get_pins {*/u_phy2clb_fixdly_rdy_low/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins {*/*/*/phy2clb_fixdly_rdy_upp_riuclk_int_reg[*]/C}] -to [get_pins {*/u_phy2clb_fixdly_rdy_upp/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins {*/*/*/phy2clb_phy_rdy_low_riuclk_int_reg[*]/C}] -to [get_pins {*/u_phy2clb_phy_rdy_low/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins {*/*/*/phy2clb_phy_rdy_upp_riuclk_int_reg[*]/C}] -to [get_pins {*/u_phy2clb_phy_rdy_upp/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins */rst_r1_reg/C] -to [get_pins {*/u_fab_rst_sync/SYNC[*].sync_reg_reg[0]/D}] 10.000
set_max_delay -datapath_only -from [get_pins */*/*/clb2phy_t_b_addr_riuclk_reg/C] -to [get_pins {*/*/*/clb2phy_t_b_addr_i_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/*/*/slave_en_lvl_reg/C] -to [get_pins {*/*/*/*/u_slave_en_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/*/*/slave_we_r_reg/C] -to [get_pins {*/*/*/*/u_slave_we_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins {*/*/*/*/slave_addr_r_reg[*]/C}] -to [get_pins {*/*/*/*/u_slave_addr_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins {*/*/*/*/slave_di_r_reg[*]/C}] -to [get_pins {*/*/*/*/u_slave_di_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/*/*/slave_rdy_cptd_sclk_reg/C] -to [get_pins {*/*/*/*/u_slave_rdy_cptd_sync/SYNC[*].sync_reg_reg[0]/D}] 3.000
set_max_delay -datapath_only -from [get_pins */*/*/*/slave_rdy_lvl_fclk_reg/C] -to [get_pins {*/*/*/*/u_slave_rdy_sync/SYNC[*].sync_reg_reg[0]/D}] 12.000
set_max_delay -datapath_only -from [get_pins {*/*/*/*/slave_do_fclk_reg[*]/C}] -to [get_pins {*/*/*/*/u_slave_do_sync/SYNC[*].sync_reg_reg[0]/D}] 12.000
set_false_path -through [get_pins u_ddr4_infrastructure/sys_rst]
set_false_path -from [get_pins */input_rst_design_reg/C] -to [get_pins {*/rst_div_sync_r_reg[0]/D}]
set_false_path -from [get_pins */input_rst_design_reg/C] -to [get_pins {*/rst_riu_sync_r_reg[0]/D}]
set_false_path -from [get_pins */input_rst_design_reg/C] -to [get_pins {*/rst_mb_sync_r_reg[0]/D}]
set_false_path -from [get_pins */rst_async_riu_div_reg/C] -to [get_pins {*/rst_div_sync_r_reg[0]/D}]
set_false_path -from [get_pins */rst_async_mb_reg/C] -to [get_pins {*/rst_mb_sync_r_reg[0]/D}]
set_false_path -from [get_pins */rst_async_riu_div_reg/C] -to [get_pins {*/rst_riu_sync_r_reg[0]/D}]

# Vivado Generated miscellaneous constraints

#revert back to original instance
current_instance -quiet
current_instance $UltrascaleDdr4Inst



current_instance -quiet
current_instance $UltrascaleDdr40



## Start include, file cfmake_usg3x8_ku40.xml
## Start add from file ClockingUltrascale.xdc
##################### TIMING CONSTRAINTS #######################

################################################################################
##Clock Creation and naming
################################################################################

## Osc100ClkIn is given the ReliableClk name because that's its primary function.
create_clock -name ReliableClk -period 10.0  [get_ports Osc100ClkIn]
## Backplane Clock
create_clock -name PxieClk100  -period 10.0  [get_ports PxieClk100_p]

## These naming assignments without periods will rename the auto-generated clocks to
## something manageable and constant (from whatever Xilinx came up with) without breaking
## the auto-propagated waveform (period/phase/jitter).
# Since we are not using Clk40 I will comment it to prevent it from generating critical warnings
set clockingInstance TimingEnginex/TimingStage1x/ReliableClkPllx
set PllPin0 [get_pins $clockingInstance/inst/mmcme3_adv_inst/CLKOUT0]
set PllPin1 [get_pins $clockingInstance/inst/mmcme3_adv_inst/CLKOUT1]
set PllPin2 [get_pins $clockingInstance/inst/mmcme3_adv_inst/CLKOUT2]
#I'm commenting Clk40 until we actualy use it to prevent it from generating critical warnings
set PllClk40  [get_clocks -of_objects $PllPin0]
set PllClk80  [get_clocks -of_objects $PllPin1]
set DlyRefClk [get_clocks -of_objects $PllPin2]

## Aditionally, we'll use clock aliases (essentially, we'll just save the proper clock in a
## variable), so that the different uses of the above clocks can be changed in a single
## place. If different clocks become different things, they should be changed here.
set BusClk $PllClk80
set DmaClk [get_clocks -of [get_nets DmaClk]]

## These are some annoying clocks that keep showing up in our timing reports. They don't
## really need to be constrained: they're "happen once" strobes or very slow (JTAG)
## clocks. They're used internally to some Xilinx IP, Xilinx doesn't take the time to
## constrain them, and then Xilinx complains that they're not constrained. *Sigh*


set MacallanTop1 [current_instance .]
current_instance HostInterfacex/Inchwormx/InchwormNetlist
## Start add from file InchwormNetlistTiming.xdc

###################################################################################
##
## 
##
###################################################################################

#######################################################################
# Timing constraints for the InChWORM netlist. Physical constraints are provided on a
#  separate file depending on the given part and location of the corresponding PCIe IP
#  core desired to be used by the InChWORM
# Assumptions:
#  - Current instance is Inchworm netlist
#  - Clock40 for authentication has been created.
#######################################################################

## Start add from file CommonPcieConstraints.xdc
#######################################################################
# File: CommonPcieConstraints.xdc
#
# Common timing constraints for all PCIe Inchworm netlists.
# Usage assumptions (to be satisfied by user):
#   - Current instance is Inchworm netlist
# Netlist assumptions (to be satisfied at netlist synthesis):
#   - Netlist wraps the PCIe IP in an instance called PcieIpWrapper
#   - PcieIpWrapper instantiates the Pcie IP with instance name PcieIp
#   - PcieIpWrapper instantiates the Pcie RefClk IBUFDS with instance name PcieRefClkIBufds
#   - Reset is routed to the hard IP with net named aPcieRst_n
# Note that this does not include the Xilinx PCIe IP generated constraints (to be written
#   in vivado for each netlist).
#######################################################################

# PCIe reset is treated as asynchronous even if it is extended with synchronous logic.
# Note that this is the reset to the netlist an not the reset from the connector.
# Constraining the reset from the connector is left to the user.
set_false_path -through [get_nets aPcieRst_n]

# PCIe reference clock going to the transceivers in order to recover the system clocks and
#  other generated clocks that will be created automatically.
create_clock -name PcieRefClk -period 10 [get_ports -scoped_to_current_instance PcieRefClk_p]

# Disabling recovery/removal on the generated internal bus reset (aBusReset output port
#  of netlist). This covers also InChWORM internal flops that are designed to be safe
#  on asynchronous reset deassertion.
set_false_path -through [get_pins PcieIpWrapper/PcieIp/inst/user_reset_reg*/Q]

set_property DONT_TOUCH TRUE [get_cells PcieIpWrapper/PcieIp/inst]

## Start add from file PcieIpCoreTiming.xdc
#######################################################################
# File: PcieIpCoreTiming.xdc
#
# Automatically created in Vivado from generated IP constraints
#######################################################################

# Timing constraints related to PCIe Core.

# Backing up current instance
set inchworm_netlist_instance [current_instance .]

#######################################################################
# Constraints from file : 'PcieUsG3x8TandemHardIp-PCIE_X0Y0.xdc'
#######################################################################

current_instance PcieIpWrapper/PcieIp/inst
set_case_analysis 1 [get_nets {gt_top_i/PHY_TXOUTCLKSEL[2]}]
set_case_analysis 0 [get_nets {gt_top_i/PHY_TXOUTCLKSEL[1]}]
set_case_analysis 1 [get_nets {gt_top_i/PHY_TXOUTCLKSEL[0]}]
set_case_analysis 0 [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gthe3_channel_inst[*].GTHE3_CHANNEL_PRIM_INST/TXRATE[0]}]
set_case_analysis 0 [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gthe3_channel_inst[*].GTHE3_CHANNEL_PRIM_INST/RXRATE[0]}]
set_case_analysis 1 [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gthe3_channel_inst[*].GTHE3_CHANNEL_PRIM_INST/TXRATE[1]}]
set_case_analysis 1 [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gthe3_channel_inst[*].GTHE3_CHANNEL_PRIM_INST/RXRATE[1]}]
set_case_analysis 1 [get_pins {gt_top_i/phy_clk_i/bufg_gt_userclk/DIV[0]}]
set_case_analysis 0 [get_pins {gt_top_i/phy_clk_i/bufg_gt_userclk/DIV[1]}]
set_case_analysis 0 [get_pins {gt_top_i/phy_clk_i/bufg_gt_userclk/DIV[2]}]
set_case_analysis 1 [get_pins {gt_top_i/phy_clk_i/bufg_gt_pclk/DIV[0]}]
set_case_analysis 0 [get_pins {gt_top_i/phy_clk_i/bufg_gt_pclk/DIV[1]}]
set_case_analysis 0 [get_pins {gt_top_i/phy_clk_i/bufg_gt_pclk/DIV[2]}]
set_case_analysis 1 [get_pins {gt_top_i/bufg_mcap_clk/DIV[0]}]
set_case_analysis 1 [get_pins {gt_top_i/bufg_mcap_clk/DIV[1]}]
set_case_analysis 0 [get_pins {gt_top_i/bufg_mcap_clk/DIV[2]}]
set_case_analysis 0 [get_pins {gt_top_i/phy_clk_i/bufg_gt_coreclk/DIV[0]}]
set_case_analysis 0 [get_pins {gt_top_i/phy_clk_i/bufg_gt_coreclk/DIV[1]}]
set_case_analysis 0 [get_pins {gt_top_i/phy_clk_i/bufg_gt_coreclk/DIV[2]}]
set_false_path -to [get_pins -hier {*sync_reg[0]/D}]
set_false_path -from [get_pins gt_top_i/phy_rst_i/prst_n_r_reg_reg/C] -to [get_pins {gt_top_i/phy_rst_i/sync_prst_n/sync_vec[0].sync_cell_i/sync_reg[0]/D}]
set_false_path -from [get_pins gt_top_i/phy_rst_i/idle_reg/C] -to [get_pins {pcie3_uscale_top_inst/init_ctrl_inst/reg_phy_rdy_reg[0]/D}]
set_false_path -from [get_pins {gt_top_i/gt_wizard.gtwizard_top_i/PcieUsG3x8TandemHardIp_gt_i/inst/gen_gtwizard_gthe3_top.PcieUsG3x8TandemHardIp_gt_gtwizard_gthe3_inst/gen_gtwizard_gthe3.gen_channel_container[*].gen_enabled_channel.gthe3_channel_wrapper_inst/channel_inst/gthe3_channel_gen.gen_gthe3_channel_inst[*].GTHE3_CHANNEL_PRIM_INST/RXUSRCLK2}] -to [get_pins {gt_top_i/phy_rst_i/sync_phystatus/sync_vec[*].sync_cell_i/sync_reg[0]/D}]
set_false_path -from [get_pins {gt_top_i/gt_wizard.gtwizard_top_i/PcieUsG3x8TandemHardIp_gt_i/inst/gen_gtwizard_gthe3_top.PcieUsG3x8TandemHardIp_gt_gtwizard_gthe3_inst/gen_gtwizard_gthe3.gen_channel_container[*].gen_enabled_channel.gthe3_channel_wrapper_inst/channel_inst/gthe3_channel_gen.gen_gthe3_channel_inst[*].GTHE3_CHANNEL_PRIM_INST/RXUSRCLK2}] -to [get_pins {gt_top_i/phy_rst_i/sync_rxresetdone/sync_vec[*].sync_cell_i/sync_reg[0]/D}]
set_false_path -from [get_pins {gt_top_i/gt_wizard.gtwizard_top_i/PcieUsG3x8TandemHardIp_gt_i/inst/gen_gtwizard_gthe3_top.PcieUsG3x8TandemHardIp_gt_gtwizard_gthe3_inst/gen_gtwizard_gthe3.gen_channel_container[*].gen_enabled_channel.gthe3_channel_wrapper_inst/channel_inst/gthe3_channel_gen.gen_gthe3_channel_inst[*].GTHE3_CHANNEL_PRIM_INST/TXUSRCLK2}] -to [get_pins {gt_top_i/phy_rst_i/sync_txresetdone/sync_vec[*].sync_cell_i/sync_reg[0]/D}]
set_false_path -from [get_pins {gt_top_i/phy_lane[*].in_detect_reg/C}] -to [get_pins {gt_top_i/phy_lane[*].receiver_detect_drp_i/sync_mac_in_detect/sync_vec[0].sync_cell_i/sync_reg[0]/D}]
set_false_path -to [get_pins user_lnk_up_reg/CLR]
set_false_path -to [get_pins user_reset_reg/PRE]
set_false_path -through [get_pins -hierarchical -filter NAME=~*/RXELECIDLE]
set_false_path -through [get_pins -hierarchical -filter NAME=~*/PCIEPERST0B]
set_false_path -through [get_pins -hierarchical -filter NAME=~*/PCIERATEGEN3]
set_false_path -through [get_pins -hierarchical -filter NAME=~*/RXPRGDIVRESETDONE]
set_false_path -through [get_pins -hierarchical -filter NAME=~*/TXPRGDIVRESETDONE]
set_false_path -through [get_pins -hierarchical -filter NAME=~*/PCIESYNCTXSYNCDONE]
set_false_path -through [get_pins -hierarchical -filter NAME=~*/GTPOWERGOOD]
set_false_path -through [get_pins -hierarchical -filter NAME=~*/CPLLLOCK]
set_false_path -through [get_pins -hierarchical -filter NAME=~*/QPLL1LOCK]
create_clock -period 1000.000 -name startupEosClk [get_pins startup_i/EOS]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins startup_i/EOS]]

# Restoring netlist instance
current_instance -quiet
current_instance -quiet $inchworm_netlist_instance



set InchwormNetlist0 [current_instance .]
current_instance AtmelAuthenticationTopx
## Start add from file AtmelAuthenticationTiming.xdc

###################################################################################
##
## 
##
###################################################################################

#######################################################################
# Timing constraints for the Atmel Authentication IP.
# Created with cfmake consisting entirely of references to nicores instances.
# Assumptions:
#  - current_instance is the instance of AtmelAuthenticationTop
#      (e.g. AtmelAuthenticationTopx in Inchworm netlist)
#  - Clocks to this entity have been defined (DmaClock and Clk40Mhz)
#      * Note that on PCIe InChWORM, DmaClock is expected to be defined by the
#        corresponding PCIe IP constraints.
#######################################################################

set BasePath CryptoTopGluex/CryptoRegportClockCrossing/RequestHandshake
## Start include, file HandshakeSLV_RSD.xml
set HandshakeSlvRsdPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBaseRSD.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseRSD
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseRsdPath $BasePath

# Data
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"      -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/*oDataFlopx/*/*"        -filter {IS_SEQUENTIAL==true}]
# Toggle
set TNM_HS_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/*oPushToggle0_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
# Ready
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]

# Find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]

# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay  -from $TNM_HS_iData   -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Toggle
set_false_path -from $TNM_HS_iTog    -to $TNM_HS_oTog_ms
set_max_delay  -from $TNM_HS_oTog_ms -to $TNM_HS_oTog -datapath_only [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy    -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms -to $TNM_HS_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvRsdPath


set BasePath CryptoTopGluex/CryptoRegportClockCrossing/ResponseHandshake
## Start include, file HandshakeSLV_RSD.xml
set HandshakeSlvRsdPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBaseRSD.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseRSD
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseRsdPath $BasePath

# Data
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"      -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/*oDataFlopx/*/*"        -filter {IS_SEQUENTIAL==true}]
# Toggle
set TNM_HS_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/*oPushToggle0_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
# Ready
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]

# Find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]

# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay  -from $TNM_HS_iData   -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Toggle
set_false_path -from $TNM_HS_iTog    -to $TNM_HS_oTog_ms
set_max_delay  -from $TNM_HS_oTog_ms -to $TNM_HS_oTog -datapath_only [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy    -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms -to $TNM_HS_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvRsdPath


set BasePath CryptoTopGluex/ResetSyncDeassertClk40
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set BasePath CryptoTopGluex/ResetSyncDeassertDmaClock
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set BasePath CryptoTopGluex/KillSynch
## Start include, file DoubleSyncBool.xml
set DoubleSyncBoolPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncBoolPath


set BasePath CryptoTopGluex/DmaClockDoubleSync
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath CryptoTopGluex/ClkDoubleSync
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath CryptoTopGluex/AppRdyDoubleSync
## Start include, file DoubleSyncSL.xml
set DoubleSyncSlPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlPath






current_instance -quiet
current_instance $InchwormNetlist0



## Start add from file InchwormNetlistPlacement_xcku040-ffva1156-2-e_X0Y0.xdc
#######################################################################
# File: InchwormNetlistPlacement_xcku040-ffva1156-2-e_X0Y0.xdc
#
# Automatically created in Vivado from generated IP constraints
#######################################################################

###########################################################################################
# This file contains constraints related to PCIe core location (e.g. buffer BRAM locations, etc)
#
# Constraints related to transceivers (RefClock and Quad locations) are left to the user because
#   different quad/refclock configurations can be valid for the same PCIe core location.
#
# For reference, the MGT Quad in the same clock region than the PCIe core X0Y0 is 224.
# It consists of the following GT Channels:
#   Channel: (Rx_p, Rx_n, Tx_p, Tx_n)
#   GTHE3_CHANNEL_X0Y0: (AP2, AP1, AN4, AN3)
#   GTHE3_CHANNEL_X0Y1: (AM2, AM1, AM6, AM5)
#   GTHE3_CHANNEL_X0Y2: (AK2, AK1, AL4, AL3)
#   GTHE3_CHANNEL_X0Y3: (AJ4, AJ3, AK6, AK5)
# And the following Reference Clock inputs:
#   Reference: (Rx_p, Rx_n)
#   RefClk0: (AF6, AF5)
#   RefClk1: (AD6, AD5)
# Choose this and/or adjacent Quads to use with this core according to the capabilities of the FPGA
#
# Constraints related to PCIe reset location and IO standard are also left to the user.
###########################################################################################

# Backing up current instance
set inchworm_netlist_instance [current_instance .]

#######################################################################
# Constraints from file : 'PcieUsG3x8TandemHardIp-PCIE_X0Y0.xdc'
#######################################################################

current_instance PcieIpWrapper/PcieIp/inst
set_property RXDFE_GC_CFG2 16'h0040 [get_cells -hier -filter {NAME =~ *GTHE3_CHANNEL_PRIM_INST}]

# Restoring netlist instance
current_instance -quiet
current_instance -quiet $inchworm_netlist_instance

set_property LOC PCIE_3_1_X0Y0 [get_cells PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/PCIE_3_1_inst]
set_property LOC RAMB18_X8Y2 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_req_inst/bram_req_8k_inst/RAMB18E2[0].ramb18e2_inst}]
set_property LOC RAMB18_X8Y3 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_req_inst/bram_req_8k_inst/RAMB18E2[1].ramb18e2_inst}]
set_property LOC RAMB18_X8Y4 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_req_inst/bram_req_8k_inst/RAMB18E2[2].ramb18e2_inst}]
set_property LOC RAMB18_X8Y5 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_req_inst/bram_req_8k_inst/RAMB18E2[3].ramb18e2_inst}]
set_property LOC RAMB18_X8Y8 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_cpl_inst/CPL_FIFO_16KB.bram_16k_inst/RAMB18E2[0].ramb18e2_inst}]
set_property LOC RAMB18_X8Y9 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_cpl_inst/CPL_FIFO_16KB.bram_16k_inst/RAMB18E2[1].ramb18e2_inst}]
set_property LOC RAMB18_X8Y10 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_cpl_inst/CPL_FIFO_16KB.bram_16k_inst/RAMB18E2[2].ramb18e2_inst}]
set_property LOC RAMB18_X8Y11 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_cpl_inst/CPL_FIFO_16KB.bram_16k_inst/RAMB18E2[3].ramb18e2_inst}]
set_property LOC RAMB18_X8Y12 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_cpl_inst/CPL_FIFO_16KB.bram_16k_inst/RAMB18E2[4].ramb18e2_inst}]
set_property LOC RAMB18_X8Y13 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_cpl_inst/CPL_FIFO_16KB.bram_16k_inst/RAMB18E2[5].ramb18e2_inst}]
set_property LOC RAMB18_X8Y14 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_cpl_inst/CPL_FIFO_16KB.bram_16k_inst/RAMB18E2[6].ramb18e2_inst}]
set_property LOC RAMB18_X8Y15 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_cpl_inst/CPL_FIFO_16KB.bram_16k_inst/RAMB18E2[7].ramb18e2_inst}]
set_property LOC RAMB36_X8Y9 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_rep_inst/bram_rep_8k_inst/RAMB36E2[0].ramb36e2_inst}]
set_property LOC RAMB36_X8Y10 [get_cells {PcieIpWrapper/PcieIp/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/bram_inst/bram_rep_inst/bram_rep_8k_inst/RAMB36E2[1].ramb36e2_inst}]

# Restoring netlist instance
current_instance -quiet
current_instance -quiet $inchworm_netlist_instance




current_instance -quiet
current_instance $MacallanTop1

# In order to simplify constraint-writing, we want to give DmaClk a "DmaClk" name.
set DmaClkPins [get_pins -of [get_clocks -of [get_nets DmaClk]]]
create_generated_clock -name DmaClk     $DmaClkPins

set MacallanTop1 [current_instance .]
current_instance HostInterfacex/IFifox/IFifoNetlistx
## Start add from file MacallanIFifoN.xdc

###################################################################################
##
## 
##
###################################################################################
set MacallanIFifoN0 [current_instance .]
current_instance IFifoCorex
set MacallanIFifoN1 [current_instance .]
current_instance GenAxiStream[0].iFifoWrAxiStreamx/IFifoWriterx
## Start include, file IFifoWriter.xml
set BasePath DmaPortOutStrmFifox
## Start add from file DmaPortOutStrmFifo.xdc
set FlagPath "$BasePath/DmaPortOutStrmFifoFlagsx"
set DpramPath "$BasePath/DmaPortOutStrmDPRAMx"

# ------------------------------------------------------------------------------------
# Create Groups
# ------------------------------------------------------------------------------------

# IClk to OClk Pointer Crossing

# Ack
set TNM_Ptr_oAck [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/oAck*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_iAck_ms [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/iAckRcvd_ms*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_iAck [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/iAckRcvd_*" -filter {IS_SEQUENTIAL==true}]

# Toggle
set TNM_Ptr_iTog [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/iTogglePush*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_oPush_ms [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/oPushRcvd_ms*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_oPush [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/oPushRcvd*" -filter {IS_SEQUENTIAL==true}]

# Data
set TNM_Ptr_iData [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/iDataToPush*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_oData [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/DataReg/GenFlops[*].DFlopx/*" -filter {IS_SEQUENTIAL==true}]

# OClk to IClk Pointer Crossing
set TNM_Ptr_oRdGray [get_cells "$FlagPath/oReadSamplePtrUnsGray*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_iRdGray_ms       [get_cells "$FlagPath/iReadSamplePtrUnsGray_ms*"    -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_iRdGray          [get_cells "$FlagPath/iReadSamplePtrUnsGray_*"    -filter {IS_SEQUENTIAL==true}]

# Fifo Output Data Flop
set TNM_Fifo_oDataFlop     [get_cells "$DpramPath/SimpleDualPortRAM_ByteEnable/GenerateByteWideRams[*].oDataOutAry_reg*" -filter {IS_SEQUENTIAL==true}]

# ------------------------------------------------------------------------------------
# Find Clock Periods
# ------------------------------------------------------------------------------------

set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Ptr_iAck_ms]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Ptr_oAck]] ,])"]

# ------------------------------------------------------------------------------------
# Apply proper constraints
# ------------------------------------------------------------------------------------
# Ack DS, with metastable path
set_false_path -from $TNM_Ptr_oAck -to $TNM_Ptr_iAck_ms
set_max_delay -from $TNM_Ptr_iAck_ms -to $TNM_Ptr_iAck [expr 0.5 * $T_IClkMin]

# PushToggle DS, with Metastable Path
set_false_path -from $TNM_Ptr_iTog -to $TNM_Ptr_oPush_ms
set_max_delay -from $TNM_Ptr_oPush_ms -to $TNM_Ptr_oPush [expr 0.5 * $T_OClkMin]

# Path for Pointer Data cannot exceed 2x destination clocks.
set_max_delay -from $TNM_Ptr_iData -to $TNM_Ptr_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# We limit Gray clock-crossing path to 1/2 clock cycle of the *source* clock.
set_max_delay -from $TNM_Ptr_oRdGray -to $TNM_Ptr_iRdGray_ms -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay -from $TNM_Ptr_iRdGray_ms -to $TNM_Ptr_iRdGray [expr 0.5 * $T_IClkMin]

# We need to tell Vivado to ignore the asynchronous path from the RAM Write Clock (which
# is the IClk domain) to the output FF.
set_false_path -from [get_clocks -of $TNM_Ptr_iAck_ms] -to $TNM_Fifo_oDataFlop


set BasePath DisabledToDmaClk
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]





current_instance -quiet
current_instance $MacallanIFifoN1
set MacallanIFifoN1 [current_instance .]
current_instance GenAxiStream[1].iFifoWrAxiStreamx/IFifoWriterx
## Start include, file IFifoWriter.xml
set BasePath DmaPortOutStrmFifox
## Start add from file DmaPortOutStrmFifo.xdc
set FlagPath "$BasePath/DmaPortOutStrmFifoFlagsx"
set DpramPath "$BasePath/DmaPortOutStrmDPRAMx"

# ------------------------------------------------------------------------------------
# Create Groups
# ------------------------------------------------------------------------------------

# IClk to OClk Pointer Crossing

# Ack
set TNM_Ptr_oAck [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/oAck*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_iAck_ms [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/iAckRcvd_ms*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_iAck [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/iAckRcvd_*" -filter {IS_SEQUENTIAL==true}]

# Toggle
set TNM_Ptr_iTog [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/iTogglePush*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_oPush_ms [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/oPushRcvd_ms*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_oPush [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/oPushRcvd*" -filter {IS_SEQUENTIAL==true}]

# Data
set TNM_Ptr_iData [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/iDataToPush*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_oData [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/DataReg/GenFlops[*].DFlopx/*" -filter {IS_SEQUENTIAL==true}]

# OClk to IClk Pointer Crossing
set TNM_Ptr_oRdGray [get_cells "$FlagPath/oReadSamplePtrUnsGray*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_iRdGray_ms       [get_cells "$FlagPath/iReadSamplePtrUnsGray_ms*"    -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_iRdGray          [get_cells "$FlagPath/iReadSamplePtrUnsGray_*"    -filter {IS_SEQUENTIAL==true}]

# Fifo Output Data Flop
set TNM_Fifo_oDataFlop     [get_cells "$DpramPath/SimpleDualPortRAM_ByteEnable/GenerateByteWideRams[*].oDataOutAry_reg*" -filter {IS_SEQUENTIAL==true}]

# ------------------------------------------------------------------------------------
# Find Clock Periods
# ------------------------------------------------------------------------------------

set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Ptr_iAck_ms]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Ptr_oAck]] ,])"]

# ------------------------------------------------------------------------------------
# Apply proper constraints
# ------------------------------------------------------------------------------------
# Ack DS, with metastable path
set_false_path -from $TNM_Ptr_oAck -to $TNM_Ptr_iAck_ms
set_max_delay -from $TNM_Ptr_iAck_ms -to $TNM_Ptr_iAck [expr 0.5 * $T_IClkMin]

# PushToggle DS, with Metastable Path
set_false_path -from $TNM_Ptr_iTog -to $TNM_Ptr_oPush_ms
set_max_delay -from $TNM_Ptr_oPush_ms -to $TNM_Ptr_oPush [expr 0.5 * $T_OClkMin]

# Path for Pointer Data cannot exceed 2x destination clocks.
set_max_delay -from $TNM_Ptr_iData -to $TNM_Ptr_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# We limit Gray clock-crossing path to 1/2 clock cycle of the *source* clock.
set_max_delay -from $TNM_Ptr_oRdGray -to $TNM_Ptr_iRdGray_ms -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay -from $TNM_Ptr_iRdGray_ms -to $TNM_Ptr_iRdGray [expr 0.5 * $T_IClkMin]

# We need to tell Vivado to ignore the asynchronous path from the RAM Write Clock (which
# is the IClk domain) to the output FF.
set_false_path -from [get_clocks -of $TNM_Ptr_iAck_ms] -to $TNM_Fifo_oDataFlop


set BasePath DisabledToDmaClk
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]





current_instance -quiet
current_instance $MacallanIFifoN1
set MacallanIFifoN1 [current_instance .]
current_instance GenLvFpga[2].iFifoWrLvfpgax/IFifoWriterx
## Start include, file IFifoWriter.xml
set BasePath DmaPortOutStrmFifox
## Start add from file DmaPortOutStrmFifo.xdc
set FlagPath "$BasePath/DmaPortOutStrmFifoFlagsx"
set DpramPath "$BasePath/DmaPortOutStrmDPRAMx"

# ------------------------------------------------------------------------------------
# Create Groups
# ------------------------------------------------------------------------------------

# IClk to OClk Pointer Crossing

# Ack
set TNM_Ptr_oAck [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/oAck*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_iAck_ms [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/iAckRcvd_ms*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_iAck [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/iAckRcvd_*" -filter {IS_SEQUENTIAL==true}]

# Toggle
set TNM_Ptr_iTog [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/iTogglePush*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_oPush_ms [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/oPushRcvd_ms*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_oPush [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/oPushRcvd*" -filter {IS_SEQUENTIAL==true}]

# Data
set TNM_Ptr_iData [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/iDataToPush*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_oData [get_cells "$FlagPath/IClkToOClkCrossing.SyncToOClk/DataReg/GenFlops[*].DFlopx/*" -filter {IS_SEQUENTIAL==true}]

# OClk to IClk Pointer Crossing
set TNM_Ptr_oRdGray [get_cells "$FlagPath/oReadSamplePtrUnsGray*" -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_iRdGray_ms       [get_cells "$FlagPath/iReadSamplePtrUnsGray_ms*"    -filter {IS_SEQUENTIAL==true}]
set TNM_Ptr_iRdGray          [get_cells "$FlagPath/iReadSamplePtrUnsGray_*"    -filter {IS_SEQUENTIAL==true}]

# Fifo Output Data Flop
set TNM_Fifo_oDataFlop     [get_cells "$DpramPath/SimpleDualPortRAM_ByteEnable/GenerateByteWideRams[*].oDataOutAry_reg*" -filter {IS_SEQUENTIAL==true}]

# ------------------------------------------------------------------------------------
# Find Clock Periods
# ------------------------------------------------------------------------------------

set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Ptr_iAck_ms]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Ptr_oAck]] ,])"]

# ------------------------------------------------------------------------------------
# Apply proper constraints
# ------------------------------------------------------------------------------------
# Ack DS, with metastable path
set_false_path -from $TNM_Ptr_oAck -to $TNM_Ptr_iAck_ms
set_max_delay -from $TNM_Ptr_iAck_ms -to $TNM_Ptr_iAck [expr 0.5 * $T_IClkMin]

# PushToggle DS, with Metastable Path
set_false_path -from $TNM_Ptr_iTog -to $TNM_Ptr_oPush_ms
set_max_delay -from $TNM_Ptr_oPush_ms -to $TNM_Ptr_oPush [expr 0.5 * $T_OClkMin]

# Path for Pointer Data cannot exceed 2x destination clocks.
set_max_delay -from $TNM_Ptr_iData -to $TNM_Ptr_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# We limit Gray clock-crossing path to 1/2 clock cycle of the *source* clock.
set_max_delay -from $TNM_Ptr_oRdGray -to $TNM_Ptr_iRdGray_ms -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay -from $TNM_Ptr_iRdGray_ms -to $TNM_Ptr_iRdGray [expr 0.5 * $T_IClkMin]

# We need to tell Vivado to ignore the asynchronous path from the RAM Write Clock (which
# is the IClk domain) to the output FF.
set_false_path -from [get_clocks -of $TNM_Ptr_iAck_ms] -to $TNM_Fifo_oDataFlop


set BasePath DisabledToDmaClk
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]





current_instance -quiet
current_instance $MacallanIFifoN1
set MacallanIFifoN1 [current_instance .]
current_instance GenAxiStream[0].iFifoRdAxiStreamx/GenerateHs.IFifoReaderHsx
## Start include, file IFifoReaderHs.xml
set BasePath HandshakeBaseResetCrossx
## Start add from file HandshakeBaseResetCross.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseResetCross
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseResetCrossPath $BasePath

#First create the groups that will be needed later in the -from/to constraints
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/BlkOut.oDataFlopx/*/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iTog    [get_cells "$BasePath/BlkIn.iPushTogglex/*/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/BlkOut.oPushToggle0_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"          -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
# Unique to HSBaseResetCross
set TNM_IR_c1ResetFast [get_cells "$BasePath/BlkOut.SyncIReset/c1ResetFastLclx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_IR_c2Reset_ms  [get_cells "$BasePath/BlkOut.SyncIReset/c2Reset_msx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_IR_c2Reset     [get_cells "$BasePath/BlkOut.SyncIReset/c2ResetLclx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_IR_c1Reset_ms  [get_cells "$BasePath/BlkOut.SyncIReset/c1ResetFromClk2_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_IR_c1Reset     [get_cells "$BasePath/BlkOut.SyncIReset/c1ResetFromClk2x/*" -filter {IS_SEQUENTIAL==true}]

set TNM_OR_c1ResetFast [get_cells "$BasePath/BlkOut.SyncOReset/c1ResetFastLclx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_OR_c2Reset_ms  [get_cells "$BasePath/BlkOut.SyncOReset/c2Reset_msx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_OR_c2Reset     [get_cells "$BasePath/BlkOut.SyncOReset/c2ResetLclx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_OR_c1Reset_ms  [get_cells "$BasePath/BlkOut.SyncOReset/c1ResetFromClk2_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_OR_c1Reset     [get_cells "$BasePath/BlkOut.SyncOReset/c1ResetFromClk2x/*" -filter {IS_SEQUENTIAL==true}]

#Second, find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]
#Third, create constraints that are a function of those clocks

# ------------------------------------------------------------------------------------
# "Regular" Handshake Crossings
# ------------------------------------------------------------------------------------
# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay -from $TNM_HS_iData       -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Make the Toggle be 1 Output clock cycle to make sure it propagates fast.
set_max_delay -from $TNM_HS_iTog        -to $TNM_HS_oTog_ms -datapath_only [expr 1 * $T_OClkMin]
set_max_delay -from $TNM_HS_oTog_ms     -to $TNM_HS_oTog [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy       -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms    -to $TNM_HS_iRdy [expr 0.5 * $T_IClkMin]

# ------------------------------------------------------------------------------------
# Reset Crossing Handshake - SyncIReset
# ------------------------------------------------------------------------------------

# Set the maximum delay on the iIResetFast net to be less than 2 IClk periods. Since the
# path we are trying to constrain is from Q of iIResetFast to the async reset pin of
# iPushToggle we don't use "datapath_only".
set_max_delay -from $TNM_IR_c1ResetFast -to $TNM_HS_iTog [expr 2 * $T_IClkMin]

# Constrain the path from iIResetFast to oIReset_ms to ensure oIReset will not arrive too
# late to clear bad toggles.
set_max_delay -from $TNM_IR_c1ResetFast -to $TNM_IR_c2Reset_ms -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay -from $TNM_IR_c2Reset_ms  -to $TNM_IR_c2Reset  [expr 0.5 * $T_OClkMin]

# And the return reset from c2 to c1 needs to come in under 1 cycle.
set_max_delay -from $TNM_IR_c2Reset -to $TNM_IR_c1Reset_ms -datapath_only [expr 1 * $T_IClkMin]
set_max_delay -from $TNM_IR_c1Reset_ms  -to $TNM_IR_c1Reset  [expr 0.5 * $T_IClkMin]

# ------------------------------------------------------------------------------------
# Reset Crossing Handshake - SyncOReset
# ------------------------------------------------------------------------------------
# Sync O Reset doesn't have the same stringent timing needs that SyncIReset does. It's
# sufficient for the metastable paths to be well constrained, but all clock crossings can
# be false paths. Note that the clock periods are inverted relative to the above since
# SyncOReset "faces" in the opposite direction.

set_false_path -from $TNM_OR_c1ResetFast -to $TNM_OR_c2Reset_ms
set_max_delay -from $TNM_OR_c2Reset_ms -to $TNM_OR_c2Reset [expr 0.5 * $T_IClkMin]

set_false_path -from $TNM_OR_c2Reset -to $TNM_OR_c1Reset_ms
set_max_delay -from $TNM_OR_c1Reset_ms -to $TNM_OR_c1Reset [expr 0.5 * $T_OClkMin]


set MacallanIFifoN3 [current_instance .]
current_instance ReadDisablerx
set BasePath DisableToUserClk
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath DisabledToDmaClk
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]



current_instance -quiet
current_instance $MacallanIFifoN3



current_instance -quiet
current_instance $MacallanIFifoN1
set MacallanIFifoN1 [current_instance .]
current_instance GenAxiStream[1].iFifoRdAxiStreamx/GenerateHs.IFifoReaderHsx
## Start include, file IFifoReaderHs.xml
set BasePath HandshakeBaseResetCrossx
## Start add from file HandshakeBaseResetCross.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseResetCross
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseResetCrossPath $BasePath

#First create the groups that will be needed later in the -from/to constraints
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/BlkOut.oDataFlopx/*/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iTog    [get_cells "$BasePath/BlkIn.iPushTogglex/*/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/BlkOut.oPushToggle0_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"          -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
# Unique to HSBaseResetCross
set TNM_IR_c1ResetFast [get_cells "$BasePath/BlkOut.SyncIReset/c1ResetFastLclx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_IR_c2Reset_ms  [get_cells "$BasePath/BlkOut.SyncIReset/c2Reset_msx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_IR_c2Reset     [get_cells "$BasePath/BlkOut.SyncIReset/c2ResetLclx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_IR_c1Reset_ms  [get_cells "$BasePath/BlkOut.SyncIReset/c1ResetFromClk2_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_IR_c1Reset     [get_cells "$BasePath/BlkOut.SyncIReset/c1ResetFromClk2x/*" -filter {IS_SEQUENTIAL==true}]

set TNM_OR_c1ResetFast [get_cells "$BasePath/BlkOut.SyncOReset/c1ResetFastLclx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_OR_c2Reset_ms  [get_cells "$BasePath/BlkOut.SyncOReset/c2Reset_msx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_OR_c2Reset     [get_cells "$BasePath/BlkOut.SyncOReset/c2ResetLclx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_OR_c1Reset_ms  [get_cells "$BasePath/BlkOut.SyncOReset/c1ResetFromClk2_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_OR_c1Reset     [get_cells "$BasePath/BlkOut.SyncOReset/c1ResetFromClk2x/*" -filter {IS_SEQUENTIAL==true}]

#Second, find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]
#Third, create constraints that are a function of those clocks

# ------------------------------------------------------------------------------------
# "Regular" Handshake Crossings
# ------------------------------------------------------------------------------------
# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay -from $TNM_HS_iData       -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Make the Toggle be 1 Output clock cycle to make sure it propagates fast.
set_max_delay -from $TNM_HS_iTog        -to $TNM_HS_oTog_ms -datapath_only [expr 1 * $T_OClkMin]
set_max_delay -from $TNM_HS_oTog_ms     -to $TNM_HS_oTog [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy       -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms    -to $TNM_HS_iRdy [expr 0.5 * $T_IClkMin]

# ------------------------------------------------------------------------------------
# Reset Crossing Handshake - SyncIReset
# ------------------------------------------------------------------------------------

# Set the maximum delay on the iIResetFast net to be less than 2 IClk periods. Since the
# path we are trying to constrain is from Q of iIResetFast to the async reset pin of
# iPushToggle we don't use "datapath_only".
set_max_delay -from $TNM_IR_c1ResetFast -to $TNM_HS_iTog [expr 2 * $T_IClkMin]

# Constrain the path from iIResetFast to oIReset_ms to ensure oIReset will not arrive too
# late to clear bad toggles.
set_max_delay -from $TNM_IR_c1ResetFast -to $TNM_IR_c2Reset_ms -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay -from $TNM_IR_c2Reset_ms  -to $TNM_IR_c2Reset  [expr 0.5 * $T_OClkMin]

# And the return reset from c2 to c1 needs to come in under 1 cycle.
set_max_delay -from $TNM_IR_c2Reset -to $TNM_IR_c1Reset_ms -datapath_only [expr 1 * $T_IClkMin]
set_max_delay -from $TNM_IR_c1Reset_ms  -to $TNM_IR_c1Reset  [expr 0.5 * $T_IClkMin]

# ------------------------------------------------------------------------------------
# Reset Crossing Handshake - SyncOReset
# ------------------------------------------------------------------------------------
# Sync O Reset doesn't have the same stringent timing needs that SyncIReset does. It's
# sufficient for the metastable paths to be well constrained, but all clock crossings can
# be false paths. Note that the clock periods are inverted relative to the above since
# SyncOReset "faces" in the opposite direction.

set_false_path -from $TNM_OR_c1ResetFast -to $TNM_OR_c2Reset_ms
set_max_delay -from $TNM_OR_c2Reset_ms -to $TNM_OR_c2Reset [expr 0.5 * $T_IClkMin]

set_false_path -from $TNM_OR_c2Reset -to $TNM_OR_c1Reset_ms
set_max_delay -from $TNM_OR_c1Reset_ms -to $TNM_OR_c1Reset [expr 0.5 * $T_OClkMin]


set MacallanIFifoN3 [current_instance .]
current_instance ReadDisablerx
set BasePath DisableToUserClk
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath DisabledToDmaClk
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]



current_instance -quiet
current_instance $MacallanIFifoN3



current_instance -quiet
current_instance $MacallanIFifoN1
set MacallanIFifoN1 [current_instance .]
current_instance GenLvFpga[2].iFifoRdLvFpgax/GenerateHs.IFifoReaderHsx
## Start include, file IFifoReaderHs.xml
set BasePath HandshakeBaseResetCrossx
## Start add from file HandshakeBaseResetCross.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseResetCross
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseResetCrossPath $BasePath

#First create the groups that will be needed later in the -from/to constraints
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/BlkOut.oDataFlopx/*/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iTog    [get_cells "$BasePath/BlkIn.iPushTogglex/*/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/BlkOut.oPushToggle0_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"          -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
# Unique to HSBaseResetCross
set TNM_IR_c1ResetFast [get_cells "$BasePath/BlkOut.SyncIReset/c1ResetFastLclx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_IR_c2Reset_ms  [get_cells "$BasePath/BlkOut.SyncIReset/c2Reset_msx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_IR_c2Reset     [get_cells "$BasePath/BlkOut.SyncIReset/c2ResetLclx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_IR_c1Reset_ms  [get_cells "$BasePath/BlkOut.SyncIReset/c1ResetFromClk2_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_IR_c1Reset     [get_cells "$BasePath/BlkOut.SyncIReset/c1ResetFromClk2x/*" -filter {IS_SEQUENTIAL==true}]

set TNM_OR_c1ResetFast [get_cells "$BasePath/BlkOut.SyncOReset/c1ResetFastLclx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_OR_c2Reset_ms  [get_cells "$BasePath/BlkOut.SyncOReset/c2Reset_msx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_OR_c2Reset     [get_cells "$BasePath/BlkOut.SyncOReset/c2ResetLclx/*"     -filter {IS_SEQUENTIAL==true}]
set TNM_OR_c1Reset_ms  [get_cells "$BasePath/BlkOut.SyncOReset/c1ResetFromClk2_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_OR_c1Reset     [get_cells "$BasePath/BlkOut.SyncOReset/c1ResetFromClk2x/*" -filter {IS_SEQUENTIAL==true}]

#Second, find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]
#Third, create constraints that are a function of those clocks

# ------------------------------------------------------------------------------------
# "Regular" Handshake Crossings
# ------------------------------------------------------------------------------------
# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay -from $TNM_HS_iData       -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Make the Toggle be 1 Output clock cycle to make sure it propagates fast.
set_max_delay -from $TNM_HS_iTog        -to $TNM_HS_oTog_ms -datapath_only [expr 1 * $T_OClkMin]
set_max_delay -from $TNM_HS_oTog_ms     -to $TNM_HS_oTog [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy       -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms    -to $TNM_HS_iRdy [expr 0.5 * $T_IClkMin]

# ------------------------------------------------------------------------------------
# Reset Crossing Handshake - SyncIReset
# ------------------------------------------------------------------------------------

# Set the maximum delay on the iIResetFast net to be less than 2 IClk periods. Since the
# path we are trying to constrain is from Q of iIResetFast to the async reset pin of
# iPushToggle we don't use "datapath_only".
set_max_delay -from $TNM_IR_c1ResetFast -to $TNM_HS_iTog [expr 2 * $T_IClkMin]

# Constrain the path from iIResetFast to oIReset_ms to ensure oIReset will not arrive too
# late to clear bad toggles.
set_max_delay -from $TNM_IR_c1ResetFast -to $TNM_IR_c2Reset_ms -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay -from $TNM_IR_c2Reset_ms  -to $TNM_IR_c2Reset  [expr 0.5 * $T_OClkMin]

# And the return reset from c2 to c1 needs to come in under 1 cycle.
set_max_delay -from $TNM_IR_c2Reset -to $TNM_IR_c1Reset_ms -datapath_only [expr 1 * $T_IClkMin]
set_max_delay -from $TNM_IR_c1Reset_ms  -to $TNM_IR_c1Reset  [expr 0.5 * $T_IClkMin]

# ------------------------------------------------------------------------------------
# Reset Crossing Handshake - SyncOReset
# ------------------------------------------------------------------------------------
# Sync O Reset doesn't have the same stringent timing needs that SyncIReset does. It's
# sufficient for the metastable paths to be well constrained, but all clock crossings can
# be false paths. Note that the clock periods are inverted relative to the above since
# SyncOReset "faces" in the opposite direction.

set_false_path -from $TNM_OR_c1ResetFast -to $TNM_OR_c2Reset_ms
set_max_delay -from $TNM_OR_c2Reset_ms -to $TNM_OR_c2Reset [expr 0.5 * $T_IClkMin]

set_false_path -from $TNM_OR_c2Reset -to $TNM_OR_c1Reset_ms
set_max_delay -from $TNM_OR_c1Reset_ms -to $TNM_OR_c1Reset [expr 0.5 * $T_OClkMin]


set MacallanIFifoN3 [current_instance .]
current_instance ReadDisablerx
set BasePath DisableToUserClk
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath DisabledToDmaClk
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]



current_instance -quiet
current_instance $MacallanIFifoN3



current_instance -quiet
current_instance $MacallanIFifoN1
set MacallanIFifoN1 [current_instance .]
current_instance GenResets[0].iFifoSyncResetMgrx
## Start include, file iFifoSyncResetMgr.xml
set BasePath ToUserClkDS
## Start include, file DoubleSyncBoolRSD.xml
set DoubleSyncBoolRsdPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncBoolRsdPath


set BasePath ToDmaClkDS
## Start include, file DoubleSyncBoolRSD.xml
set DoubleSyncBoolRsdPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncBoolRsdPath


set BasePath ToDmaClkToggling
## Start include, file DoubleSyncBoolRSD.xml
set DoubleSyncBoolRsdPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncBoolRsdPath





current_instance -quiet
current_instance $MacallanIFifoN1
set MacallanIFifoN1 [current_instance .]
current_instance GenResets[1].iFifoSyncResetMgrx
## Start include, file iFifoSyncResetMgr.xml
set BasePath ToUserClkDS
## Start include, file DoubleSyncBoolRSD.xml
set DoubleSyncBoolRsdPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncBoolRsdPath


set BasePath ToDmaClkDS
## Start include, file DoubleSyncBoolRSD.xml
set DoubleSyncBoolRsdPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncBoolRsdPath


set BasePath ToDmaClkToggling
## Start include, file DoubleSyncBoolRSD.xml
set DoubleSyncBoolRsdPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncBoolRsdPath





current_instance -quiet
current_instance $MacallanIFifoN1
set MacallanIFifoN1 [current_instance .]
current_instance GenResets[2].iFifoSyncResetMgrx
## Start include, file iFifoSyncResetMgr.xml
set BasePath ToUserClkDS
## Start include, file DoubleSyncBoolRSD.xml
set DoubleSyncBoolRsdPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncBoolRsdPath


set BasePath ToDmaClkDS
## Start include, file DoubleSyncBoolRSD.xml
set DoubleSyncBoolRsdPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncBoolRsdPath


set BasePath ToDmaClkToggling
## Start include, file DoubleSyncBoolRSD.xml
set DoubleSyncBoolRsdPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncBoolRsdPath





current_instance -quiet
current_instance $MacallanIFifoN1

current_instance -quiet
current_instance $MacallanIFifoN0

# RSD Reset
set_false_path -from [get_cells RsdBusClk/acReset_reg] -to [get_clocks -of [get_nets DmaClk]]





current_instance -quiet
current_instance $MacallanTop1


## Start include, file cfmakemacallan_common.xml
set MacallanTop1 [current_instance .]
current_instance HostInterfacex/IwCompanionx/IwCompanionNx
## Start add from file IwCompanionIsoPort.xdc

###################################################################################
##
## 
##
###################################################################################
## Start include, file cfmakesettings.xml
set BasePath DmaClockRSD
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set BasePath BusClkRSD
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set BasePath LV_RegPortClockCrossing
## Start include, file BaRegPortClockCrossing.xml
set BaRegPortClockCrossingPath $BasePath
set BasePath $BaRegPortClockCrossingPath/RequestHandshake
## Start include, file HandshakeSLV_RSD.xml
set HandshakeSlvRsdPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBaseRSD.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseRSD
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseRsdPath $BasePath

# Data
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"      -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/*oDataFlopx/*/*"        -filter {IS_SEQUENTIAL==true}]
# Toggle
set TNM_HS_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/*oPushToggle0_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
# Ready
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]

# Find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]

# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay  -from $TNM_HS_iData   -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Toggle
set_false_path -from $TNM_HS_iTog    -to $TNM_HS_oTog_ms
set_max_delay  -from $TNM_HS_oTog_ms -to $TNM_HS_oTog -datapath_only [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy    -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms -to $TNM_HS_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvRsdPath


set BasePath $BaRegPortClockCrossingPath/ResponseHandshake
## Start include, file HandshakeSLV_RSD.xml
set HandshakeSlvRsdPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBaseRSD.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseRSD
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseRsdPath $BasePath

# Data
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"      -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/*oDataFlopx/*/*"        -filter {IS_SEQUENTIAL==true}]
# Toggle
set TNM_HS_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/*oPushToggle0_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
# Ready
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]

# Find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]

# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay  -from $TNM_HS_iData   -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Toggle
set_false_path -from $TNM_HS_iTog    -to $TNM_HS_oTog_ms
set_max_delay  -from $TNM_HS_oTog_ms -to $TNM_HS_oTog -datapath_only [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy    -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms -to $TNM_HS_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvRsdPath


set BasePath $BaRegPortClockCrossingPath


set IwCompanionIsoPort1 [current_instance .]
current_instance FakeConfigPortx
## Start include, file FakeConfigPort.xml
set BasePath GaDs[*].GaDsBit
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath





current_instance -quiet
current_instance $IwCompanionIsoPort1


set IwCompanionIsoPort0 [current_instance .]
current_instance IsoPortx
## Start include, file cfmakesettings.xml

# Incoming IsoClock from CICADA. We'll configure this to be 10-ish MHz
create_clock -name IsoPortRxClk -period 100.0 -waveform {0.0 50.0} [get_ports IsoPortRxClk]

set TxClkCell IsolationPortTopx/IsoPortTxSerializerx/TxClkOut_reg
set TxClkSource [get_pins -of [get_cells $TxClkCell] -filter {REF_PIN_NAME==C}]
set TxClkPin [get_pins -of [get_cells $TxClkCell] -filter {REF_PIN_NAME==C}]

# Configure (internal) IsoTxClk as a by-10 division (2 setup states, 3 hold states) of
# the incoming (Bus) Clock.
create_generated_clock -name IsoTxClk \
-source $TxClkSource \
-divide_by 10 \
$TxClkPin

set BasePath RsdBusClk
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set IwCompanionIsoPort2 [current_instance .]
current_instance IsolationPortTopx/IsolationPortx/IsolationPortBasex
set IwCompanionIsoPort3 [current_instance .]
current_instance IsoPortCorex/IsoPortConfigurationx
set BasePath TxDataModeHS
## Start include, file HandshakeSLV.xml
set HandshakeSlvPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBase.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBasePath $BasePath

#First create the groups that will be needed later in the -from/to constraints
set TNM_Handshake_iData   [get_cells "$BasePath/BlkIn.iLclStoredData*"      -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oData   [get_cells "$BasePath/BlkOut.ODataFlop/*/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog_ms [get_cells "$BasePath/*oPushToggle_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oRdy    [get_cells "$BasePath/BlkOut.oPushToggleToReady*" -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy_ms [get_cells "$BasePath/BlkRdy.iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog    [get_cells "$BasePath/BlkOut.oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy    [get_cells "$BasePath/BlkRdy.iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]
#Second, find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_oData]] ,])"]
#Third, create constraints that are a function of those clocks
set_max_delay  -from $TNM_Handshake_iData   -to $TNM_Handshake_oData -datapath_only [expr 2 * $T_OClkMin - 1]
set_false_path -from $TNM_Handshake_iTog    -to $TNM_Handshake_oTog_ms
set_false_path -from $TNM_Handshake_oRdy    -to $TNM_Handshake_iRdy_ms
set_max_delay  -from $TNM_Handshake_oTog_ms -to $TNM_Handshake_oTog -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay  -from $TNM_Handshake_iRdy_ms -to $TNM_Handshake_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvPath


set BasePath RxDataModeHS
## Start include, file HandshakeSLV.xml
set HandshakeSlvPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBase.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBasePath $BasePath

#First create the groups that will be needed later in the -from/to constraints
set TNM_Handshake_iData   [get_cells "$BasePath/BlkIn.iLclStoredData*"      -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oData   [get_cells "$BasePath/BlkOut.ODataFlop/*/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog_ms [get_cells "$BasePath/*oPushToggle_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oRdy    [get_cells "$BasePath/BlkOut.oPushToggleToReady*" -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy_ms [get_cells "$BasePath/BlkRdy.iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog    [get_cells "$BasePath/BlkOut.oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy    [get_cells "$BasePath/BlkRdy.iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]
#Second, find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_oData]] ,])"]
#Third, create constraints that are a function of those clocks
set_max_delay  -from $TNM_Handshake_iData   -to $TNM_Handshake_oData -datapath_only [expr 2 * $T_OClkMin - 1]
set_false_path -from $TNM_Handshake_iTog    -to $TNM_Handshake_oTog_ms
set_false_path -from $TNM_Handshake_oRdy    -to $TNM_Handshake_iRdy_ms
set_max_delay  -from $TNM_Handshake_oTog_ms -to $TNM_Handshake_oTog -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay  -from $TNM_Handshake_iRdy_ms -to $TNM_Handshake_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvPath



current_instance -quiet
current_instance $IwCompanionIsoPort3
set IwCompanionIsoPort3 [current_instance .]
current_instance IoTransmitFifox
set BasePath TransmitFifo.PacketFullyReceived
## Start add from file CountCrossingInput.xdc
# First identify the relevant paths

set TNM_iInGray [get_cells $BasePath/ieInputCountGrayx/*/* -filter {IS_SEQUENTIAL==true}]
set TNM_oInGray_ms [get_cells $BasePath/oInputCountGray_msx/*/* -filter {IS_SEQUENTIAL==true}]
set TNM_oInGray [get_cells $BasePath/oInputCountGrayx/*/* -filter {IS_SEQUENTIAL==true}]

# Then identify the clock periods involved
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_iInGray]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_oInGray_ms]] ,])"]

# Constrain the clock-crossing path and metastable path.
set_max_delay -from $TNM_iInGray     -to $TNM_oInGray_ms -datapath_only [expr   1 * $T_OClkMin]
set_max_delay -from $TNM_oInGray_ms  -to $TNM_oInGray    -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath TransmitFifo.InputFifo.FifoFlags
## Start add from file CountCrossingInput.xdc
# First identify the relevant paths

set TNM_iInGray [get_cells $BasePath/ieInputCountGrayx/*/* -filter {IS_SEQUENTIAL==true}]
set TNM_oInGray_ms [get_cells $BasePath/oInputCountGray_msx/*/* -filter {IS_SEQUENTIAL==true}]
set TNM_oInGray [get_cells $BasePath/oInputCountGrayx/*/* -filter {IS_SEQUENTIAL==true}]

# Then identify the clock periods involved
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_iInGray]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_oInGray_ms]] ,])"]

# Constrain the clock-crossing path and metastable path.
set_max_delay -from $TNM_iInGray     -to $TNM_oInGray_ms -datapath_only [expr   1 * $T_OClkMin]
set_max_delay -from $TNM_oInGray_ms  -to $TNM_oInGray    -datapath_only [expr 0.5 * $T_OClkMin]


## Start add from file CountCrossingOutput.xdc
# First identify the relevant paths

set TNM_oOutGray [get_cells $BasePath/oeOutputCountGrayx/*/* -filter {IS_SEQUENTIAL==true}]
set TNM_iOutGray_ms [get_cells $BasePath/iOutputCountGray_msx/*/* -filter {IS_SEQUENTIAL==true}]
set TNM_iOutGray [get_cells $BasePath/iOutputCountGrayx/*/* -filter {IS_SEQUENTIAL==true}]

# Then identify the clock periods involved
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_iOutGray_ms]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_oOutGray]] ,])"]

# Constrain the clock-crossing path and metastable path.
set_max_delay -from $TNM_oOutGray     -to $TNM_iOutGray_ms -datapath_only [expr   1 * $T_IClkMin]
set_max_delay -from $TNM_iOutGray_ms  -to $TNM_iOutGray    -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath CreditManager.HandshakeCredits
## Start include, file HandshakeUnsigned.xml
set HandshakeUnsignedPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBase.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBasePath $BasePath

#First create the groups that will be needed later in the -from/to constraints
set TNM_Handshake_iData   [get_cells "$BasePath/BlkIn.iLclStoredData*"      -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oData   [get_cells "$BasePath/BlkOut.ODataFlop/*/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog_ms [get_cells "$BasePath/*oPushToggle_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oRdy    [get_cells "$BasePath/BlkOut.oPushToggleToReady*" -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy_ms [get_cells "$BasePath/BlkRdy.iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog    [get_cells "$BasePath/BlkOut.oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy    [get_cells "$BasePath/BlkRdy.iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]
#Second, find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_oData]] ,])"]
#Third, create constraints that are a function of those clocks
set_max_delay  -from $TNM_Handshake_iData   -to $TNM_Handshake_oData -datapath_only [expr 2 * $T_OClkMin - 1]
set_false_path -from $TNM_Handshake_iTog    -to $TNM_Handshake_oTog_ms
set_false_path -from $TNM_Handshake_oRdy    -to $TNM_Handshake_iRdy_ms
set_max_delay  -from $TNM_Handshake_oTog_ms -to $TNM_Handshake_oTog -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay  -from $TNM_Handshake_iRdy_ms -to $TNM_Handshake_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeUnsignedPath



current_instance -quiet
current_instance $IwCompanionIsoPort3
set IwCompanionIsoPort3 [current_instance .]
current_instance IoReceiveFifoBasex
set BasePath FifoFlags
## Start add from file CountCrossingInput.xdc
# First identify the relevant paths

set TNM_iInGray [get_cells $BasePath/ieInputCountGrayx/*/* -filter {IS_SEQUENTIAL==true}]
set TNM_oInGray_ms [get_cells $BasePath/oInputCountGray_msx/*/* -filter {IS_SEQUENTIAL==true}]
set TNM_oInGray [get_cells $BasePath/oInputCountGrayx/*/* -filter {IS_SEQUENTIAL==true}]

# Then identify the clock periods involved
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_iInGray]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_oInGray_ms]] ,])"]

# Constrain the clock-crossing path and metastable path.
set_max_delay -from $TNM_iInGray     -to $TNM_oInGray_ms -datapath_only [expr   1 * $T_OClkMin]
set_max_delay -from $TNM_oInGray_ms  -to $TNM_oInGray    -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath PacketFullyReceived
## Start add from file CountCrossingInput.xdc
# First identify the relevant paths

set TNM_iInGray [get_cells $BasePath/ieInputCountGrayx/*/* -filter {IS_SEQUENTIAL==true}]
set TNM_oInGray_ms [get_cells $BasePath/oInputCountGray_msx/*/* -filter {IS_SEQUENTIAL==true}]
set TNM_oInGray [get_cells $BasePath/oInputCountGrayx/*/* -filter {IS_SEQUENTIAL==true}]

# Then identify the clock periods involved
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_iInGray]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_oInGray_ms]] ,])"]

# Constrain the clock-crossing path and metastable path.
set_max_delay -from $TNM_iInGray     -to $TNM_oInGray_ms -datapath_only [expr   1 * $T_OClkMin]
set_max_delay -from $TNM_oInGray_ms  -to $TNM_oInGray    -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath CreditManager.HandshakeBlock.HandshakeCredits
## Start include, file HandshakeUnsigned.xml
set HandshakeUnsignedPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBase.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBasePath $BasePath

#First create the groups that will be needed later in the -from/to constraints
set TNM_Handshake_iData   [get_cells "$BasePath/BlkIn.iLclStoredData*"      -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oData   [get_cells "$BasePath/BlkOut.ODataFlop/*/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog_ms [get_cells "$BasePath/*oPushToggle_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oRdy    [get_cells "$BasePath/BlkOut.oPushToggleToReady*" -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy_ms [get_cells "$BasePath/BlkRdy.iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog    [get_cells "$BasePath/BlkOut.oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy    [get_cells "$BasePath/BlkRdy.iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]
#Second, find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_oData]] ,])"]
#Third, create constraints that are a function of those clocks
set_max_delay  -from $TNM_Handshake_iData   -to $TNM_Handshake_oData -datapath_only [expr 2 * $T_OClkMin - 1]
set_false_path -from $TNM_Handshake_iTog    -to $TNM_Handshake_oTog_ms
set_false_path -from $TNM_Handshake_oRdy    -to $TNM_Handshake_iRdy_ms
set_max_delay  -from $TNM_Handshake_oTog_ms -to $TNM_Handshake_oTog -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay  -from $TNM_Handshake_iRdy_ms -to $TNM_Handshake_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeUnsignedPath



current_instance -quiet
current_instance $IwCompanionIsoPort3
set BasePath ConfigurationRegs.RxDataDlyHSBack
## Start include, file HandshakeUnsigned.xml
set HandshakeUnsignedPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBase.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBasePath $BasePath

#First create the groups that will be needed later in the -from/to constraints
set TNM_Handshake_iData   [get_cells "$BasePath/BlkIn.iLclStoredData*"      -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oData   [get_cells "$BasePath/BlkOut.ODataFlop/*/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog_ms [get_cells "$BasePath/*oPushToggle_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oRdy    [get_cells "$BasePath/BlkOut.oPushToggleToReady*" -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy_ms [get_cells "$BasePath/BlkRdy.iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog    [get_cells "$BasePath/BlkOut.oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy    [get_cells "$BasePath/BlkRdy.iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]
#Second, find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_oData]] ,])"]
#Third, create constraints that are a function of those clocks
set_max_delay  -from $TNM_Handshake_iData   -to $TNM_Handshake_oData -datapath_only [expr 2 * $T_OClkMin - 1]
set_false_path -from $TNM_Handshake_iTog    -to $TNM_Handshake_oTog_ms
set_false_path -from $TNM_Handshake_oRdy    -to $TNM_Handshake_iRdy_ms
set_max_delay  -from $TNM_Handshake_oTog_ms -to $TNM_Handshake_oTog -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay  -from $TNM_Handshake_iRdy_ms -to $TNM_Handshake_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeUnsignedPath


set BasePath ConfigurationRegs.TxHSBack
## Start include, file HandshakeUnsigned.xml
set HandshakeUnsignedPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBase.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBasePath $BasePath

#First create the groups that will be needed later in the -from/to constraints
set TNM_Handshake_iData   [get_cells "$BasePath/BlkIn.iLclStoredData*"      -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oData   [get_cells "$BasePath/BlkOut.ODataFlop/*/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog_ms [get_cells "$BasePath/*oPushToggle_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oRdy    [get_cells "$BasePath/BlkOut.oPushToggleToReady*" -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy_ms [get_cells "$BasePath/BlkRdy.iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog    [get_cells "$BasePath/BlkOut.oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy    [get_cells "$BasePath/BlkRdy.iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]
#Second, find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_oData]] ,])"]
#Third, create constraints that are a function of those clocks
set_max_delay  -from $TNM_Handshake_iData   -to $TNM_Handshake_oData -datapath_only [expr 2 * $T_OClkMin - 1]
set_false_path -from $TNM_Handshake_iTog    -to $TNM_Handshake_oTog_ms
set_false_path -from $TNM_Handshake_oRdy    -to $TNM_Handshake_iRdy_ms
set_max_delay  -from $TNM_Handshake_oTog_ms -to $TNM_Handshake_oTog -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay  -from $TNM_Handshake_iRdy_ms -to $TNM_Handshake_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeUnsignedPath


set BasePath IsoPortSettingsToRxClk
## Start include, file HandshakeSLV.xml
set HandshakeSlvPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBase.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBasePath $BasePath

#First create the groups that will be needed later in the -from/to constraints
set TNM_Handshake_iData   [get_cells "$BasePath/BlkIn.iLclStoredData*"      -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oData   [get_cells "$BasePath/BlkOut.ODataFlop/*/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog_ms [get_cells "$BasePath/*oPushToggle_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oRdy    [get_cells "$BasePath/BlkOut.oPushToggleToReady*" -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy_ms [get_cells "$BasePath/BlkRdy.iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog    [get_cells "$BasePath/BlkOut.oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy    [get_cells "$BasePath/BlkRdy.iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]
#Second, find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_oData]] ,])"]
#Third, create constraints that are a function of those clocks
set_max_delay  -from $TNM_Handshake_iData   -to $TNM_Handshake_oData -datapath_only [expr 2 * $T_OClkMin - 1]
set_false_path -from $TNM_Handshake_iTog    -to $TNM_Handshake_oTog_ms
set_false_path -from $TNM_Handshake_oRdy    -to $TNM_Handshake_iRdy_ms
set_max_delay  -from $TNM_Handshake_oTog_ms -to $TNM_Handshake_oTog -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay  -from $TNM_Handshake_iRdy_ms -to $TNM_Handshake_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvPath


set BasePath IsoPortSettingsToTxClk
## Start include, file HandshakeSLV.xml
set HandshakeSlvPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBase.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBasePath $BasePath

#First create the groups that will be needed later in the -from/to constraints
set TNM_Handshake_iData   [get_cells "$BasePath/BlkIn.iLclStoredData*"      -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oData   [get_cells "$BasePath/BlkOut.ODataFlop/*/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog_ms [get_cells "$BasePath/*oPushToggle_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oRdy    [get_cells "$BasePath/BlkOut.oPushToggleToReady*" -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy_ms [get_cells "$BasePath/BlkRdy.iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_oTog    [get_cells "$BasePath/BlkOut.oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
set TNM_Handshake_iRdy    [get_cells "$BasePath/BlkRdy.iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]
#Second, find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_Handshake_oData]] ,])"]
#Third, create constraints that are a function of those clocks
set_max_delay  -from $TNM_Handshake_iData   -to $TNM_Handshake_oData -datapath_only [expr 2 * $T_OClkMin - 1]
set_false_path -from $TNM_Handshake_iTog    -to $TNM_Handshake_oTog_ms
set_false_path -from $TNM_Handshake_oRdy    -to $TNM_Handshake_iRdy_ms
set_max_delay  -from $TNM_Handshake_oTog_ms -to $TNM_Handshake_oTog -datapath_only [expr 0.5 * $T_OClkMin]
set_max_delay  -from $TNM_Handshake_iRdy_ms -to $TNM_Handshake_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvPath



current_instance -quiet
current_instance $IwCompanionIsoPort2
## Start add from file IsolationPort.xdc
######################################################################################
# Clock crossings in IsoPort
######################################################################################

## IsoPortConfiguration has some "direct" double-synchronizers that aren't in "normal"
## blocks, and are somewhat tricky because they have a synchronous reset. So we need to
## carefully except just the asynchronous path, while leaving the synchronous reset
## intact. To do that, we look for the specific source and destination registers and apply
## a to-from datapath_only constraint. The signals in question don't have strict timing
## requirements, so a false-path would suffice. But we'll just give them a loose
## constraint instead for consistent timing results.
set TNM_IsoConfigSrc [get_cells  -hier -regexp {.*/IsoPortCorex/.*/(rSlaveReady|rFirstRxPktObserved|rRxDataModeAck|reCompressionError)_reg}]
set TNM_IsoConfigDest [get_cells -hier -regexp {.*/IsoPortConfigurationx/(bSlaveReady_ms|bFirstRxPktObserved_ms|bRxDataModeAck_ms|bCompressionError_ms)_reg}]

set_max_delay -datapath_only 15 \
-to $TNM_IsoConfigDest \
-from $TNM_IsoConfigSrc

# We also would like to add in async_reg constraints to the metastable flops and their
# next flops. First, find the Q's of the metastable flops
set TNM_IsoConfigDestQ [get_pins -of $TNM_IsoConfigDest -filter {REF_PIN_NAME == Q}]
# Then get their fanout in cells.
set TNM_IsoConfigDestNx [all_fanout -only_cells -flat -endpoints_only $TNM_IsoConfigDestQ]
# And now set asyn_reg on both flops.
set_property ASYNC_REG TRUE $TNM_IsoConfigDest
set_property ASYNC_REG TRUE $TNM_IsoConfigDestNx

######################################################################################
# Asynchronous Resets In IsoPort
######################################################################################

# Although the IsoPort does a lot of good work to use RSDs, its core is still full of
# truly-asynchronous resets using RSDs from different clock domains and generating implied
# RSD crossings. We use some of these exceptions to simplify timing in places where it
# doesn't make sense to have an RSD crossing.

set IsoPortRxClk [get_clocks -of [get_nets IsoPortRxClk]]

# abReset
###########
# The first is the IsoPort reset, which is defined on BusClk. It crosses over to RxClk as
# an asynchronous reset, so we'll prevent undue analysis there. Because RxClk is usually
# asynchronous, and furthermore it's not even present at the time the reset deasserts,
# there's no argument to be made about this reset needing to be RSD synchronous to BusClk.
set TMN_abReset [get_cells RsdBusClk/acReset_reg*]
set_false_path \
-from [get_cells $TMN_abReset] \
-to [get_clocks $IsoPortRxClk]

# bIsoPortIoReset
#################
# The bIsoPortIoReset signal is generated by a state machine inside IsoPortConfiguration.
# It has many challenging destinations.

# 1. bIsoPortIoReset is used as an asynchronous reset to IoReceiveFifoBase, including for
# registers on the IsoPortRxClk domain. The IoReceiveFifoBase makes no RSD assumptions, and so
# it's safe to except this recovery path.
set TNM_bIoResetSrc [get_cells -hier -regexp {.*/IsoPortConfigurationx/bIsoPortIoResetLcl_reg.*}]
set TNM_bIoResetDest [get_pins -hier -regexp {.*/IsolationPortBasex/IoReceiveFifoBasex/.*/ieInputCountGrayx/.*/(CLR|PRE)}]
set_false_path \
-from [get_cells $TNM_bIoResetSrc] \
-to [get_pins $TNM_bIoResetDest]


# 2. bIsoPortIoReset is also used as an asynchronous reset to the credit-counting logic in
# IoTransmitFifox. This logic also runs on IsoPortRxClk.
set TNM_bIoResetDest [get_pins -hier -regexp {.*/IsolationPortBasex/IoTransmitFifox/CreditManager.*/(CLR|PRE)}]

set_false_path \
-from [get_cells $TNM_bIoResetSrc] \
-to [get_clocks $IsoPortRxClk] \
-through [get_pins $TNM_bIoResetDest]

# 3. Finally, bIsoPortIoReset is combined with aReset to form aIsoPortReset, which is used
# as an asynchronous reset to logic running on RxClk within IsoPortConfiguration itself.
# This logic consists of a State Machine, an external (synchronous) input to it, and a
# reset synchronizer. From the code's VScan exception:
#
# "aIsoPortReset is asserted by aReset and a synchronous reset that is also asserted by
# aReset. The bIsoPortResetIO signal guarantees that aIsoPortReset will deassert after
# aReset. It is possible for rSlaveReadyPin to be changing at that time, but rSlaveReady
# and rSlaveState follow a synchronous reset deassertion by rReset, and are therefore safe
# to receive rSlaveReadyPin as their input."

# All in all, none of these inputs need to treat bIsoPortIoReset as anything other than an
# asynchronous reset.
set TNM_bIoResetDest [get_pins -hier -regexp {.*/IsolationPortBasex/IsoPortCorex/IsoPortConfigurationx/r(SlaveReady|SlaveState|Reset_ms|Reset).*/(CLR|PRE)}]
set_false_path \
-from [get_cells $TNM_bIoResetSrc] \
-to [get_pins $TNM_bIoResetDest]





current_instance -quiet
current_instance $IwCompanionIsoPort0
set IwCompanionIsoPort0 [current_instance .]
current_instance LinkInterfaceBridgex
## Start include, file LinkInterfaceBridgeSlim.xml
set BasePath BaRegPortClockCrossingx
## Start include, file BaRegPortClockCrossing.xml
set BaRegPortClockCrossingPath $BasePath
set BasePath $BaRegPortClockCrossingPath/RequestHandshake
## Start include, file HandshakeSLV_RSD.xml
set HandshakeSlvRsdPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBaseRSD.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseRSD
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseRsdPath $BasePath

# Data
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"      -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/*oDataFlopx/*/*"        -filter {IS_SEQUENTIAL==true}]
# Toggle
set TNM_HS_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/*oPushToggle0_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
# Ready
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]

# Find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]

# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay  -from $TNM_HS_iData   -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Toggle
set_false_path -from $TNM_HS_iTog    -to $TNM_HS_oTog_ms
set_max_delay  -from $TNM_HS_oTog_ms -to $TNM_HS_oTog -datapath_only [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy    -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms -to $TNM_HS_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvRsdPath


set BasePath $BaRegPortClockCrossingPath/ResponseHandshake
## Start include, file HandshakeSLV_RSD.xml
set HandshakeSlvRsdPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBaseRSD.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseRSD
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseRsdPath $BasePath

# Data
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"      -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/*oDataFlopx/*/*"        -filter {IS_SEQUENTIAL==true}]
# Toggle
set TNM_HS_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/*oPushToggle0_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
# Ready
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]

# Find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]

# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay  -from $TNM_HS_iData   -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Toggle
set_false_path -from $TNM_HS_iTog    -to $TNM_HS_oTog_ms
set_max_delay  -from $TNM_HS_oTog_ms -to $TNM_HS_oTog -datapath_only [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy    -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms -to $TNM_HS_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvRsdPath


set BasePath $BaRegPortClockCrossingPath


set IwCompanionIsoPort2 [current_instance .]
current_instance LiBridgeHostPiox
set BasePath NiDmaFifoRSDx
## Start include, file NiDmaLutRamFifo.xml
## Start add from file FifoRSD.xdc
# ---------------------------------------------------------------------------------------
# FifoRSD
# ---------------------------------------------------------------------------------------
# Save incoming path
set FifoRsdPath $BasePath

# Gray encoding Flags
set TNM_FifoRsd_iWrGray       [get_cells "$BasePath/FifoFlagsx/BlkAddr.SyncToIClkx/cAddrAGrayx/*/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_FifoRsd_oWrGray_ms    [get_cells "$BasePath/FifoFlagsx/BlkAddr.SyncToOClkx/cAddrBGray_msx/*/*" -filter {IS_SEQUENTIAL==true}]
set TNM_FifoRsd_oWrGray       [get_cells "$BasePath/FifoFlagsx/BlkAddr.SyncToOClkx/cAddrBGrayx/*/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_FifoRsd_oRdGray       [get_cells "$BasePath/FifoFlagsx/BlkAddr.SyncToOClkx/cAddrAGrayx/*/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_FifoRsd_iRdGray_ms    [get_cells "$BasePath/FifoFlagsx/BlkAddr.SyncToIClkx/cAddrBGray_msx/*/*" -filter {IS_SEQUENTIAL==true}]
set TNM_FifoRsd_iRdGray       [get_cells "$BasePath/FifoFlagsx/BlkAddr.SyncToIClkx/cAddrBGrayx/*/*"    -filter {IS_SEQUENTIAL==true}]
# Pulse
set TNM_FifoRsd_iPulse        [get_cells "$BasePath/PulseSyncBoolStatRSDx/PulseSyncBasex/DoubleSyncBasex/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_FifoRsd_oPulse_ms     [get_cells "$BasePath/PulseSyncBoolStatRSDx/PulseSyncBasex/DoubleSyncBasex/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_FifoRsd_oPulse        [get_cells "$BasePath/PulseSyncBoolStatRSDx/PulseSyncBasex/DoubleSyncBasex/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_FifoRsd_iPulseBack_ms [get_cells "$BasePath/PulseSyncBoolStatRSDx/PulseSyncBasex/DoubleSyncAsyncInBasex/oSig_msx/*"                 -filter {IS_SEQUENTIAL==true}]
set TNM_FifoRsd_iPulseBack    [get_cells "$BasePath/PulseSyncBoolStatRSDx/PulseSyncBasex/DoubleSyncAsyncInBasex/oSigx/*"                    -filter {IS_SEQUENTIAL==true}]

# These are lists of cells that we can use for clock sources. We use a list of potential
# cells instead of arbitrarily picking one, because different parts of the fifo can be
# synthesized out depending on which signals are used in the instantiation.
set TNM_FifoRsd_iClkSrcs [list $TNM_FifoRsd_iWrGray $TNM_FifoRsd_iRdGray $TNM_FifoRsd_iPulse]
set TNM_FifoRsd_oClkSrcs [list $TNM_FifoRsd_oWrGray $TNM_FifoRsd_oRdGray $TNM_FifoRsd_oPulse]

# Find out the period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_FifoRsd_iClkSrcs]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_FifoRsd_oClkSrcs]] ,])"]

# Write Pointer
set_max_delay  -from $TNM_FifoRsd_iWrGray       -to $TNM_FifoRsd_oWrGray_ms -datapath_only [expr   1 * $T_OClkMin]
set_max_delay  -from $TNM_FifoRsd_oWrGray_ms    -to $TNM_FifoRsd_oWrGray    -datapath_only [expr 0.5 * $T_OClkMin]
# Read Pointer
set_max_delay  -from $TNM_FifoRsd_oRdGray       -to $TNM_FifoRsd_iRdGray_ms -datapath_only [expr   1 * $T_IClkMin]
set_max_delay  -from $TNM_FifoRsd_iRdGray_ms    -to $TNM_FifoRsd_iRdGray    -datapath_only [expr 0.5 * $T_IClkMin]
# iPulse - oPulse
set_false_path -from $TNM_FifoRsd_iPulse        -to $TNM_FifoRsd_oPulse_ms
set_max_delay  -from $TNM_FifoRsd_oPulse_ms     -to $TNM_FifoRsd_oPulse     -datapath_only [expr 0.5 * $T_OClkMin]
# oPulse - iPulseBack
set_false_path -from $TNM_FifoRsd_oPulse        -to $TNM_FifoRsd_iPulseBack_ms
set_max_delay  -from $TNM_FifoRsd_iPulseBack_ms -to $TNM_FifoRsd_iPulseBack -datapath_only [expr 0.5 * $T_IClkMin]



set TNM_FifoRsd_oData [get_cells $BasePath/UseLutRam.DualPortLutRamx/oDataOutLoc_reg* -filter {IS_SEQUENTIAL==true}]
# LUTRAMs are read asynchronously, leading to the possibility of reading and
# writing at the same time in asynchronous domains. FifoFlags is in charge
# of preventing this, so we can excempt all paths through the LUT.
set_false_path -from [get_clocks -of $TNM_FifoRsd_iClkSrcs] -to $TNM_FifoRsd_oData



set BasePath HandshakeSLV_RSDx
## Start include, file HandshakeSLV_RSD.xml
set HandshakeSlvRsdPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBaseRSD.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseRSD
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseRsdPath $BasePath

# Data
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"      -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/*oDataFlopx/*/*"        -filter {IS_SEQUENTIAL==true}]
# Toggle
set TNM_HS_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/*oPushToggle0_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
# Ready
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]

# Find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]

# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay  -from $TNM_HS_iData   -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Toggle
set_false_path -from $TNM_HS_iTog    -to $TNM_HS_oTog_ms
set_max_delay  -from $TNM_HS_oTog_ms -to $TNM_HS_oTog -datapath_only [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy    -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms -to $TNM_HS_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvRsdPath



current_instance -quiet
current_instance $IwCompanionIsoPort2



current_instance -quiet
current_instance $IwCompanionIsoPort0




current_instance -quiet
current_instance $MacallanTop1
set MacallanTop1 [current_instance .]
current_instance TimingEnginex
## Start add from file PxieUsTimingEngine.xdc

###################################################################################
##
## 
##
###################################################################################
set PxieUsTimingEngine0 [current_instance .]
current_instance TimingStage1x
set BasePath PonResetExpander
## Start include, file FilterBoolean.xml
set BasePath $BasePath/FilterStdLogicx
## Start include, file FilterStdLogic.xml
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath







# Prevent recovery analysis on this signal which is used as a fully-asynchronous
# reset despite being the output of a FF.

set_false_path -from [get_cells PonResetExpander/FilterStdLogicx/cOSigLcl_reg*]

set PxieUsTimingEngine1 [current_instance .]
current_instance AllClocksTogglingx
## Start include, file allclockstoggling.xml
set BasePath GenerateSyncs[0].ResetSyncDeassertx
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set BasePath GenerateSyncs[0].DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath


set BasePath GenerateSyncs[1].ResetSyncDeassertx
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set BasePath GenerateSyncs[1].DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath


set BasePath GenerateSyncs[2].ResetSyncDeassertx
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set BasePath GenerateSyncs[2].DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath





current_instance -quiet
current_instance $PxieUsTimingEngine1
set BasePath RsdDlyRefClk
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set PxieUsTimingEngine1 [current_instance .]
current_instance LatchSync100x
set BasePath LatchSync100Blk.MakeDlyReadyReset
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



current_instance -quiet
current_instance $PxieUsTimingEngine1
set PxieUsTimingEngine1 [current_instance .]
current_instance ReliableClkPllx
## Start add from file ReliableClkPll.xdc

# file: ReliableClkPll.xdc
#
# (c) Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
#

# Input clock periods. These duplicate the values entered for the
# input clocks. You can use these to time your system. If required
# commented constraints can be used in the top level xdc
#----------------------------------------------------------------
#create_clock -period 10.000 [get_ports PxieClk100Lcl]
#set_input_jitter [get_clocks -of_objects [get_ports PxieClk100Lcl]] 0.1


set_false_path -to [get_cells  -hier {*seq_reg*[0]} -filter {is_sequential}]
set_property PHASESHIFT_MODE WAVEFORM [get_cells -hierarchical *adv*]


## Start add from file ReliableClkPll_late.xdc

# file: ReliableClkPll_late.xdc
#
# (c) Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
#

set_false_path -to [get_cells  -hier {*seq_reg*[0]} -filter {is_sequential}]






current_instance -quiet
current_instance $PxieUsTimingEngine1

current_instance -quiet
current_instance $PxieUsTimingEngine0
set PxieUsTimingEngine0 [current_instance .]
current_instance TimingPcieBlockx
## Start include, file timingpcieblock.xml
set BasePath PcieResetDS
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath


set BasePath PcieCheckDelay
## Start include, file FilterBoolean.xml
set BasePath $BasePath/FilterStdLogicx
## Start include, file FilterStdLogic.xml
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath






set_false_path -from [get_cells PowerOnDelayHack.rPcieResetOut_n_reg*]



current_instance -quiet
current_instance $PxieUsTimingEngine0
set PxieUsTimingEngine0 [current_instance .]
current_instance TimingStage2x
## Start include, file timingstage2.xml
set BasePath PonResetExpander
## Start include, file FilterBoolean.xml
set BasePath $BasePath/FilterStdLogicx
## Start include, file FilterStdLogic.xml
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath






set BasePath aBusResetMinFilter
## Start include, file FilterBoolean.xml
set BasePath $BasePath/FilterStdLogicx
## Start include, file FilterStdLogic.xml
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath






set BasePath BusClkBusResetRsd
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set BasePath DramReset
## Start include, file FilterBoolean.xml
set BasePath $BasePath/FilterStdLogicx
## Start include, file FilterStdLogic.xml
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath






set BasePath DramPllLockedDS
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath


set BasePath Dram0PhyInitDoneDS
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath Dram1PhyInitDoneDS
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath RsdDlyRefClk
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set BasePath LockedStatusDS
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath Clk10EnableDS
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# Timing Ignore for any signals that are the outputs of FFs but are treated as
# fully-asynchronous resets. In effect we're avoiding reset recovery analysis.

set resetOrigin [get_cells { \
PonResetExpander/FilterStdLogicx/cOSigLcl_reg* \
aBusResetMinFilter/FilterStdLogicx/cOSigLcl_reg* \
DramReset/FilterStdLogicx/cOSigLcl_reg* } ]

set_false_path -from [get_cells $resetOrigin]

# Also timing ignore on rDramReady because it'll be double-synchronized into the
# user's preferred clock domain.
set_false_path -from [get_cells rDramReady_reg*]





current_instance -quiet
current_instance $PxieUsTimingEngine0
## Start add from file TimingEngine.xdc
# Moving the PLL to reliable clock caused the placement of derived clocks to conflict.
# This constraint allows labview generated PLLs to be placed in non-optimal locations
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets TimingStage1x/PxieClk100]

## Reset false paths

# Here are some other pins we want false-pathed, which are synchronous signals being used
# as asynchronous resets where we don't want to make the whole signal a false path, just
# this particular usage.
set FalsePaths [get_pins {\
TimingStage1x/RsdDlyRefClk/aReset \
TimingStage2x/RsdDlyRefClk/rPllClocksValidStg1 \
TimingStage2x/aIntClk10} ]

set_false_path -through [get_pins $FalsePaths]

# Group the 80MHz PllClk80 and 240MHz MbClk clocks into a group to reduce skew between clocks
set_property CLOCK_DELAY_GROUP MicroBlazeClockGrp [get_nets {TimingStage1x/ReliableClkPllx/inst/PllClk80 TimingStage1x/ReliableClkPllx/inst/MbClk}]





current_instance -quiet
current_instance $MacallanTop1
set MacallanTop1 [current_instance .]
current_instance FixedLogicWrapperx/MacallanFixedLogicx
## Start add from file MacallanFixedLogic.xdc

###################################################################################
##
## 
##
###################################################################################
set BasePath DmaClockRSD
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set BasePath BusClockRSD
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set BasePath BusClkDiagramRSD
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set BasePath FastTdcClkRSD
## Start include, file ResetSyncDeassert.xml
set ResetSyncDeassertPath $BasePath
set BasePath $BasePath/DoubleSyncBoolAsyncInx
## Start include, file DoubleSyncBoolAsyncIn.xml
set DoubleSyncBoolAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncSlAsyncInx
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath


set BasePath $DoubleSyncBoolAsyncInPath



# There is an implicit assumption that aReset coming into ResetSyncDeassert can always
# be treated as fully-asynchronous. This will certainly be the case if the signal is
# coming from a pin. But even if it's coming from an internal FF, it is never useful
# to treat is as synchronous. If the signal were synchronous to the output clock, we
# would have no need for the ResetSyncDeassert in the first place. So it's safe to
# except the reset path into the DoubleSync Preset (ResetSyncDeasserts always reset
# true), and avoid the potential for spurious Reset Recovery analysis on that path.


set TNM_oSigs [get_cells "$DoubleSyncAsyncInBasePath/oSig*x/*" -filter {IS_SEQUENTIAL==true}]
set TNM_Prst  [get_pins -of $TNM_oSigs                         -filter {REF_PIN_NAME==PRE}]
set_false_path -to $TNM_oSigs -through $TNM_Prst

set BasePath $ResetSyncDeassertPath


set MacallanFixedLogic0 [current_instance .]
current_instance BoardControlx/AxiStreamCpldSidebandx/SidebandTxx
set BasePath FifoFullDs
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath



current_instance -quiet
current_instance $MacallanFixedLogic0
set MacallanFixedLogic0 [current_instance .]
current_instance BoardControlx/AxiStreamCpldSidebandx/SidebandRxx
set BasePath RxDataDs
## Start include, file DoubleSyncSlAsyncIn.xml
set DoubleSyncSlAsyncInPath $BasePath
set BasePath $BasePath/DoubleSyncAsyncInBasex
## Start add from file DoubleSyncAsyncInBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncAsyncInBase
# ---------------------------------------------------------------------------------------
# Save incoming path
set DoubleSyncAsyncInBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_oSig_ms [get_cells "$BasePath/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms_pin [get_pins -of $TNM_DS_oSig_ms -filter {REF_PIN_NAME==D}]
set TNM_DS_oSig    [get_cells "$BasePath/oSigx/*"    -filter {IS_SEQUENTIAL==true}]
#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]
# False path coming in through the D pin.
set_false_path -to $TNM_DS_oSig_ms       -through $TNM_DS_oSig_ms_pin
# Half-cycle max-delay from metastable to stable flop, to give time for metastability to
# settle out.
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlAsyncInPath



current_instance -quiet
current_instance $MacallanFixedLogic0
set MacallanFixedLogic0 [current_instance .]
current_instance BusRegPortClockCrossing
set BasePath RequestHandshake
## Start include, file HandshakeSLV_RSD.xml
set HandshakeSlvRsdPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBaseRSD.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseRSD
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseRsdPath $BasePath

# Data
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"      -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/*oDataFlopx/*/*"        -filter {IS_SEQUENTIAL==true}]
# Toggle
set TNM_HS_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/*oPushToggle0_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
# Ready
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]

# Find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]

# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay  -from $TNM_HS_iData   -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Toggle
set_false_path -from $TNM_HS_iTog    -to $TNM_HS_oTog_ms
set_max_delay  -from $TNM_HS_oTog_ms -to $TNM_HS_oTog -datapath_only [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy    -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms -to $TNM_HS_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvRsdPath


set BasePath ResponseHandshake
## Start include, file HandshakeSLV_RSD.xml
set HandshakeSlvRsdPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBaseRSD.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseRSD
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseRsdPath $BasePath

# Data
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"      -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/*oDataFlopx/*/*"        -filter {IS_SEQUENTIAL==true}]
# Toggle
set TNM_HS_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/*oPushToggle0_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
# Ready
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]

# Find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]

# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay  -from $TNM_HS_iData   -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Toggle
set_false_path -from $TNM_HS_iTog    -to $TNM_HS_oTog_ms
set_max_delay  -from $TNM_HS_oTog_ms -to $TNM_HS_oTog -datapath_only [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy    -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms -to $TNM_HS_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvRsdPath



current_instance -quiet
current_instance $MacallanFixedLogic0
set MacallanFixedLogic0 [current_instance .]
current_instance TdcRegistersx
set BasePath ExpandedPulseCapture.ClockCrossing.TdcInvertedDS
## Start include, file DoubleSyncSL_RSD.xml
set DoubleSyncSlRsdPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlRsdPath


set BasePath ExpandedPulseCapture.ClockCrossing.MeasurementHS
## Start include, file HandshakeSLV_RSD.xml
set HandshakeSlvRsdPath $BasePath
set BasePath $BasePath/HBx
## Start add from file HandshakeBaseRSD.xdc
# ---------------------------------------------------------------------------------------
# HandshakeBaseRSD
# ---------------------------------------------------------------------------------------
# Save incoming path
set HandshakeBaseRsdPath $BasePath

# Data
set TNM_HS_iData   [get_cells "$BasePath/BlkIn.iStoredDatax/*/*"      -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oData   [get_cells "$BasePath/*oDataFlopx/*/*"        -filter {IS_SEQUENTIAL==true}]
# Toggle
set TNM_HS_iTog    [get_cells "$BasePath/*iPushTogglex/*"        -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog_ms [get_cells "$BasePath/*oPushToggle0_msx/*"    -filter {IS_SEQUENTIAL==true}]
set TNM_HS_oTog    [get_cells "$BasePath/*oPushToggle1x/*"       -filter {IS_SEQUENTIAL==true}]
# Ready
set TNM_HS_oRdy    [get_cells "$BasePath/*oPushToggleToReadyx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy_ms [get_cells "$BasePath/*iRdyPushToggle_msx/*"  -filter {IS_SEQUENTIAL==true}]
set TNM_HS_iRdy    [get_cells "$BasePath/*iRdyPushTogglex/*"     -filter {IS_SEQUENTIAL==true}]

# Find out the minimum period of the clocks related to the previous groups.
set T_IClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_iData]] ,])"]
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_HS_oData]] ,])"]

# The datapath clock crossings must be less than 2X the period of the destination clock.
set_max_delay  -from $TNM_HS_iData   -to $TNM_HS_oData -datapath_only [expr 2 * $T_OClkMin - 0.5]

# Toggle
set_false_path -from $TNM_HS_iTog    -to $TNM_HS_oTog_ms
set_max_delay  -from $TNM_HS_oTog_ms -to $TNM_HS_oTog -datapath_only [expr 0.5 * $T_OClkMin]

# The return ready path isn't very important here.
set_false_path -from $TNM_HS_oRdy    -to $TNM_HS_iRdy_ms
set_max_delay  -from $TNM_HS_iRdy_ms -to $TNM_HS_iRdy -datapath_only [expr 0.5 * $T_IClkMin]


set BasePath $HandshakeSlvRsdPath



current_instance -quiet
current_instance $MacallanFixedLogic0
set MacallanFixedLogic0 [current_instance .]
current_instance BoardControlx
set BasePath IrqFromFixedLogicDS
## Start include, file DoubleSyncSL_RSD.xml
set DoubleSyncSlRsdPath $BasePath
set BasePath $BasePath/DoubleSyncBasex
## Start add from file DoubleSyncBase.xdc
# ---------------------------------------------------------------------------------------
# DoubleSyncBase
# ---------------------------------------------------------------------------------------
# Save Incoming path
set DoubleSyncBasePath $BasePath

# First create the groups that will be needed in the -from/to constraints
set TNM_DS_iSig    [get_cells "$BasePath/iDlySigx/*"                        -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig_ms [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSig_msx/*" -filter {IS_SEQUENTIAL==true}]
set TNM_DS_oSig    [get_cells "$BasePath/DoubleSyncAsyncInBasex/oSigx/*"    -filter {IS_SEQUENTIAL==true}]

#Second, find out the period of the clocks related to the previous groups
set T_OClkMin [expr "min([join [get_property PERIOD [get_clocks -of $TNM_DS_oSig]] ,])"]

set_false_path -from $TNM_DS_iSig        -to $TNM_DS_oSig_ms
set_max_delay  -from $TNM_DS_oSig_ms     -to $TNM_DS_oSig     -datapath_only [expr 0.5 * $T_OClkMin]


set BasePath $DoubleSyncSlRsdPath



current_instance -quiet
current_instance $MacallanFixedLogic0
## Start add from file FixedLogic.xdc
## BoardControl.xdc placeholder





## Start add from file MacallanFixedLogic_mod.xdc
set MacallanFixedLogicInst [current_instance .]

####################################################################################
# Generated by Vivado 2021.1 built on 'Thu Jun 10 19:36:07 MDT 2021' by 'xbuild'
# Command Used: write_xdc -force -exclude_physical /mnt/Work/myagent/_work/822/s/hw-flexrio/fixedlogic/objects/tool/synth_macallanfixedlogic/output/MacallanFixedLogic.xdc
####################################################################################


####################################################################################
# Constraints from file : 'xpm_cdc_gray.tcl'
####################################################################################

current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst
set_max_delay -datapath_only -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000

####################################################################################
# Constraints from file : 'xpm_cdc_sync_rst.tcl'
####################################################################################

current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.rrst_wr_inst
set_false_path -to [get_cells {syncstages_ff_reg[0]}]
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.wrst_rd_inst
set_false_path -to [get_cells {syncstages_ff_reg[0]}]
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.rrst_wr_inst
set_false_path -to [get_cells {syncstages_ff_reg[0]}]
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.wrst_rd_inst
set_false_path -to [get_cells {syncstages_ff_reg[0]}]
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.rrst_wr_inst
set_false_path -to [get_cells {syncstages_ff_reg[0]}]
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.TX_FIFO_II/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.wrst_rd_inst
set_false_path -to [get_cells {syncstages_ff_reg[0]}]
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.wrst_rd_inst
set_false_path -to [get_cells {syncstages_ff_reg[0]}]
current_instance -quiet
current_instance $MacallanFixedLogicInst
current_instance BoardControlx/BoardControlMicroblaze_i/BoardControlMicroblazeBdx/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/FIFO_EXISTS.RX_FIFO_II/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.rrst_wr_inst
set_false_path -to [get_cells {syncstages_ff_reg[0]}]

# Vivado Generated miscellaneous constraints

#revert back to original instance
current_instance -quiet
current_instance $MacallanFixedLogicInst



current_instance -quiet
current_instance $MacallanTop1
## Start add from file TimingCommon.xdc
##################### TIMING CONSTRAINTS #######################

#########################################################################################
# Stage2Done
#
# The timing of this pin is unimportant. We'll set an absurd output delay.
set_output_delay -max -5 [get_ports aFpgaStage2Done]
set_output_delay -min 5 [get_ports aFpgaStage2Done]

#########################################################################################
## CPLD Sideband
#########################################################################################

set BusClkSourcePin [get_pins -of_objects [get_clocks $BusClk]]

create_generated_clock \
-name SidebandClk \
-source [get_pins $BusClkSourcePin] \
-multiply_by 1 \
-invert [get_ports SidebandClk]

set SidebandIntfTsu       2.000; # destination device setup time requirement
set SidebandIntfThd       2.000; # destination device hold time requirement
set SidebandIntfTraceSkew 1.000; # Allowed skew between traces

set SidebandDataOutPins [get_ports sSidebandDataOut*]

# Output Delay Constraints
set_output_delay \
-clock [get_clocks SidebandClk] \
-max [expr $SidebandIntfTsu + $SidebandIntfTraceSkew] \
[get_ports $SidebandDataOutPins];

set_output_delay \
-clock [get_clocks SidebandClk] \
-min [expr - ($SidebandIntfThd + $SidebandIntfTraceSkew)] \
[get_ports $SidebandDataOutPins];

# False path FAM output enable to all the pins
set_false_path -from [get_pins FixedLogicWrapperx/MacallanFixedLogicx/BoardControlx/BoardControlAxiRegistersx/CommonAxiRegistersx/bFamOutputsEnabledLcl_reg/C] -to [get_ports]

## Start add from file TimingMacallan.xdc
###################
## PXIe Sync and clock generation
###################

set InputClock   [get_clocks PxieClk100]
set T_InputClock [get_property PERIOD $InputClock]; # Period of input clock
set InputPorts   pPxieSync100_p;                    # List of input ports

set Sync100Setup 3.0
set Sync100Hold  1.0

set Sync100SetupDlyMax [expr $T_InputClock - $Sync100Setup]

set SignalPropMin 0.15
set SignalPropMax 0.8

set PxiClk100BufPropMin 0.15
set PxiClk100BufPropMax 0.22

set PxiSync100BufPropMin 0.07
set PxiSync100BufPropMax 0.13

# Setup calculations
set MaxDataDelay [expr $Sync100SetupDlyMax + $SignalPropMax + $PxiSync100BufPropMax]
set MinClockDelay [expr $SignalPropMin + $PxiClk100BufPropMin]

# Hold calculations
set MinDataDelay [expr $Sync100Hold + $SignalPropMin + $PxiSync100BufPropMin]
set MaxClockDelay [expr $SignalPropMax + $PxiClk100BufPropMax]

# Input Delay Constraint
set_input_delay -clock $InputClock \
-max [expr $MaxDataDelay - $MinClockDelay] \
[get_ports $InputPorts]

set_input_delay -clock $InputClock \
-min [expr $MinDataDelay - $MaxClockDelay] \
[get_ports $InputPorts]

# We also want to put that FF in an IOB for better timing:
set_property IOB TRUE [get_ports $InputPorts]

## Calculations for Clk10 Generator

set SignalPropMin 0.0
set SignalPropMax 1

set LvpeclFlopTsu       0.1
set LvpeclFlopTh        0.5

set PxiClk100BufSkewMax 0.28

set OutputClock  [get_clocks PxieClk100]
set OutputPorts  pClk10GenD;                    # List of input ports

set MaxDataDelay [expr $SignalPropMax + $PxiClk100BufSkewMax + $LvpeclFlopTsu]
set MinClockDelay [expr $SignalPropMin]

set MinDataDelay [expr $SignalPropMin + $LvpeclFlopTh]
set MaxClockDelay [expr $SignalPropMax + $PxiClk100BufSkewMax]

set_output_delay -clock $OutputClock \
-max [expr $MaxDataDelay - $MinClockDelay] \
[get_ports $OutputPorts]

set_output_delay -clock $OutputClock \
-min [expr $MinDataDelay - $MaxClockDelay] \
[get_ports $OutputPorts]

#########################################################################################
# Global Address
#
# These pins are static signals that should settle way before the FPGA is even configured
# (let alone out of reset), and will not change thereafter. But they still need input
# delays to pass Xilinx's timing check. We'll make those input delays really preposterous.

set InputPorts [get_ports {aPxiGa[?]}]
set_input_delay -max -5 [get_ports $InputPorts]
set_input_delay -min 5 [get_ports $InputPorts]

#########################################################################################
## IsoPort
#########################################################################################

###### FPGA to CICADA

# General IsoPort values, obtained from //asics/c/cicada/doc/p3/hw/CicadaIsoPortTimingCalcs.xlsx
set ttxdcd   0.5; # Transmitter Duty Cycle Distortion
set ttxjit   1.0; # Transmitter Jitter
set tpcb     1.0; # PCB Skew and distortion timing effects.
set tsucic   7.6; # Setup time at cicada when using "medium" delay, which we'll have to set.
set thcic   -1.5; # Hold time at cicada when using "medium" delay, which we'll have to set.

# Output skew should be handled by Xilinx timing analyzer. For that matter, so should
# jitter and DCD, but we'll leave those in.

# The variable $BusClk is expected to be defined further above this point, whether in the
# main target constraints or in the OOC constraints.

set busclkPort [get_pins -of [get_clocks $BusClk]]
set busclkClock [get_clocks $BusClk]

# Outgoing Clock Port / Clock Name
set isoClk IsoPortTxClk
set isoData {itIsoPortTxData[*]}

# These settings need to match what we'll configure in software.
set setupTxStates 2
set holdTxStates  3

# Clock is a DDR Clock, but it's based off the edges of the source clock (which is
# BusClk). The division will be based on the number of setup and hold states that we
# configure. Because there is one setup and one hold period for each phase
# (rising/falling) of the clock, the total divider is 2x the sum of the setup and hold
# states.
create_generated_clock -name $isoClk \
-source [get_pins $busclkPort] -divide_by [expr 2*($setupTxStates + $holdTxStates)] \
[get_ports $isoClk]

# Our setup and hold states can be translated into multicycle paths based on the source
# clock (hence the use of '-start').
#
# Remember that a setup multicycle path of '1' is the default, and means that the data is
# latched on the edge following the launch edge. Increasing that multicycle path pushes
# the launch earlier in time relative to the latch edge, which is what our setup states
# do.
#
# The hold behaves similarly, where a hold of '0' (the default) checks hold on a launch
# edge that happens at the same time as the latching edge. As we increase the hold, the
# launch edge that we need to care about gets pushed later in time relative to the latch
# edge, which is what our hold states achieve. There's one wrinkle, though: the hold moves
# relative to the setup minus 1. So we need to adjust our multicycle path for hold.
set setupMc $setupTxStates
set holdMc [expr $holdTxStates + ($setupTxStates -1)]

set_multicycle_path $setupMc -setup -start -from [get_clocks $BusClk] \
-to [get_ports $isoData]
set_multicycle_path $holdMc -hold  -start -from [get_clocks $BusClk] \
-to [get_ports $isoData]
# We need paths to the falling edge of IsoClk, too.
set_multicycle_path $setupMc -setup -start -from [get_clocks $BusClk] \
-fall_to [get_ports $isoData]
set_multicycle_path $holdMc -hold  -start -from [get_clocks $BusClk] \
-fall_to [get_ports $isoData]

# Now define output delays. First from the rising edge of BusClk (implied because it
# drives isoData) to the rising edge of isoClk.
set_output_delay -clock $isoClk -max [expr $ttxdcd + $ttxjit +$tpcb + $tsucic] \
[get_ports $isoData]
set_output_delay -clock $isoClk -min [expr 0 - ($tpcb + $thcic)] \
[get_ports $isoData] -add_delay

# And now we use '-clock_fall' to indicate that we must analyze timing to the falling edge
# of isoClk.
set_output_delay -clock $isoClk -max [expr $ttxdcd + $ttxjit +$tpcb + $tsucic] \
[get_ports $isoData] -clock_fall -add_delay
set_output_delay -clock $isoClk -min [expr 0 - ($tpcb + $thcic)] \
[get_ports $isoData] -clock_fall -add_delay


###### CICADA to FPGA

# This is a much more straightforward path. Again, from the cicada timing spreadsheet.
set teid   0.4;  # Excess incremental delay
set ttxdcd 0.25; # Transmitter Duty Cycle Distortion
set ttxjit 0.2;  # Transmitter Jitter
set tosk   0.5;  # Transmitter Output Skew
set tpcb   1.0;  # PCB skew and distortion timing effects.

set isoClk  IsoPortRxClk
set isoData {irIsoPortRxData[*]}

# Data Generated on Rising Edge, Latched on Falling Edge
set_input_delay -clock [get_clocks $isoClk] -clock_fall\
-max [expr $teid + $ttxdcd + $ttxjit + $tosk + $tpcb] \
[get_ports $isoData]
set_input_delay -clock [get_clocks $isoClk] -add_delay \
-min [expr 0 - ($tosk + $tpcb)] \
[get_ports $isoData]

# Data Generated on Falling Edge, Latched on Rising Edge
set_input_delay -clock [get_clocks $isoClk] -add_delay \
-max [expr $teid + $ttxdcd + $ttxjit + $tosk + $tpcb] \
[get_ports $isoData]
set_input_delay -clock [get_clocks $isoClk] -clock_fall -add_delay \
-min [expr 0 - ($tosk + $tpcb)] \
[get_ports $isoData]

#########################################################################################
# Outside LV Window DMA Port Crossings
#
# These constraints are provided by LV FPGA code generation along with TheWindow clock crossing
# constraints.  However, these actually apply to paths that are outside TheWindow.  When used in
# the GitHub HDL workflow, we move TheWindow into a component and require set_instance to make the
# constraint paths work.   So we must move these outside the group of TheWindow constraints that are
# printed by LV FPGA so that they are outside TheWindow set_instance group.
#
# These will be duplicate and ignored in LV FPGA compiles
# In GitHub Vivado compiles. these will be used and the LV FPGA printed ones will be ignored

set DmaPortCommCrossingFrom [get_cells {HostInterfacex/*/*DmaPortCommIfcIrqInterfacex/DoubleSyncSLx*iDlySigx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]
set DmaPortCommCrossingTo [get_cells {HostInterfacex/*/*DmaPortCommIfcIrqInterfacex/DoubleSyncSLx*DoubleSyncAsyncInBasex/oSig_msx/*FDCPEx} -filter {IS_SEQUENTIAL==true}]

set_max_delay -from $DmaPortCommCrossingFrom -to $DmaPortCommCrossingTo -datapath_only 100.0000000000
#########################################################################################


#########################################################################################
# Dram2DP Crossings
#
# These constraints are normally provided by LV FPGA that places Dram2DP.xdc in the generated files
# folder.  However, those constraints have a bug in how "-hierarchical" is specified.  That bug
# does not cause problems for normal LV FPGA compiles but does cause problems when instantiating
# the LV Window as a netlist in GitHub Vivado workflows.  So we put the fixed versions of the Dram2DP
# constraints in here.
#
# Vivado will accept (or ignore) the duplicate constraints
#

set_false_path -from [get_pins -hierarchical {*bNumOfMemBuffers*/C}] \
-to   [all_registers -edge_triggered]

set_false_path -from [get_pins -hierarchical {*bLowLatencyBuffer*/C}] \
-to   [all_registers -edge_triggered]

set_false_path -from [get_pins -hierarchical {*bBaseAddrTable*/C}] \
-to   [all_registers -edge_triggered]

set_false_path -from [get_pins -hierarchical {*bBaggageBits*/C}] \
-to   [all_registers -edge_triggered]

set_false_path -from [get_pins -hierarchical {*Dram2DP*ClearFDCP*/C}] \
-to   [all_registers -edge_triggered]
#########################################################################################

## Start add from file TimingMacallanConfig.xdc
# #############################################################################
# Config Interface Timing Parameters for the Macallan Baseboard
#
# The typical parameters were extracted from hyperlinx boardsim. Min and Max
# parameters are generated by applying a 5% tolerance to account for process
# variation. These parameters are to be used by the CLIP so the CLIP can
# constrain the config interface.
# #############################################################################

set aConfigRxDataSe0_Tpd_Typ 0.221
set aConfigRxDataSe0_Tpd_Max [expr 0.221 * 1.05]
set aConfigRxDataSe0_Tpd_Min [expr 0.221 * 0.95]

set aConfigRxDataSe1_Tpd_Typ 0.213
set aConfigRxDataSe1_Tpd_Max [expr 0.213 * 1.05]
set aConfigRxDataSe1_Tpd_Min [expr 0.213 * 0.95]

set aConfigRxDataSe2_Tpd_Typ 0.212
set aConfigRxDataSe2_Tpd_Max [expr 0.212 * 1.05]
set aConfigRxDataSe2_Tpd_Min [expr 0.212 * 0.95]

set aConfigRxDataSe3_Tpd_Typ 0.203
set aConfigRxDataSe3_Tpd_Max [expr 0.203 * 1.05]
set aConfigRxDataSe3_Tpd_Min [expr 0.203 * 0.95]

set aConfigRxDataSe4_Tpd_Typ 0.198
set aConfigRxDataSe4_Tpd_Max [expr 0.198 * 1.05]
set aConfigRxDataSe4_Tpd_Min [expr 0.198 * 0.95]

set aConfigRxDataSe5_Tpd_Typ 0.199
set aConfigRxDataSe5_Tpd_Max [expr 0.199 * 1.05]
set aConfigRxDataSe5_Tpd_Min [expr 0.199 * 0.95]

set aConfigRxDataSe6_Tpd_Typ 0.200
set aConfigRxDataSe6_Tpd_Max [expr 0.200 * 1.05]
set aConfigRxDataSe6_Tpd_Min [expr 0.200 * 0.95]

set aConfigRxClkSe_Tpd_Typ   0.223
set aConfigRxClkSe_Tpd_Max   [expr 0.223 * 1.05]
set aConfigRxClkSe_Tpd_Min   [expr 0.223 * 0.95]

set aConfigRxClkLvds_Tpd_Typ 0.202
set aConfigRxClkLvds_Tpd_Max [expr 0.202 * 1.05]
set aConfigRxClkLvds_Tpd_Min [expr 0.202 * 0.95]

set aConfigTxDataSe0_Tpd_Typ 0.263
set aConfigTxDataSe0_Tpd_Max [expr 0.263 * 1.05]
set aConfigTxDataSe0_Tpd_Min [expr 0.263 * 0.95]

set aConfigTxDataSe1_Tpd_Typ 0.220
set aConfigTxDataSe1_Tpd_Max [expr 0.220 * 1.05]
set aConfigTxDataSe1_Tpd_Min [expr 0.220 * 0.95]

set aConfigTxDataSe2_Tpd_Typ 0.211
set aConfigTxDataSe2_Tpd_Max [expr 0.211 * 1.05]
set aConfigTxDataSe2_Tpd_Min [expr 0.211 * 0.95]

set aConfigTxDataSe3_Tpd_Typ 0.244
set aConfigTxDataSe3_Tpd_Max [expr 0.244 * 1.05]
set aConfigTxDataSe3_Tpd_Min [expr 0.244 * 0.95]

set aConfigTxDataSe4_Tpd_Typ 0.227
set aConfigTxDataSe4_Tpd_Max [expr 0.227 * 1.05]
set aConfigTxDataSe4_Tpd_Min [expr 0.227 * 0.95]

set aConfigTxDataSe5_Tpd_Typ 0.210
set aConfigTxDataSe5_Tpd_Max [expr 0.210 * 1.05]
set aConfigTxDataSe5_Tpd_Min [expr 0.210 * 0.95]

set aConfigTxDataSe6_Tpd_Typ 0.230
set aConfigTxDataSe6_Tpd_Max [expr 0.230 * 1.05]
set aConfigTxDataSe6_Tpd_Min [expr 0.230 * 0.95]

set aConfigTxClkSe_Tpd_Typ   0.255
set aConfigTxClkSe_Tpd_Max   [expr 0.255 * 1.05]
set aConfigTxClkSe_Tpd_Min   [expr 0.255 * 0.95]

set aConfigTxClkLvds_Tpd_Typ 0.198
set aConfigTxClkLvds_Tpd_Max [expr 0.198 * 1.05]
set aConfigTxClkLvds_Tpd_Min [expr 0.198 * 0.95]

set aGpoSync0_Tpd_Typ 0.172
set aGpoSync0_Tpd_Max [expr 0.172 * 1.05]
set aGpoSync0_Tpd_Min [expr 0.172 * 0.95]

set aGpoSync1_Tpd_Typ 0.202
set aGpoSync1_Tpd_Max [expr 0.202 * 1.05]
set aGpoSync1_Tpd_Min [expr 0.202 * 0.95]

set dtJesd204SysRef_Tpd_Typ 0.185
set dtJesd204SysRef_Tpd_Max [expr 0.185 * 1.05]
set dtJesd204SysRef_Tpd_Min [expr 0.185 * 0.95]

set dtJesd204SyncReqOut_n_Tpd_Typ 0.150
set dtJesd204SyncReqOut_n_Tpd_Max [expr 0.150 * 1.05]
set dtJesd204SyncReqOut_n_Tpd_Min [expr 0.150 * 0.95]

set dtJesd204SyncReqIn_n_Tpd_Typ 0.137
set dtJesd204SyncReqIn_n_Tpd_Max [expr 0.137 * 1.05]
set dtJesd204SyncReqIn_n_Tpd_Min [expr 0.137 * 0.95]

set SY89833_Tpd_Max   0.600
set SY89833_Tpd_Min   0.330
set DataClk_Tpd_Max   [expr 0.594 * 1.05 + $SY89833_Tpd_Max]
set DataClk_Tpd_Min   [expr 0.594 * 0.95 + $SY89833_Tpd_Min]

set aTriggerOut_Tpd_Typ 0.140
set aTriggerOut_Tpd_Max [expr 0.140 * 1.05]
set aTriggerOut_Tpd_Min [expr 0.140 * 0.95]

set aTriggerIn_Tpd_Typ 0.110
set aTriggerIn_Tpd_Max [expr 0.110 * 1.05]
set aTriggerIn_Tpd_Min [expr 0.110 * 0.95]

## Start add from file PinsMacallan.xdc
######################################################
# Configuration setup
######################################################
# We've tied CFGBVS to GND to support 1.8V configuration
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
# Temporarily placing this in here to avoid dealing with XML resource files
set_property CONFIG_MODE S_SELECTMAP [current_design]

# These pins are used for configuration, and we can't re-use them because of tandem. So we
# prohibit them to keep track
set_property PROHIBIT TRUE [get_sites M20]; # D04
set_property PROHIBIT TRUE [get_sites L20]; # D05
set_property PROHIBIT TRUE [get_sites R21]; # D06
set_property PROHIBIT TRUE [get_sites R22]; # D07

######################################################
# PCIe
######################################################
# Reset needs to go in this specific pin for Tandem reasons
set_property PACKAGE_PIN K22     [get_ports aPcieRst_n]
set_property IOSTANDARD LVCMOS18 [get_ports {aPcieRst_n}]
set_property PULLUP true         [get_ports aPcieRst_n]
# RefClk
set_property PACKAGE_PIN AB5 [get_ports PcieRefClk_n]
set_property PACKAGE_PIN AB6 [get_ports PcieRefClk_p]
# MGTs
set_property PACKAGE_PIN AB2 [get_ports {PcieRx_p[0]}]
set_property PACKAGE_PIN AB1 [get_ports {PcieRx_n[0]}]
set_property PACKAGE_PIN AC4 [get_ports {PcieTx_p[0]}]
set_property PACKAGE_PIN AC3 [get_ports {PcieTx_n[0]}]
set_property PACKAGE_PIN AD2 [get_ports {PcieRx_p[1]}]
set_property PACKAGE_PIN AD1 [get_ports {PcieRx_n[1]}]
set_property PACKAGE_PIN AE4 [get_ports {PcieTx_p[1]}]
set_property PACKAGE_PIN AE3 [get_ports {PcieTx_n[1]}]
set_property PACKAGE_PIN AF2 [get_ports {PcieRx_p[2]}]
set_property PACKAGE_PIN AF1 [get_ports {PcieRx_n[2]}]
set_property PACKAGE_PIN AG4 [get_ports {PcieTx_p[2]}]
set_property PACKAGE_PIN AG3 [get_ports {PcieTx_n[2]}]
set_property PACKAGE_PIN AH2 [get_ports {PcieRx_p[3]}]
set_property PACKAGE_PIN AH1 [get_ports {PcieRx_n[3]}]
set_property PACKAGE_PIN AH6 [get_ports {PcieTx_p[3]}]
set_property PACKAGE_PIN AH5 [get_ports {PcieTx_n[3]}]
set_property PACKAGE_PIN AJ4 [get_ports {PcieRx_p[4]}]
set_property PACKAGE_PIN AJ3 [get_ports {PcieRx_n[4]}]
set_property PACKAGE_PIN AK6 [get_ports {PcieTx_p[4]}]
set_property PACKAGE_PIN AK5 [get_ports {PcieTx_n[4]}]
set_property PACKAGE_PIN AK2 [get_ports {PcieRx_p[5]}]
set_property PACKAGE_PIN AK1 [get_ports {PcieRx_n[5]}]
set_property PACKAGE_PIN AL4 [get_ports {PcieTx_p[5]}]
set_property PACKAGE_PIN AL3 [get_ports {PcieTx_n[5]}]
set_property PACKAGE_PIN AM2 [get_ports {PcieRx_p[6]}]
set_property PACKAGE_PIN AM1 [get_ports {PcieRx_n[6]}]
set_property PACKAGE_PIN AM6 [get_ports {PcieTx_p[6]}]
set_property PACKAGE_PIN AM5 [get_ports {PcieTx_n[6]}]
set_property PACKAGE_PIN AP2 [get_ports {PcieRx_p[7]}]
set_property PACKAGE_PIN AP1 [get_ports {PcieRx_n[7]}]
set_property PACKAGE_PIN AN4 [get_ports {PcieTx_p[7]}]
set_property PACKAGE_PIN AN3 [get_ports {PcieTx_n[7]}]

create_interface PCIe
set_property INTERFACE PCIe [get_ports { PcieRx_p[7] PcieRx_p[6] PcieRx_p[5] PcieRx_p[4] PcieRx_p[3] PcieRx_p[2] PcieRx_p[1] PcieRx_p[0] PcieRx_n[7] PcieRx_n[6] PcieRx_n[5] PcieRx_n[4] PcieRx_n[3] PcieRx_n[2] PcieRx_n[1] PcieRx_n[0] PcieTx_p[7] PcieTx_p[6] PcieTx_p[5] PcieTx_p[4] PcieTx_p[3] PcieTx_p[2] PcieTx_p[1] PcieTx_p[0] PcieTx_n[7] PcieTx_n[6] PcieTx_n[5] PcieTx_n[4] PcieTx_n[3] PcieTx_n[2] PcieTx_n[1] PcieTx_n[0] PcieRefClk_p PcieRefClk_n}]

##############
# CICADA
##############
# Buffer enables
set_property PACKAGE_PIN K11 [get_ports {aCicada3v3BufEn_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {aCicada3v3BufEn_n}]
# Reset
set_property PACKAGE_PIN K13 [get_ports {aCicadaReset_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {aCicadaReset_n}]
#JTAG
set_property PACKAGE_PIN G10 [get_ports {aCicadaJtagReset_n}]
set_property PACKAGE_PIN G11 [get_ports {aCicadaBoundScanEn}]
set_property IOSTANDARD LVCMOS18 [get_ports {aCicadaJtagReset_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {aCicadaBoundScanEn}]
# TClk / TDC
#set_property PACKAGE_PIN F10 [get_ports {dtTclkOut}]
#set_property IOSTANDARD LVCMOS18 [get_ports dtTclkOut]

# IsoPort Clocks
set_property PACKAGE_PIN H12 [get_ports {IsoPortRxClk}]
set_property PACKAGE_PIN C13 [get_ports {IsoPortTxClk}]
set_property IOSTANDARD LVCMOS18 [get_ports IsoPort?xClk]
# IsoPort Data
set_property PACKAGE_PIN H13 [get_ports {irIsoPortRxData[0]}]
set_property PACKAGE_PIN J13 [get_ports {irIsoPortRxData[1]}]
set_property PACKAGE_PIN J11 [get_ports {irIsoPortRxData[2]}]
set_property PACKAGE_PIN G12 [get_ports {irIsoPortRxData[3]}]
set_property PACKAGE_PIN D13 [get_ports {itIsoPortTxData[0]}]
set_property PACKAGE_PIN E13 [get_ports {itIsoPortTxData[1]}]
set_property PACKAGE_PIN E12 [get_ports {itIsoPortTxData[2]}]
set_property PACKAGE_PIN F12 [get_ports {itIsoPortTxData[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports i?IsoPort?xData]

create_interface Cicada
set_property INTERFACE Cicada [get_ports { irIsoPortRxData[3] irIsoPortRxData[2] irIsoPortRxData[1] irIsoPortRxData[0] itIsoPortTxData[3] itIsoPortTxData[2] itIsoPortTxData[1] itIsoPortTxData[0] IsoPortRxClk IsoPortTxClk dtTclkOut}]

#Reserved signals
set_property PACKAGE_PIN AP34 [get_ports {aFpgaToCicadaRsvd[0]}]
set_property PACKAGE_PIN AN34 [get_ports {aFpgaToCicadaRsvd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {aFpgaToCicadaRsvd*}]

##############
# Onboard TDC
##############
set_property PACKAGE_PIN A8 [get_ports {aTdcAllPeclEn}]
set_property PACKAGE_PIN AN27 [get_ports {dvTdcAssert}]
set_property PACKAGE_PIN AN28 [get_ports {sTdcDeassert}]
set_property PACKAGE_PIN AL24 [get_ports {aTdcExpandedPulse_p}]
set_property PACKAGE_PIN AL25 [get_ports {aTdcExpandedPulse_n}]

set_property IOSTANDARD LVCMOS18 [get_ports aTdcAllPeclEn]
set_property IOSTANDARD LVCMOS18 [get_ports dvTdcAssert]
set_property IOSTANDARD LVCMOS18 [get_ports sTdcDeassert]
set_property IOSTANDARD LVDS [get_ports aTdcExpandedPulse_p]
make_diff_pair_ports aTdcExpandedPulse_p aTdcExpandedPulse_n -quiet


##############
# PXI
##############
# Clocking
set_property PACKAGE_PIN N26 [get_ports {PxieClk100_n}]
set_property PACKAGE_PIN P26 [get_ports {PxieClk100_p}]
set_property IOSTANDARD LVDS_25 [get_ports PxieClk100_p]
make_diff_pair_ports PxieClk100_p PxieClk100_n -quiet

set_property PACKAGE_PIN M26 [get_ports {pPxieSync100_n}]
set_property PACKAGE_PIN M25 [get_ports {pPxieSync100_p}]
set_property IOSTANDARD LVDS_25 [get_ports pPxieSync100_p]
make_diff_pair_ports pPxieSync100_p pPxieSync100_n -quiet

# Removing until Osc100ClkIn starts working.
set_property PACKAGE_PIN N24 [get_ports {Osc100ClkIn}]
set_property IOSTANDARD LVCMOS18 [get_ports {Osc100ClkIn}]

set_property PACKAGE_PIN F9 [get_ports {pClk10GenD}]
set_property IOSTANDARD LVCMOS18 [get_ports pClk10GenD]

# Triggers
set_property PACKAGE_PIN K10 [get_ports {aPxiTrigData[0]}]
set_property PACKAGE_PIN H8 [get_ports {aPxiTrigData[1]}]
set_property PACKAGE_PIN J8 [get_ports {aPxiTrigData[2]}]
set_property PACKAGE_PIN H9 [get_ports {aPxiTrigData[3]}]
set_property PACKAGE_PIN J9 [get_ports {aPxiTrigData[4]}]
set_property PACKAGE_PIN K8 [get_ports {aPxiTrigData[5]}]
set_property PACKAGE_PIN G9 [get_ports {aPxiTrigData[6]}]
set_property PACKAGE_PIN K12 [get_ports {aPxiTrigData[7]}]
set_property PACKAGE_PIN J10 [get_ports {aPxiStarData}]
set_property IOSTANDARD LVCMOS18 [get_ports {aPxiTrigData[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports {aPxiStarData}]

# Diff Triggers
set_property PACKAGE_PIN B12 [get_ports {aPxieDStarB_n}]
set_property PACKAGE_PIN C12 [get_ports {aPxieDStarB_p}]
set_property IOSTANDARD LVDS [get_ports aPxieDStarB_p]
set_property DIFF_TERM_ADV TERM_100 [get_ports aPxieDStarB_p]
make_diff_pair_ports aPxieDStarB_p aPxieDStarB_n -quiet

set_property PACKAGE_PIN A12 [get_ports {aPxieDStarC_n}]
set_property PACKAGE_PIN A13 [get_ports {aPxieDStarC_p}]
set_property IOSTANDARD LVDS [get_ports aPxieDStarC_p]
make_diff_pair_ports aPxieDStarC_p aPxieDStarC_n -quiet

# GA
set_property PACKAGE_PIN K25 [get_ports {aPxiGa[0]}]
set_property PACKAGE_PIN L25 [get_ports {aPxiGa[1]}]
set_property PACKAGE_PIN L24 [get_ports {aPxiGa[2]}]
set_property PACKAGE_PIN L23 [get_ports {aPxiGa[3]}]
set_property PACKAGE_PIN L27 [get_ports {aPxiGa[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {aPxiGa[*]}]

create_interface PXI
set_property INTERFACE PXI [get_ports { aPxiGa[4] aPxiGa[3] aPxiGa[2] aPxiGa[1] aPxiGa[0] aPxiTrigData[8] aPxiTrigData[7] aPxiTrigData[6] aPxiTrigData[5] aPxiTrigData[4] aPxiTrigData[3] aPxiTrigData[2] aPxiTrigData[1] aPxiTrigData[0] aPcieRst_n aPxieDStarB_n aPxieDStarB_p aPxieDStarC_n aPxieDStarC_p RefClk10_p RefClk10_n pPxieSync100_n pPxieSync100_p PxieClk100_p PxieClk100_n Osc100ClkIn}]

###################################################
# Aux IO
###################################################

# Data
set_property PACKAGE_PIN AK31 [get_ports {aAuxIoData[0]}]
set_property PACKAGE_PIN AK32 [get_ports {aAuxIoData[1]}]
set_property PACKAGE_PIN AH33 [get_ports {aAuxIoData[2]}]
set_property PACKAGE_PIN AJ33 [get_ports {aAuxIoData[3]}]
set_property PACKAGE_PIN AM26 [get_ports {aAuxIoData[4]}]
set_property PACKAGE_PIN AM27 [get_ports {aAuxIoData[5]}]
set_property PACKAGE_PIN AL27 [get_ports {aAuxIoData[6]}]
set_property PACKAGE_PIN AL28 [get_ports {aAuxIoData[7]}]
# Direction
set_property PACKAGE_PIN AJ30 [get_ports {aAuxIoOutputEn[0]}]
set_property PACKAGE_PIN AJ31 [get_ports {aAuxIoOutputEn[1]}]
set_property PACKAGE_PIN AH31 [get_ports {aAuxIoOutputEn[2]}]
set_property PACKAGE_PIN AH32 [get_ports {aAuxIoOutputEn[3]}]
set_property PACKAGE_PIN AH26 [get_ports {aAuxIoOutputEn[4]}]
set_property PACKAGE_PIN AJ26 [get_ports {aAuxIoOutputEn[5]}]
set_property PACKAGE_PIN AK26 [get_ports {aAuxIoOutputEn[6]}]
set_property PACKAGE_PIN AK27 [get_ports {aAuxIoOutputEn[7]}]
# Control / Monitoring
set_property PACKAGE_PIN AN23 [get_ports {aAuxIoEnable_n}]
set_property PACKAGE_PIN E10 [get_ports {aAux3v3Fault_n}]
set_property PACKAGE_PIN AK25 [get_ports {aAux3v3Enable}]
set_property PACKAGE_PIN AM25 [get_ports {aAux5vEnable}]
set_property PACKAGE_PIN AP23 [get_ports {aAuxVccAEnable}]
# IO Standards
set_property IOSTANDARD LVCMOS18 [get_ports {aAuxIo*}]
set_property IOSTANDARD LVCMOS18 [get_ports {aAux3v3*}]
set_property IOSTANDARD LVCMOS18 [get_ports {aAuxVccAEnable}]
set_property IOSTANDARD LVCMOS18 [get_ports {aAux5vEnable}]
# Pulls
set_property PULLTYPE PULLDOWN [get_ports {aAuxIoData*}]

###################################################
# Board Control
###################################################
# Monitoring SMBus
set_property PACKAGE_PIN B10 [get_ports {bBaseSmbScl}]
set_property PACKAGE_PIN A10 [get_ports {bBaseSmbSda}]
set_property PACKAGE_PIN H11 [get_ports {aBaseSmbAlert_n}]
# Control I2C Bus
set_property PACKAGE_PIN AK33 [get_ports {bConfigI2cScl}]
set_property PACKAGE_PIN AH29 [get_ports {bConfigI2cSda}]
# Power supply PMBus
set_property PACKAGE_PIN AP21 [get_ports {bPwrSupplyPmbScl}]
set_property PACKAGE_PIN AP20 [get_ports {bPwrSupplyPmbSda}]
set_property PACKAGE_PIN AM24 [get_ports {aPwrSupplyPmbAlert_n}]
# AuxIO Vcc Potentiometer SPI
set_property PACKAGE_PIN A9 [get_ports {bDigiPotSclk}]
set_property PACKAGE_PIN B9 [get_ports {bDigiPotMosi}]
set_property PACKAGE_PIN E8 [get_ports {bDigiPotMiso}]
set_property PACKAGE_PIN F8 [get_ports {bDigiPotSync_n}]
# Clock enables
set_property PACKAGE_PIN AD24 [get_ports {aIoRefClk100En}]
set_property PACKAGE_PIN AF25 [get_ports {aIoRefClk10En}]
set_property PACKAGE_PIN AJ29 [get_ports {aIoRefSelClk100}]
# Authentication chip
set_property PACKAGE_PIN R23 [get_ports {aAuthSda}]
# POSC Enable
#TODO Add this back in
#set_property PACKAGE_PIN R27 [get_ports {aPoscEn}]

set_property IOSTANDARD LVCMOS18 [get_ports {bBaseSmb*}]
set_property IOSTANDARD LVCMOS18 [get_ports {aBaseSmbAlert_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {bConfigI2c*}]
set_property IOSTANDARD LVCMOS18 [get_ports {aIoRefClk*}]
set_property IOSTANDARD LVCMOS18 [get_ports {aIoRefSelClk100}]
set_property IOSTANDARD LVCMOS18 [get_ports {bPwrSupplyPmb*}]
set_property IOSTANDARD LVCMOS18 [get_ports {aPwrSupplyPmbAlert_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {bDigiPot*}]
set_property IOSTANDARD LVCMOS18 [get_ports {aAuthSda}]
#set_property IOSTANDARD LVCMOS18 [get_ports {aPoscEn}]


###################################################
# CPLD
###################################################
set_property PACKAGE_PIN AM20 [get_ports {SidebandClk}]
set_property PACKAGE_PIN AL20 [get_ports {sSidebandDataOut[0]}]
set_property PACKAGE_PIN AK20 [get_ports {sSidebandDataOut[1]}]
set_property PACKAGE_PIN AJ20 [get_ports {sSidebandDataOut[2]}]
set_property PACKAGE_PIN AL23 [get_ports {sSidebandDataOut[3]}]
set_property PACKAGE_PIN AL22 [get_ports {aSidebandDataIn}]
set_property PACKAGE_PIN AK22 [get_ports {aSidebandFifoFull}]
set_property PACKAGE_PIN L22  [get_ports {aFpgaStage2Done}]

set_property IOSTANDARD LVCMOS18 [get_ports {SidebandClk}]
set_property IOSTANDARD LVCMOS18 [get_ports {sSidebandDataOut[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports {aSidebandDataIn}]
set_property IOSTANDARD LVCMOS18 [get_ports {aSidebandFifoFull}]
set_property IOSTANDARD LVCMOS18 [get_ports {aFpgaStage2Done}]

set_property PULLTYPE PULLUP [get_ports {aSidebandDataIn}]

###################################################
# Loopback
###################################################
set_property PACKAGE_PIN D8 [get_ports {aFpgaLoopbackIn_p}]
set_property PACKAGE_PIN C8 [get_ports {aFpgaLoopbackIn_n}]
set_property IOSTANDARD LVDS [get_ports aFpgaLoopbackIn_p]
make_diff_pair_ports aFpgaLoopbackIn_p aFpgaLoopbackIn_n -quiet
set_property PACKAGE_PIN D9 [get_ports {aFpgaLoopbackOut_p}]
set_property PACKAGE_PIN C9 [get_ports {aFpgaLoopbackOut_n}]
set_property IOSTANDARD LVDS [get_ports aFpgaLoopbackOut_p]
make_diff_pair_ports aFpgaLoopbackOut_p aFpgaLoopbackOut_p -quiet

###################################################
# System Monitor
###################################################
set_property PACKAGE_PIN N21  [get_ports {aSysMonI2cScl}]
set_property PACKAGE_PIN M21  [get_ports {aSysMonI2cSda}]

set_property PACKAGE_PIN AD10 [get_ports {aSysMon1v8MgtDivided_p}]
set_property PACKAGE_PIN AD11 [get_ports {aSysMonVccAuxADivided_p}]
set_property PACKAGE_PIN AD9  [get_ports {aSysMon1v8SwDivided_p}]
set_property PACKAGE_PIN AE12 [get_ports {aSysMon3v3CpldDivided_p}]
set_property PACKAGE_PIN AE13 [get_ports {aSysMon3v3IoDivided_p}]
set_property PACKAGE_PIN AE8  [get_ports {aSysMonVppDivided_p}]
set_property PACKAGE_PIN AH13 [get_ports {aSysMon3v3AuxDivided_p}]
set_property PACKAGE_PIN AH9  [get_ports {aSysMon1v2MgtDivided_p}]
set_property PACKAGE_PIN AK10 [get_ports {aSysMon1v0MgtDivided_p}]
set_property PACKAGE_PIN AK12 [get_ports {aSysMon3v8IntDivided_p}]
set_property PACKAGE_PIN AK13 [get_ports {aSysMon3v3ClkDivided_p}]
set_property PACKAGE_PIN AL10 [get_ports {aSysMon1v2ADivided_p}]
set_property PACKAGE_PIN AM11 [get_ports {aSysMonVtt0v6Sense_p}]
set_property PACKAGE_PIN AM12 [get_ports {aSysMon5vAuxDivided_p}]
set_property PACKAGE_PIN AN9  [get_ports {aSysMon1v2CicadaDivided_p}]
set_property PACKAGE_PIN AN8  [get_ports {aSysMonDdrVrefSense_p}]

set_property PACKAGE_PIN AE10 [get_ports {aSysMon1v8MgtDivided_n}]
set_property PACKAGE_PIN AE11 [get_ports {aSysMonVccAuxADivided_n}]
set_property PACKAGE_PIN AD8  [get_ports {aSysMon1v8SwDivided_n}]
set_property PACKAGE_PIN AF12 [get_ports {aSysMon3v3CpldDivided_n}]
set_property PACKAGE_PIN AF13 [get_ports {aSysMon3v3IoDivided_n}]
set_property PACKAGE_PIN AF8  [get_ports {aSysMonVppDivided_n}]
set_property PACKAGE_PIN AJ13 [get_ports {aSysMon3v3AuxDivided_n}]
set_property PACKAGE_PIN AH8  [get_ports {aSysMon1v2MgtDivided_n}]
set_property PACKAGE_PIN AL9  [get_ports {aSysMon1v0MgtDivided_n}]
set_property PACKAGE_PIN AL12 [get_ports {aSysMon3v8IntDivided_n}]
set_property PACKAGE_PIN AL13 [get_ports {aSysMon3v3ClkDivided_n}]
set_property PACKAGE_PIN AM10 [get_ports {aSysMon1v2ADivided_n}]
set_property PACKAGE_PIN AN11 [get_ports {aSysMonVtt0v6Sense_n}]
set_property PACKAGE_PIN AN12 [get_ports {aSysMon5vAuxDivided_n}]
set_property PACKAGE_PIN AP9  [get_ports {aSysMon1v2CicadaDivided_n}]
set_property PACKAGE_PIN AP8  [get_ports {aSysMonDdrVrefSense_n}]

set_property IOSTANDARD ANALOG [get_ports {aSysMon*}]

set_property IOSTANDARD LVCMOS18 [get_ports {aSysMonI2c*}]

###################################################
# CPLD Field Update JTAG
###################################################

set_property PACKAGE_PIN L13  [get_ports {aFldUpdJtagSel}]
set_property PACKAGE_PIN L8   [get_ports {bFldUpdJtagTck}]
set_property PACKAGE_PIN L12  [get_ports {bFldUpdJtagTdi}]
set_property PACKAGE_PIN AD16 [get_ports {aFldUpdJtagTdo}]
set_property PACKAGE_PIN L9   [get_ports {bFldUpdJtagTms}]

set_property IOSTANDARD LVCMOS18 [get_ports {*FldUpdJtag*}]




## Start add from file PinsFam.xdc
##############
# MGTs
##############
# RX
set_property PACKAGE_PIN Y2 [get_ports {MgtPortRx_p[0]}]
set_property PACKAGE_PIN V2 [get_ports {MgtPortRx_p[1]}]
set_property PACKAGE_PIN T2 [get_ports {MgtPortRx_p[2]}]
set_property PACKAGE_PIN P2 [get_ports {MgtPortRx_p[3]}]
set_property PACKAGE_PIN M2 [get_ports {MgtPortRx_p[4]}]
set_property PACKAGE_PIN K2 [get_ports {MgtPortRx_p[5]}]
set_property PACKAGE_PIN H2 [get_ports {MgtPortRx_p[6]}]
set_property PACKAGE_PIN F2 [get_ports {MgtPortRx_p[7]}]
set_property PACKAGE_PIN Y1 [get_ports {MgtPortRx_n[0]}]
set_property PACKAGE_PIN V1 [get_ports {MgtPortRx_n[1]}]
set_property PACKAGE_PIN T1 [get_ports {MgtPortRx_n[2]}]
set_property PACKAGE_PIN P1 [get_ports {MgtPortRx_n[3]}]
set_property PACKAGE_PIN M1 [get_ports {MgtPortRx_n[4]}]
set_property PACKAGE_PIN K1 [get_ports {MgtPortRx_n[5]}]
set_property PACKAGE_PIN H1 [get_ports {MgtPortRx_n[6]}]
set_property PACKAGE_PIN F1 [get_ports {MgtPortRx_n[7]}]
# TX
set_property PACKAGE_PIN AA4 [get_ports {MgtPortTx_p[0]}]
set_property PACKAGE_PIN W4  [get_ports {MgtPortTx_p[1]}]
set_property PACKAGE_PIN U4  [get_ports {MgtPortTx_p[2]}]
set_property PACKAGE_PIN R4  [get_ports {MgtPortTx_p[3]}]
set_property PACKAGE_PIN N4  [get_ports {MgtPortTx_p[4]}]
set_property PACKAGE_PIN L4  [get_ports {MgtPortTx_p[5]}]
set_property PACKAGE_PIN J4  [get_ports {MgtPortTx_p[6]}]
set_property PACKAGE_PIN G4  [get_ports {MgtPortTx_p[7]}]
set_property PACKAGE_PIN AA3 [get_ports {MgtPortTx_n[0]}]
set_property PACKAGE_PIN W3  [get_ports {MgtPortTx_n[1]}]
set_property PACKAGE_PIN U3  [get_ports {MgtPortTx_n[2]}]
set_property PACKAGE_PIN R3  [get_ports {MgtPortTx_n[3]}]
set_property PACKAGE_PIN N3  [get_ports {MgtPortTx_n[4]}]
set_property PACKAGE_PIN L3  [get_ports {MgtPortTx_n[5]}]
set_property PACKAGE_PIN J3  [get_ports {MgtPortTx_n[6]}]
set_property PACKAGE_PIN G3  [get_ports {MgtPortTx_n[7]}]

# RefClks
set_property PACKAGE_PIN T6 [get_ports {MgtRefClk_p[0]}]
set_property PACKAGE_PIN P6 [get_ports {MgtRefClk_p[1]}]
set_property PACKAGE_PIN M5 [get_ports {MgtRefClk_n[2]}]
set_property PACKAGE_PIN T5 [get_ports {MgtRefClk_n[0]}]
set_property PACKAGE_PIN P5 [get_ports {MgtRefClk_n[1]}]
set_property PACKAGE_PIN M6  [get_ports {MgtRefClk_p[2]}]

make_diff_pair_ports MgtRefClk_p[0] MgtRefClk_n[0] -quiet
make_diff_pair_ports MgtRefClk_p[1] MgtRefClk_n[1] -quiet
make_diff_pair_ports MgtRefClk_p[2] MgtRefClk_n[2] -quiet

create_interface FamMgtPlane
set_property INTERFACE FamMgtPlane [get_ports { MgtPortRx_n[7] MgtPortRx_n[6] MgtPortRx_n[5] MgtPortRx_n[4] MgtPortRx_n[3] MgtPortRx_n[2] MgtPortRx_n[1] MgtPortRx_n[0] MgtPortRx_p[7] MgtPortRx_p[6] MgtPortRx_p[5] MgtPortRx_p[4] MgtPortRx_p[3] MgtPortRx_p[2] MgtPortRx_p[1] MgtPortRx_p[0] MgtPortTx_n[7] MgtPortTx_n[6] MgtPortTx_n[5] MgtPortTx_n[4] MgtPortTx_n[3] MgtPortTx_n[2] MgtPortTx_n[1] MgtPortTx_n[0] MgtPortTx_p[7] MgtPortTx_p[6] MgtPortTx_p[5] MgtPortTx_p[4] MgtPortTx_p[3] MgtPortTx_p[2] MgtPortTx_p[1] MgtPortTx_p[0] MgtRefClk_p[2] MgtRefClk_p[1] MgtRefClk_p[0] MgtRefClk_n[2] MgtRefClk_n[1] MgtRefClk_n[0] }]

# This should keep Xilinx from complaining whenever we don't connect anything to the MGTs.
set_property SEVERITY {Warning} [get_drc_checks RPBF-1]

##############
# Synchronization
##############
# Clocking
set_property PACKAGE_PIN AM29 [get_ports {DeviceClk_n}]
set_property PACKAGE_PIN AL29 [get_ports {DeviceClk_p}]
set_property IOSTANDARD LVDS [get_ports DeviceClk_p]
set_property DIFF_TERM_ADV TERM_100 [get_ports DeviceClk_p]
make_diff_pair_ports DataClk_p      DeviceClk_n -quiet
# JESD SubClass 1
set_property PACKAGE_PIN AP26 [get_ports {dvJesd204SysRef_n}]
set_property PACKAGE_PIN AN26 [get_ports {dvJesd204SysRef_p}]
set_property IOSTANDARD LVDS [get_ports dvJesd204SysRef_p]
set_property DIFF_TERM_ADV TERM_100 [get_ports dvJesd204SysRef_p]
make_diff_pair_ports dtSysRef_p  dvJesd204SysRef_n -quiet

set_property PACKAGE_PIN AN32 [get_ports {aJesd204SyncReqIn_n}]
set_property PACKAGE_PIN AN31 [get_ports {aJesd204SyncReqOut_n}]
set_property IOSTANDARD LVCMOS18 [get_ports aJesd204SyncReq*_n]
# Triggering
set_property PACKAGE_PIN AP29 [get_ports {aGpoSync[1]}]
set_property PACKAGE_PIN AP28 [get_ports {aGpoSync[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {aGpoSync*}]

set_property PACKAGE_PIN AP18 [get_ports {aTriggerIn_n}]
set_property PACKAGE_PIN AN19 [get_ports {aTriggerIn_p}]
set_property IOSTANDARD LVDS [get_ports aTriggerIn_p]
set_property DIFF_TERM_ADV TERM_100 [get_ports aTriggerIn_p]
make_diff_pair_ports aTriggerIn_p   aTriggerIn_n -quiet

set_property PACKAGE_PIN AM14 [get_ports {aTriggerOut_n}]
set_property PACKAGE_PIN AL14 [get_ports {aTriggerOut_p}]
set_property IOSTANDARD LVDS [get_ports aTriggerOut_p]
make_diff_pair_ports aTriggerOut_p  aTriggerOut_n -quiet

# Interface
create_interface FamSynchronizationPlane
set_property INTERFACE FamSynchronizationPlane [get_ports { aTriggerIn_p aTriggerIn_n aGpoSync* aTriggerOut_n aTriggerOut_p DataClk_p DataClk_n dtSyncReqRx_n dtSyncReqTx_n dtSysRef_p dtSysRef_n }]

##############
# Configuration
##############
# Config Bus
set_property PACKAGE_PIN AK17 [get_ports {aConfigTxClkLvds_p}]
set_property PACKAGE_PIN AK16 [get_ports {aConfigTxClkLvds_n}]
make_diff_pair_ports aConfigTxClkLvds_p aConfigTxClkLvds_n -quiet
set_property IOSTANDARD LVDS [get_ports aConfigTxClkLvds_p]

set_property PACKAGE_PIN AD18 [get_ports {aConfigTxClkSe}]
set_property PACKAGE_PIN AD19 [get_ports {aConfigTxDataSe[0]}]
set_property PACKAGE_PIN AF15 [get_ports {aConfigTxDataSe[1]}]
set_property PACKAGE_PIN AF18 [get_ports {aConfigTxDataSe[2]}]
set_property PACKAGE_PIN AE16 [get_ports {aConfigTxDataSe[3]}]
set_property PACKAGE_PIN AE17 [get_ports {aConfigTxDataSe[4]}]
set_property PACKAGE_PIN AG14 [get_ports {aConfigTxDataSe[5]}]
set_property PACKAGE_PIN AG15 [get_ports {aConfigTxDataSe[6]}]

set_property PACKAGE_PIN AJ18 [get_ports {aConfigRxClkLvds_p}]
set_property PACKAGE_PIN AK18 [get_ports {aConfigRxClkLvds_n}]
make_diff_pair_ports aConfigRxClkLvds_p aConfigRxClkLvds_n -quiet
set_property IOSTANDARD LVDS [get_ports aConfigRxClkLvds_p]
set_property DIFF_TERM_ADV TERM_100 [get_ports aConfigRxClkLvds_p]

set_property PACKAGE_PIN AH16 [get_ports {aConfigRxClkSe}]
set_property PACKAGE_PIN AF14 [get_ports {aConfigRxDataSe[0]}]
set_property PACKAGE_PIN AE18 [get_ports {aConfigRxDataSe[1]}]
set_property PACKAGE_PIN AE15 [get_ports {aConfigRxDataSe[2]}]
set_property PACKAGE_PIN AK15 [get_ports {aConfigRxDataSe[3]}]
set_property PACKAGE_PIN AL15 [get_ports {aConfigRxDataSe[4]}]
set_property PACKAGE_PIN AL19 [get_ports {aConfigRxDataSe[5]}]
set_property PACKAGE_PIN AM19 [get_ports {aConfigRxDataSe[6]}]
set_property PULLTYPE PULLDOWN [get_ports {aConfigRx*Se*}]

set_property PACKAGE_PIN AG17 [get_ports {aModulePresent_n}]
set_property IOB TRUE [get_ports aConfig*]
set configDataSe [get_ports aConfig?xData*]
set configClocksSe [get_ports aConfig?xClkSe]
set_property IOSTANDARD LVCMOS18 [get_ports $configDataSe]
set_property IOSTANDARD LVCMOS18 [get_ports $configClocksSe]
set_property IOSTANDARD LVCMOS18 [get_ports {aModulePresent_n}]

set_property PACKAGE_PIN AJ15 [get_ports {aIoSmbAlert_n}]
set_property PACKAGE_PIN AJ14 [get_ports {bIoSmbScl}]
set_property PACKAGE_PIN AG19 [get_ports {bIoSmbSda}]
set IoSmbPorts [get_ports ?IoSmb*]
set_property IOSTANDARD LVCMOS18 [get_ports $IoSmbPorts]

# Reserved Config Rx Pin
set_property PACKAGE_PIN AG16 [get_ports aFamPowerGood]
set_property IOSTANDARD LVCMOS18 [get_ports aFamPowerGood]
set_property PULLTYPE PULLDOWN [get_ports aFamPowerGood]

# GPIO
set_property PACKAGE_PIN AN16 [get_ports {aRsrvGpio_n[0]}]
set_property PACKAGE_PIN AM15 [get_ports {aRsrvGpio_n[1]}]
set_property PACKAGE_PIN AN17 [get_ports {aRsrvGpio_n[2]}]
set_property PACKAGE_PIN AP15 [get_ports {aRsrvGpio_n[3]}]
set_property PACKAGE_PIN AP14 [get_ports {aRsrvGpio_n[4]}]
set_property PACKAGE_PIN AM17 [get_ports {aRsrvGpio_p[0]}]
set_property PACKAGE_PIN AM16 [get_ports {aRsrvGpio_p[1]}]
set_property PACKAGE_PIN AN18 [get_ports {aRsrvGpio_p[2]}]
set_property PACKAGE_PIN AP16 [get_ports {aRsrvGpio_p[3]}]
set_property PACKAGE_PIN AN14 [get_ports {aRsrvGpio_p[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {aRsrvGpio_?[*]}]

#Interface
create_interface FamConfigPlane
set rsvdGpioPorts [get_ports aRsrvGpio_*]
set_property INTERFACE FamConfigPlane [get_ports [list $configDataSe $configClocksSe $IoSmbPorts $rsvdGpioPorts]]


## Start add from file PinsAuxMgt.xdc

# All RX lanes are lane- and polarity-inverted.
set_property PACKAGE_PIN A3 [get_ports {AuxIoMgtRx_n[0]}]
set_property PACKAGE_PIN B1 [get_ports {AuxIoMgtRx_n[1]}]
set_property PACKAGE_PIN D1 [get_ports {AuxIoMgtRx_n[2]}]
set_property PACKAGE_PIN E3 [get_ports {AuxIoMgtRx_n[3]}]
set_property PACKAGE_PIN A4 [get_ports {AuxIoMgtRx_p[0]}]
set_property PACKAGE_PIN B2 [get_ports {AuxIoMgtRx_p[1]}]
set_property PACKAGE_PIN D2 [get_ports {AuxIoMgtRx_p[2]}]
set_property PACKAGE_PIN E4 [get_ports {AuxIoMgtRx_p[3]}]

# All TX lanes are lane-inverted.
# All TX lanes but Tx(0) are polarity-inverted
set_property PACKAGE_PIN B5 [get_ports {AuxIoMgtTx_n[0]}]
set_property PACKAGE_PIN C3 [get_ports {AuxIoMgtTx_n[1]}]
set_property PACKAGE_PIN D5 [get_ports {AuxIoMgtTx_n[2]}]
set_property PACKAGE_PIN F5 [get_ports {AuxIoMgtTx_n[3]}]
set_property PACKAGE_PIN B6 [get_ports {AuxIoMgtTx_p[0]}]
set_property PACKAGE_PIN C4 [get_ports {AuxIoMgtTx_p[1]}]
set_property PACKAGE_PIN D6 [get_ports {AuxIoMgtTx_p[2]}]
set_property PACKAGE_PIN F6 [get_ports {AuxIoMgtTx_p[3]}]
set_property PACKAGE_PIN K5 [get_ports {AuxIoMgtRefClk_n}]
set_property PACKAGE_PIN K6 [get_ports {AuxIoMgtRefClk_p}]


## Start add from file PBlocksKU40.xdc
############################
# TANDEM CONSTRAINTS SECTION
############################

## -------------------------------------------------
## PCIe IP PBlock
## -------------------------------------------------
set pciePblock [create_pblock  PcieGen3x8_US_HardIp_Stage1_main]
resize_pblock $pciePblock -add {SLICE_X84Y0:SLICE_X100Y59 \
SLICE_X87Y60:SLICE_X88Y119 \
SLICE_X98Y0:SLICE_X100Y119 \
RAMB18_X8Y0:RAMB18_X9Y23 \
RAMB36_X8Y0:RAMB36_X9Y11 \
GTHE3_CHANNEL_X0Y0:GTHE3_CHANNEL_X0Y7 \
GTHE3_COMMON_X0Y0:GTHE3_COMMON_X0Y1 \
PCIE_3_1_X0Y0 \
CONFIG_SITE_X0Y0}

## -------------------------------------------------
## Bank 65 (Config Bank) Pblock
## -------------------------------------------------

set cfgiobPblock [create_pblock  Stage1_cfgiob]
resize_pblock $cfgiobPblock -add {IOB_X1Y52:IOB_X1Y103 \
SLICE_X49Y60:SLICE_X49Y119 \
MMCME3_ADV_X1Y1 \
PLLE3_ADV_X1Y2:PLLE3_ADV_X1Y3 \
PLL_SELECT_SITE_X1Y8:PLL_SELECT_SITE_X1Y15 \
BITSLICE_CONTROL_X1Y8:BITSLICE_CONTROL_X1Y15 \
BITSLICE_TX_X1Y8:BITSLICE_TX_X1Y15 \
BITSLICE_RX_TX_X1Y52:BITSLICE_RX_TX_X1Y103 \
XIPHY_FEEDTHROUGH_X4Y1:XIPHY_FEEDTHROUGH_X7Y1 \
RIU_OR_X1Y4:RIU_OR_X1Y7}


## Start add from file TandemCommon.xdc
## -------------------------------------------------
## Tandem IP_BLOCK Properties
## -------------------------------------------------

# It's unclear what the HD_TANDEM_IP_PBLOCK property does, but Xilinx started adding these
# properties to their PCIe IP circa 2016.3, and 2017.2 bitgen doesn't seem to do the right
# thing without them. We expect that $pciePblock and $cfgiobPorts are PBlocks that have
# been declared beforehand.
set_property HD.TANDEM_IP_PBLOCK Stage1_Main      $pciePblock
set_property HD.TANDEM_IP_PBLOCK Stage1_Config_IO $cfgiobPblock

## -------------------------------------------------
## Locations
## -------------------------------------------------

# Create some shorthand to the location of the InchWorm Netlist
set inchwormPciePath {HostInterfacex/Inchwormx/InchwormNetlist/PcieIpWrapper}
set hardIpPath "${inchwormPciePath}/PcieIp/inst"

# The following DONT_TOUCH property is extremely important to have when compiling for a
# Tandem flow. This property ensures that the XILINX "PcieIp/inst" IP ports
# are not optimized out during compilation and, therefore, preserves the critical TANDEM
# pins such as "mcap_eos_in" and "mcap_design_switch"
set_property DONT_TOUCH TRUE [get_cells $hardIpPath]

## -----------------------------------------------
## PCIe Core and Ports
## -----------------------------------------------

set_property HD.TANDEM 1 [get_ports PcieRefClk_*]
set_property HD.TANDEM 1 [get_ports PcieRx_*]
set_property HD.TANDEM 1 [get_ports PcieTx_*]

set_property HD.TANDEM 1 [get_pins ${hardIpPath}/ext_qpll1lock_out]
set_property HD.TANDEM 1 [get_pins ${hardIpPath}/ext_qpll1outclk_out]
set_property HD.TANDEM 1 [get_pins ${hardIpPath}/ext_qpll1outrefclk_out]

set_property HD.TANDEM 1 [get_cells ${inchwormPciePath}/PcieRefClkIBufds]
set_property HD.TANDEM 1 [get_cells $hardIpPath]

add_cells_to_pblock [get_pblocks $pciePblock]   [get_cells $inchwormPciePath/PcieRefClkIBufds]
add_cells_to_pblock [get_pblocks $pciePblock]   [get_cells $hardIpPath]

## -------------------------------------------------
## Config Bank (Bank 65) Ports and Cells
## -------------------------------------------------

# We need to get all the ports connecting to the config bank (Bank 65) added to tandem.
set cfgiobPorts [get_ports -filter {IOBANK == 65}]
set_property HD.TANDEM 1 $cfgiobPorts

# Add specific clocking and I/O cells that need to be in the Stage1 PBlock but give us trouble when we're trying to use a cover-all constraint in Vivado 2015.4. They're all conveniently packed into appropriately named cells.
set cfgiobCellsTiming [get_cells TimingEnginex/TimingStage1x ]
set cfgiobCellsIO     [get_cells MacallanIoBuffersStage1x/*]

# Add to Tandem and Pblock
set_property HD.TANDEM 1 $cfgiobCellsTiming
set_property HD.TANDEM 1 $cfgiobCellsIO
add_cells_to_pblock      $cfgiobPblock $cfgiobCellsTiming $cfgiobCellsIO

## -------------------------------------------------
## PCIe Block
## -------------------------------------------------

# Assigning to pcie PBlock
set_property HD.TANDEM 1 [get_cells TimingEnginex/TimingPcieBlockx]
add_cells_to_pblock [get_pblocks $pciePblock] [get_cells TimingEnginex/TimingPcieBlockx]


## Start add from file LvFpga.xdc
################################################################################
# The "LabVIEWFPGA_Macro" comments are replaced by LV FPGA when it generates constraints
#
# The BEGIN and END LV FPGA CONSTRAINTS tags are used to extract the LabVIEW FPGA
# generated constraints out of the constraints.xdc file in the Vivado Project Export
# for use in the GitHub Vivado workflow.
#
# In the GitHub Vivado workflow, the PERIOD, CLIP and FROM_TO sections are there so
# that we can manipulate those sections individually.

# BEGIN_LV_FPGA_CONSTRAINTS

# BEGIN_LV_FPGA_PERIOD_CONSTRAINTS

#LabVIEWFPGA_Macro macro_periodConstraints

# END_LV_FPGA_PERIOD_CONSTRAINTS

# BEGIN_LV_FPGA_CLIP_CONSTRAINTS

#LabVIEWFPGA_Macro macro_ClipConstraints

# END_LV_FPGA_CLIP_CONSTRAINTS

# BEGIN_LV_FPGA_FROM_TO_CONSTRAINTS

#LabVIEWFPGA_Macro macro_fromToConstraints

# END_LV_FPGA_FROM_TO_CONSTRAINTS

# END_LV_FPGA_CONSTRAINTS

################################################################################


## Start add from file GitHubCommon.xdc
##############################################################
# Insert custom constraints here for GitHub customized targets
##############################################################

# This section pulls in constraints that are specified in the CustomConstraintsFile setting in projectsettings.ini
#
# BEGIN_GITHUB_CUSTOM_CONSTRAINTS
#
#LabVIEWFPGAHDLTools_Macro macro_GitHubCustomConstraints
#
# END_GITHUB_CUSTOM_CONSTRAINTS

################################################################################


## Start add from file TimingTdc.xdc

#########################################################################################
## TClk and TDC
#########################################################################################
# Board trace lengths
set FpgaDevClkLen  2.239
set TdcDevClkLen   3.916
set TdcAssertLen   1.599
set FpgaClk100Len  2.108
set TdcClk100Len   4.290
set TdcDeassertLen 1.375

# DeviceClkBuffer is SY89833LMG -
# http://ww1.microchip.com/downloads/en/devicedoc/sy89833l.pdf
set DevClkBufDelayMax 0.020
set DevClkBufDelayMin 0.0

# PXIeClk100 buffer is ADCLK946
# http://www.analog.com/media/en/technical-documentation/data-sheets/ADCLK946.pdf
set PxieClk100BufDelayMax 0.028
set PxieClk100BufDelayMin 0.0

#NB4L52 Setup/hold
set NB4L52Setup 0.1
set NB4L52Hold  0.05

# dvTdcAssert output delay calculations
set MaxDevClkDelay [expr $DevClkBufDelayMax + ($TdcDevClkLen * 0.180)]
set MinDevClkDelay [expr $DevClkBufDelayMin + ($TdcDevClkLen * 0.120)]
set MaxTdcAssertDelay [expr $DevClkBufDelayMax + (($FpgaDevClkLen + $TdcAssertLen) * 0.180)]
set MinTdcAssertDelay [expr $DevClkBufDelayMin + (($FpgaDevClkLen + $TdcAssertLen) * 0.120)]

set TdcAssertMaxDelay [expr $NB4L52Setup  + $MaxTdcAssertDelay - $MinDevClkDelay]
set TdcAssertMinDelay [expr -$NB4L52Hold  + $MinTdcAssertDelay - $MaxDevClkDelay]
set_output_delay -clock [get_clocks -of_objects [get_ports DeviceClk_p]] -max $TdcAssertMaxDelay [get_ports dvTdcAssert]
set_output_delay -clock [get_clocks -of_objects [get_ports DeviceClk_p]] -min $TdcAssertMinDelay [get_ports dvTdcAssert]

# sTdcDeassert output delay calculations
set MaxClk100Delay [expr $PxieClk100BufDelayMax + ($TdcClk100Len * 0.180)]
set MinClk100Delay [expr $PxieClk100BufDelayMin + ($TdcClk100Len * 0.120)]
set MaxTdcDeassertDelay [expr $PxieClk100BufDelayMax + (($FpgaClk100Len + $TdcDeassertLen) * 0.180)]
set MinTdcDeassertDelay [expr $PxieClk100BufDelayMin + (($FpgaClk100Len + $TdcDeassertLen) * 0.120)]

set TdcDeassertMaxDelay [expr $NB4L52Setup  + $MaxTdcDeassertDelay - $MinClk100Delay]
set TdcDeassertMinDelay [expr -$NB4L52Hold  + $MinTdcDeassertDelay - $MaxClk100Delay]
set_output_delay -clock [get_clocks -of_objects [get_ports PxieClk100_p]] -max $TdcDeassertMaxDelay [get_ports sTdcDeassert]
set_output_delay -clock [get_clocks -of_objects [get_ports PxieClk100_p]] -min $TdcDeassertMinDelay [get_ports sTdcDeassert]


## Start add from file TimingPxiTrigs.xdc
# This constraints file assumes that there's a Routing CLIP, and that said routing CLIP creates amongst its constraints two variables:

# TriggerClipSyncPulseSrc
# TriggerClipSyncPulseDest

# The two variables identify the source/destination of FFs that we need to constrain wrt
# the PXI Trigger bus. Therefore, this constraints file needs to go after LVFPGA so that
# the variables will exist.

######### Board parameters.

set SignalPropMin 0.15
set SignalPropMax 0.8

set PxiClk100BufPropMin 0.15
set PxiClk100BufPropMax 0.22

set CicadaFpgaToBpPropMax 9.19
set CicadaFpgaToBpPropMin 3.45

set CicadaBpToFpgaPropMax 10.17
set CicadaBpToFpgaPropMin 3.5

# The external clock goes through a buffer and some propagation delays.
set Clk100DlyMax [expr $PxiClk100BufPropMax + $SignalPropMax]
set Clk100DlyMin [expr $PxiClk100BufPropMin + $SignalPropMin]

########## Port Definitions

set PxiTrigs [get_ports aPxiTrigData*]
set PxiStar  [get_ports aPxiStarData]
set Clk100   [get_clocks PxieClk100]

########## FPGA to Backplane

set Clk10TcoMax 20
set Clk10TcoMin  2

# We need to set a multicycle path from the SyncPulse, through the PxiTrig Ports, to
# Clk100 on the outside.

# Remember that a setup multicycle path of '1' is the default, and means that the data is
# latched on the edge following the launch edge. Increasing that multicycle path pushes
# the launch earlier in time relative to the latch edge. So if 1 means "latch on the next clock cycle", we need a value of 10 for "match on the clock cycle that is 10 from now".

set_multicycle_path -setup 10 -from [get_cells $TriggerClipSyncPulseSrc] \
-to [get_ports $PxiTrigs]

set_multicycle_path -hold 9 -from [get_cells $TriggerClipSyncPulseSrc] \
-to [get_ports $PxiTrigs]

# The data is externally slowed down by the CICADA and by its own propagation delay
# through the board.
set DataDlyMax [expr $CicadaFpgaToBpPropMax + $SignalPropMax]
set DataDlyMin [expr $CicadaFpgaToBpPropMin + $SignalPropMin]

# For the Max output delay, all our timing budget is in the TcoMax. So our Max delay
# starts with 100 ns (Clk10 period) - TcoMax. From there, we need to add everything that
# hurts us, and subtract everything that helps us. In this case, both the data and clock
# delays hurt us, because delaying either creates a longer TCO in relation with the "true"
# backplane Clk10.
set_output_delay -clock $Clk100 -max [expr (100 - $Clk10TcoMax) + $Clk100DlyMax + $DataDlyMax] \
[get_ports $PxiTrigs]

# Since hold is relative to the current clock edge, TcoMin is subtracted from 0.
set_output_delay -clock $Clk100 -min [expr (0 - $Clk10TcoMin) + $Clk100DlyMin + $DataDlyMin] \
[get_ports $PxiTrigs]

########## Backplane to FPGA

# We need to set a multicycle path from the external Clk100, through the trigger ports,
# into the TriggerClipSyncPulseDest FF.

set_multicycle_path -setup 10 -from [get_ports $PxiTrigs] \
-to [get_cells $TriggerClipSyncPulseDest]

set_multicycle_path -hold 9 -from [get_ports $PxiTrigs] \
-to [get_cells $TriggerClipSyncPulseDest]

# PXI Star needs its own, identical path.
set_multicycle_path -setup 10 -from [get_ports $PxiStar] \
-to [get_cells $TriggerClipSyncPulseDest]

set_multicycle_path -hold 9 -from [get_ports $PxiStar] \
-to [get_cells $TriggerClipSyncPulseDest]

# For input, we have a tsu and th to meet.
set Clk10Tsu 23
set Clk10Th  2

# The data is externally slowed down by the CICADA and by its own propagation delay
# through the board.
set DataDlyMax [expr $CicadaBpToFpgaPropMax + $SignalPropMax]
set DataDlyMin [expr $CicadaBpToFpgaPropMin + $SignalPropMin]

# Just like in the output version, Clk10Tsu is the extent of our timing budget. So our Max
# delay starts with 100 ns (Clk10 period) - Tsu., the rest of our helpful stuff will
# reduce from that delay, the rest of our hurtful stuff will add to the delay.

# In input delay calculations, the clock's delay works in our favor, so we subtract the
# minimum for max delay, and subtract the maximum for min delay.
set_input_delay -clock $Clk100 \
-max [expr (100 - $Clk10Tsu) + $DataDlyMax - $Clk100DlyMin] \
[get_ports $PxiTrigs]

# For Th, Th is the minimum guaranteed hold that we get from the trigger sender. So in
# this case it works in our favor.
set_input_delay -clock $Clk100 \
-min [expr $Clk10Th + $DataDlyMin - $Clk100DlyMax] \
[get_ports $PxiTrigs]

########## Backplane to FPGA - Star Trig

# The Star trigger goes through a different Cicada route with different propagation delay.
# So we need timing specifically for it.
set CicadaBpToFpgaPropMax 15.46
set CicadaBpToFpgaPropMin 6.55

# Other than the Cicada prop delay, everything else is the same.
set DataDlyMax [expr $CicadaBpToFpgaPropMax + $SignalPropMax]
set DataDlyMin [expr $CicadaBpToFpgaPropMin + $SignalPropMin]

set_input_delay -clock $Clk100 \
-max [expr (100 - $Clk10Tsu) + $DataDlyMax - $Clk100DlyMin] \
[get_ports $PxiStar]

set_input_delay -clock $Clk100 \
-min [expr $Clk10Th + $DataDlyMin - $Clk100DlyMax] \
[get_ports $PxiStar]


########### Direction control

# The tristate control for the Pxi Triggers comes directly from a BaRegPort, and we don't
# want timing analyzed there. So we'll false-path through the output Tristate pin on the
# iobuffers.
set pxibuffers [get_cells MacallanIoBuffersx/GenTriggers[*].PxiTrigBuf]
set pxibuffersTpins [get_pins -of $pxibuffers -filter {REF_PIN_NAME == T}]
set_false_path -through $pxibuffersTpins



