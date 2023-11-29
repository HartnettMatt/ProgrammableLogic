create_clock -name {Aclk} -period 20 -waveform {0 10 } [ get_ports { Aclk } ]
create_clock -name {Bclk} -period 36.1011 -waveform {0 18.0505 } [ get_ports { Bclk } ]
set_input_delay 1  -clock { Aclk } [ get_ports { reset } ]
set_output_delay 1  -clock { Bclk } [ get_ports { Dout } ]
