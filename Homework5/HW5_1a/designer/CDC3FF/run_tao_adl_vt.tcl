set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5\designer\CDC3FF\CDC3FF.adl}
read_afl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5\designer\CDC3FF\CDC3FF.afl}
map_netlist
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5\constraint\timing_sdc_errors.log}
write_sdc -mode smarttime {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5\designer\CDC3FF\timing_analysis.sdc}
