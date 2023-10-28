transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/ProgrammableLogic/Homework3/HW3Q1 {X:/Graduate/ECEN5863/ProgrammableLogic/Homework3/HW3Q1/HW3Q1.v}

vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/ProgrammableLogic/Homework3/HW3Q1 {X:/Graduate/ECEN5863/ProgrammableLogic/Homework3/HW3Q1/HW3Q1_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  HW3Q1_tb

add wave -divider "Inputs"
add wave -label clock /HW3Q1_tb/clock
add wave -label RdPtrClr /HW3Q1_tb/RdPtrClr
add wave -label WrPtrClr /HW3Q1_tb/WrPtrClr
add wave -label rdinc /HW3Q1_tb/rdinc
add wave -label wrinc /HW3Q1_tb/wrinc
add wave -label DataIn -radix hexadecimal /HW3Q1_tb/DataIn
add wave -label rden /HW3Q1_tb/rden
add wave -label wden /HW3Q1_tb/wden

add wave -divider "Outputs"
add wave -label DataOut -radix hexadecimal /HW3Q1_tb/DataOut

add wave -divider "Internal HW3Q1.v"
add wave -label MEM -radix hexadecimal /HW3Q1_tb/dut/MEM 
add wave -label WrPtr -radix unsigned /HW3Q1_tb/dut/WrPtr 
add wave -label RdPtr -radix unsigned /HW3Q1_tb/dut/RdPtr 

view structure
view signals
run 800 ns
