set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_vhdl -mode vhdl_2008 {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5\hdl\CDC3FF.vhd}
set_top_level {CDC3FF}
map_netlist
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5\designer\CDC3FF\synthesis.fdc}
