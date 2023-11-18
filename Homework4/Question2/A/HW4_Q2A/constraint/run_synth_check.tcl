set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
set_editor_type {SYNTHESIS}
set_proj_path {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\HW4_Q2A.prjx}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\hdl\counter.v}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\hdl\HW4_Q2A.v}
set_top_level {HW4_Q2A}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\constraint\user.sdc}
set_output_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\constraint\user.sdc}
