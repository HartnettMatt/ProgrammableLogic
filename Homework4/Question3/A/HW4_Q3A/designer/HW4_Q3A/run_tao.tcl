set_device -family {SmartFusion2} -die {M2S010} -speed {-1}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\hdl\HW4_Q3A.v}
set_top_level {HW4_Q3A}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\designer\HW4_Q3A\synthesis.fdc}
