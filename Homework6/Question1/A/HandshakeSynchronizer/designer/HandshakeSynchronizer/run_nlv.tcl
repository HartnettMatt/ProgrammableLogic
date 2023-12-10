# Netlist Viewer TCL File
set_family -name SmartFusion2
top_module -name HandshakeSynchronizer
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework6/Question1/A/HandshakeSynchronizer/hdl/sinkFSM.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework6/Question1/A/HandshakeSynchronizer/hdl/sourceFSM.v}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework6/Question1/A/HandshakeSynchronizer/hdl/HandshakeSynchronizer.v}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework6/Question1/A/HandshakeSynchronizer/synthesis/HandshakeSynchronizer.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {X:/Graduate/ECEN5863/ProgrammableLogic/Homework6/Question1/A/HandshakeSynchronizer/designer/HandshakeSynchronizer/HandshakeSynchronizer.afl}