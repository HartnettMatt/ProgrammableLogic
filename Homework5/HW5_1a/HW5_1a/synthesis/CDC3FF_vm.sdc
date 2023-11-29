# Written by Synplify Pro version map202003act, Build 160R. Synopsys Run ID: sid1701217202 
# Top Level Design Parameters 

# Clocks 
create_clock -period 20.000 -waveform {0.000 10.000} -name {Aclk} [get_ports {Aclk}] 
create_clock -period 36.101 -waveform {0.000 18.050} -name {Bclk} [get_ports {Bclk}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 
set_input_delay {1} -clock [get_clocks {Aclk}] [get_ports {reset}]

# Output Delay Constraints 
set_output_delay {1} -clock [get_clocks {Bclk}] [get_ports {Dout}]

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

