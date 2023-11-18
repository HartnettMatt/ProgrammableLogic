set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\C\HW4_Q2C\designer\HW4_Q2C\HW4_Q2C.adl}
read_afl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\C\HW4_Q2C\designer\HW4_Q2C\HW4_Q2C.afl}
map_netlist
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\C\HW4_Q2C\constraint\timing_sdc_errors.log}
write_sdc -mode smarttime {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\C\HW4_Q2C\designer\HW4_Q2C\timing_analysis.sdc}
