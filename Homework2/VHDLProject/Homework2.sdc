## Generated SDC file "Homework2.sdc"

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

## DATE    "Wed Sep 20 09:48:01 2023"

##
## DEVICE  "5CSXFC6D6F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {CP2} -period 10.000 -waveform { 0.000 5.000 } [get_ports { CP2 }]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {CP2}] -rise_to [get_clocks {CP2}] -setup 0.100
set_clock_uncertainty -rise_from [get_clocks {CP2}] -rise_to [get_clocks {CP2}] -hold 0.060
set_clock_uncertainty -rise_from [get_clocks {CP2}] -fall_to [get_clocks {CP2}] -setup 0.100
set_clock_uncertainty -rise_from [get_clocks {CP2}] -fall_to [get_clocks {CP2}] -hold 0.060
set_clock_uncertainty -fall_from [get_clocks {CP2}] -rise_to [get_clocks {CP2}] -setup 0.100
set_clock_uncertainty -fall_from [get_clocks {CP2}] -rise_to [get_clocks {CP2}] -hold 0.060
set_clock_uncertainty -fall_from [get_clocks {CP2}] -fall_to [get_clocks {CP2}] -setup 0.100
set_clock_uncertainty -fall_from [get_clocks {CP2}] -fall_to [get_clocks {CP2}] -hold 0.060


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {CEP2}]
set_input_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {CET2}]
set_input_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {CP2}]
set_input_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {P2[0]}]
set_input_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {P2[1]}]
set_input_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {P2[2]}]
set_input_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {P2[3]}]
set_input_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {PE2}]
set_input_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {SR2}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {Q2[0]}]
set_output_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {Q2[1]}]
set_output_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {Q2[2]}]
set_output_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {Q2[3]}]
set_output_delay -add_delay  -clock [get_clocks {CP2}]  0.500 [get_ports {TC2}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_ports {A1 B1 C1 Y1 a0[0] a0[1] a0[2] a0[3] c0[0] c0[1] c0[2] c0[3] c0[4] c0[5]}]


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
