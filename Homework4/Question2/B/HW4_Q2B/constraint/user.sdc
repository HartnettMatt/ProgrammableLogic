create_clock -name {clk} -period 20 -waveform {0 10 } [ get_ports { clk } ]
set_input_delay 1  -clock { clk } [ get_ports { rst_n } ]
set_output_delay 1  -clock { clk } [ all_outputs ]
