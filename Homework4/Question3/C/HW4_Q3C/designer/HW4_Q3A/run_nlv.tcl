# Netlist Viewer TCL File
set_family -name SmartFusion2
top_module -name HW4_Q3A
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question3/A/HW4_Q3A/hdl/HW4_Q3A.v}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question3/A/HW4_Q3A/synthesis/HW4_Q3A.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework4/Question3/A/HW4_Q3A/designer/HW4_Q3A/HW4_Q3A.afl}