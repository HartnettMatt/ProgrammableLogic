# Microsemi Corp.
# Date: 2023-Nov-28 17:20:09
# This file was generated based on the following SDC source files:
#   X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5_1a/HW5_1a/constraint/user.sdc
#

create_clock -name {Aclk} -period 20 -waveform {0 10 } [ get_ports { Aclk } ]
create_clock -name {Bclk} -period 36.1011 -waveform {0 18.0505 } [ get_ports { Bclk } ]
set_input_delay 1  -clock { Aclk } [ get_ports { reset } ]
set_output_delay 1  -clock { Bclk } [ get_ports { Dout } ]
