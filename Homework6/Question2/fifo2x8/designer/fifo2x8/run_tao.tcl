set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_vhdl -mode vhdl_2008 {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question2\fifo2x8\hdl\fifo2x8.vhd}
set_top_level {fifo2x8}
map_netlist
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question2\fifo2x8\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogic\Homework6\Question2\fifo2x8\designer\fifo2x8\synthesis.fdc}
