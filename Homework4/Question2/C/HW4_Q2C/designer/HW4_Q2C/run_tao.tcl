set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\C\HW4_Q2C\hdl\HW4_Q2C.v}
set_top_level {HW4_Q2C}
map_netlist
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\C\HW4_Q2C\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\C\HW4_Q2C\designer\HW4_Q2C\synthesis.fdc}
