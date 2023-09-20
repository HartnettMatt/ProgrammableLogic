transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/ProgrammableLogic/Homework2/VerilogProject {X:/Graduate/ECEN5863/ProgrammableLogic/Homework2/VerilogProject/HW2P6.v}
vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/ProgrammableLogic/Homework2/VerilogProject {X:/Graduate/ECEN5863/ProgrammableLogic/Homework2/VerilogProject/Homework2Verilog.v}
vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/ProgrammableLogic/Homework2/VerilogProject {X:/Graduate/ECEN5863/ProgrammableLogic/Homework2/VerilogProject/HW2P7.v}

