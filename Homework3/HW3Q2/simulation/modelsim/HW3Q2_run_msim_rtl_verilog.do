transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/ProgrammableLogic/Homework3/HW3Q2 {X:/Graduate/ECEN5863/ProgrammableLogic/Homework3/HW3Q2/HW3Q2_clocked.v}

vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/ProgrammableLogic/Homework3/HW3Q2 {X:/Graduate/ECEN5863/ProgrammableLogic/Homework3/HW3Q2/HW3Q2_tb_clocked.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  HW3Q2_tb_clocked

do clocked_waves.do

view structure
view signals
run 700 ns

