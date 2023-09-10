transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/Homework1 {X:/Graduate/ECEN5863/Homework1/Homework1.v}

vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/Homework1 {X:/Graduate/ECEN5863/Homework1/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
