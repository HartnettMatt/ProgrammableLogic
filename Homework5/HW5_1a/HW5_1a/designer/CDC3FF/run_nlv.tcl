# Netlist Viewer TCL File
set_family -name SmartFusion2
top_module -name CDC3FF
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5_1a/HW5_1a/hdl/CDC3FF.v}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5_1a/HW5_1a/synthesis/CDC3FF.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5_1a/HW5_1a/designer/CDC3FF/CDC3FF.afl}