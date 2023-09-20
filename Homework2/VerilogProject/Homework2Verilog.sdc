## Generated SDC file "Homework2Verilog.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

## DATE    "Wed Sep 20 11:01:07 2023"

##
## DEVICE  "EP4CGX15BF14C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period 10.000 -waveform { 0.000 5.000 } [get_ports { clk }]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {CEP0}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {CET0}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {P0[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {P0[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {P0[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {P0[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {PE0}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {SR0}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {Q0[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {Q0[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {Q0[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {Q0[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.500 [get_ports {TC}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_ports {A0[0] A0[1] B0[0] B0[1] Equals0}] 


#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

