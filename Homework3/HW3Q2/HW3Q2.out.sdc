## Generated SDC file "HW3Q2.out.sdc"

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

## DATE    "Sat Oct 28 17:58:46 2023"

##
## DEVICE  "10M50DAF484C6GES"
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

set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {A[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {B[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Op[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Op[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Op[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Op[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Op[4]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[26]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[27]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[28]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[29]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[30]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {Y[31]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



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

