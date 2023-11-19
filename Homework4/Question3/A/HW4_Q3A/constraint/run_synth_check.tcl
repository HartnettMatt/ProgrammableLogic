set_device -family {SmartFusion2} -die {M2S010} -speed {-1}
set_editor_type {SYNTHESIS}
set_proj_path {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\HW4_Q3A.prjx}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\hdl\HW4_Q3A.v}
set_top_level {HW4_Q3A}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\constraint\user.sdc}
set_output_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question3\A\HW4_Q3A\constraint\user.sdc}
