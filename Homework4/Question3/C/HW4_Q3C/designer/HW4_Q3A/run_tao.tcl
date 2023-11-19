set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\C\HW4_Q3C\hdl\HW4_Q3C.v}
set_top_level {HW4_Q3A}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\C\HW4_Q3C\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\C\HW4_Q3C\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\C\HW4_Q3C\designer\HW4_Q3A\synthesis.fdc}
