# Netlist Viewer TCL File
set_family -name SmartFusion2
top_module -name HW4_Q2A
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question2/A/HW4_Q2A/hdl/counter.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question2/A/HW4_Q2A/hdl/HW4_Q2A.v}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question2/A/HW4_Q2A/synthesis/HW4_Q2A.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question2/A/HW4_Q2A/designer/HW4_Q2A/COMPILE/HW4_Q2A.afl}