set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1b\HW5_1b\hdl\CDC3FF.v}
set_top_level {CDC3FF}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1b\HW5_1b\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1b\HW5_1b\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_1b\HW5_1b\designer\CDC3FF\synthesis.fdc}
