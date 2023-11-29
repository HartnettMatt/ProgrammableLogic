create_clock -name {Aclk} -period 36.1011 -waveform {0 18.0505 } [ get_ports { Aclk } ]
create_clock -name {Bclk} -period 20 -waveform {0 10 } [ get_ports { Bclk } ]
