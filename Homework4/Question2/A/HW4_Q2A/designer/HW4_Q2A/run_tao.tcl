set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\hdl\HW4_Q2A.v}
set_top_level {HW4_Q2A}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\designer\HW4_Q2A\synthesis.fdc}
