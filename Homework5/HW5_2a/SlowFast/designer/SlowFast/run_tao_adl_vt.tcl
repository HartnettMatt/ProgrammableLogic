set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_2a\SlowFast\designer\SlowFast\SlowFast.adl}
read_afl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_2a\SlowFast\designer\SlowFast\SlowFast.afl}
map_netlist
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_2a\SlowFast\constraint\timing_sdc_errors.log}
write_sdc -mode smarttime {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_2a\SlowFast\designer\SlowFast\timing_analysis.sdc}
