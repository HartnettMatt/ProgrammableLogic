# Written by Synplify Pro version map202003act, Build 160R. Synopsys Run ID: sid1697330101 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {SF2project|MCCC_CLK_BASE} [get_ports {MCCC_CLK_BASE}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {SF2project|MAC_MII_TX_CLK} [get_ports {MAC_MII_TX_CLK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {SF2project|MAC_MII_RX_CLK} [get_ports {MAC_MII_RX_CLK}] 

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
set Inferred_clkgroup_0 [list SF2project|MCCC_CLK_BASE]
set Inferred_clkgroup_1 [list SF2project|MAC_MII_TX_CLK]
set Inferred_clkgroup_2 [list SF2project|MAC_MII_RX_CLK]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1
set_clock_groups -asynchronous -group $Inferred_clkgroup_2


# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

