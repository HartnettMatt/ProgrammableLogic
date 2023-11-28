set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_vhdl -mode vhdl_2008 {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_2a\SlowFast\hdl\SlowFast.vhd}
set_top_level {SlowFast}
map_netlist
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_2a\SlowFast\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework5\HW5_2a\SlowFast\designer\SlowFast\synthesis.fdc}
