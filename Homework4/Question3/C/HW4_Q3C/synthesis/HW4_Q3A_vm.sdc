# Written by Synplify Pro version map202003act, Build 160R. Synopsys Run ID: sid1700353233 
# Top Level Design Parameters 

# Clocks 
create_clock -period 20.000 -waveform {0.000 10.000} -name {clk} [get_ports {clk}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 
set_input_delay {0.01} -clock [get_clocks {clk}] [get_ports {rst_n}]

# Output Delay Constraints 
set_output_delay {2} -clock [get_clocks {clk}] [get_ports {q[*]}]
set_output_delay {2} -clock [get_clocks {clk}] [get_ports {TC}]

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

