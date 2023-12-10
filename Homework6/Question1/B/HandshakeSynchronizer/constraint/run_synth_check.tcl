set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
set_editor_type {SYNTHESIS}
set_proj_path {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\B\HandshakeSynchronizer\HandshakeSynchronizer.prjx}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\B\HandshakeSynchronizer\hdl\HandshakeSynchronizer.v}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\B\HandshakeSynchronizer\hdl\sinkFSM.v}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\B\HandshakeSynchronizer\hdl\sourceFSM.v}
set_top_level {HandshakeSynchronizer}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\B\HandshakeSynchronizer\constraint\user.sdc}
set_output_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question1\B\HandshakeSynchronizer\constraint\user.sdc}
