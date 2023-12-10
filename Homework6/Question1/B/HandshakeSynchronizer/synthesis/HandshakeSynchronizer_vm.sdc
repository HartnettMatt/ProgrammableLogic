# Written by Synplify Pro version map202003act, Build 160R. Synopsys Run ID: sid1702239333 
# Top Level Design Parameters 

# Clocks 
create_clock -period 26.667 -waveform {0.000 13.333} -name {clkA} [get_ports {clkA}] 
create_clock -period 50.000 -waveform {0.000 25.000} -name {clkB} [get_ports {clkB}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 
set_input_delay {1} -clock [get_clocks {clkB}] [get_ports {reset}]
set_input_delay {1} -clock [get_clocks {clkB}] [get_ports {enable}]

# Output Delay Constraints 

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

