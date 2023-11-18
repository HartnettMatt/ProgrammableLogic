set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\hdl\HW4_Q2B.v}
set_top_level {HW4_Q2B}
map_netlist
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2B\synthesis.fdc}
