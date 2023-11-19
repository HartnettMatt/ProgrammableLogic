# Microsemi Corp.
# Date: 2023-Nov-18 17:14:38
# This file was generated based on the following SDC source files:
#   X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question3/A/HW4_Q3A/constraint/user.sdc
#

create_clock -name {clk} -period 20 -waveform {0 10 } [ get_ports { clk } ]
set_input_delay 0.01  -clock { clk } [ get_ports { rst_n } ]
set_output_delay 2  -clock { clk } [ all_outputs ]
