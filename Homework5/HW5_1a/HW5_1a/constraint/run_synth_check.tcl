set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
set_editor_type {SYNTHESIS}
set_proj_path {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1a\HW5_1a\HW5_1a.prjx}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1a\HW5_1a\hdl\CDC3FF.v}
set_top_level {CDC3FF}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1a\HW5_1a\constraint\CDC3FF.sdc}
set_output_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1a\HW5_1a\constraint\user.sdc}
