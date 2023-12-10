create_clock -name {clkA} -period 26.6667 -waveform {0 13.3333 } [ get_ports { clkA } ]
create_clock -name {clkB} -period 50 -waveform {0 24.9999 } [ get_ports { clkB } ]
set_input_delay 1  -clock { clkB } [ get_ports { enable reset } ]
set_output_delay 1  -clock { clkB } [ get_ports { Dout } ]
