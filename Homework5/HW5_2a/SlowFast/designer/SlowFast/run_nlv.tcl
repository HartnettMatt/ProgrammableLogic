# Netlist Viewer TCL File
set_family -name SmartFusion2
top_module -name SlowFast
addfile -view RTL -lib work -type VHDL -mode vhdl_2008 -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5_2a/SlowFast/hdl/SlowFast.vhd}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5_2a/SlowFast/synthesis/SlowFast.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5_2a/SlowFast/designer/SlowFast/SlowFast.afl}