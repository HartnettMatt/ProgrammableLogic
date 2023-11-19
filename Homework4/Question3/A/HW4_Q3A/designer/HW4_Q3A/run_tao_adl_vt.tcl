set_device -family {SmartFusion2} -die {M2S010} -speed {-1}
read_adl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\designer\HW4_Q3A\HW4_Q3A.adl}
read_afl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\designer\HW4_Q3A\HW4_Q3A.afl}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\constraint\timing_sdc_errors.log}
write_sdc -mode smarttime {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\designer\HW4_Q3A\timing_analysis.sdc}
