set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\A\HandshakeSynchronizer\designer\HandshakeSynchronizer\HandshakeSynchronizer.adl}
read_afl {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\A\HandshakeSynchronizer\designer\HandshakeSynchronizer\HandshakeSynchronizer.afl}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\A\HandshakeSynchronizer\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\A\HandshakeSynchronizer\constraint\timing_sdc_errors.log}
write_sdc -mode smarttime {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\A\HandshakeSynchronizer\designer\HandshakeSynchronizer\timing_analysis.sdc}
