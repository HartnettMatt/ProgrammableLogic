# Written by Synplify Pro version map202003act, Build 160R. Synopsys Run ID: sid1701226945 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {SlowFast|Bclk} [get_ports {Bclk}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {SlowFast|Aclk} [get_ports {Aclk}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_0 [list SlowFast|Bclk]
set Inferred_clkgroup_1 [list SlowFast|Aclk]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1


# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

