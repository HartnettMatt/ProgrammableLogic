set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1a\HW5_1a\designer\CDC3FF\CDC3FF.adl}
read_afl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1a\HW5_1a\designer\CDC3FF\CDC3FF.afl}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1a\HW5_1a\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1a\HW5_1a\constraint\placer_sdc_errors.log}
write_sdc -mode layout {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1a\HW5_1a\designer\CDC3FF\place_route.sdc}
