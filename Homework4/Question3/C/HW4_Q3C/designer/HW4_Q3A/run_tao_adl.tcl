set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\C\HW4_Q3C\designer\HW4_Q3A\HW4_Q3A.adl}
read_afl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\C\HW4_Q3C\designer\HW4_Q3A\HW4_Q3A.afl}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\C\HW4_Q3C\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\C\HW4_Q3C\constraint\placer_sdc_errors.log}
write_sdc -mode layout {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\C\HW4_Q3C\designer\HW4_Q3A\place_route.sdc}
