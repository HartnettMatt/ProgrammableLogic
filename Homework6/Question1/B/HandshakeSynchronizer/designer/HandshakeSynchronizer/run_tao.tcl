set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\B\HandshakeSynchronizer\hdl\sinkFSM.v}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\B\HandshakeSynchronizer\hdl\sourceFSM.v}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\B\HandshakeSynchronizer\hdl\HandshakeSynchronizer.v}
set_top_level {HandshakeSynchronizer}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\B\HandshakeSynchronizer\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\B\HandshakeSynchronizer\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\B\HandshakeSynchronizer\designer\HandshakeSynchronizer\synthesis.fdc}
