# Netlist Viewer TCL File
set_family -name SmartFusion2
top_module -name HW4_Q2B
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question2/B/HW4_Q2B/hdl/HW4_Q2B.v}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question2/B/HW4_Q2B/synthesis/HW4_Q2B.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question2/B/HW4_Q2B/designer/HW4_Q2B/HW4_Q2B.afl}