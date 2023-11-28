# Netlist Viewer TCL File
set_family -name SmartFusion2
top_module -name CDC3FF
addfile -view RTL -lib work -type VHDL -mode vhdl_2008 -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5/hdl/CDC3FF.vhd}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5/synthesis/CDC3FF.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5/designer/CDC3FF/CDC3FF.afl}