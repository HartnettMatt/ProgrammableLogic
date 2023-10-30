transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/ProgrammableLogic/Homework3/HW3Q5 {X:/Graduate/ECEN5863/ProgrammableLogic/Homework3/HW3Q5/Tcontrol.v}

vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/ProgrammableLogic/Homework3/HW3Q5 {X:/Graduate/ECEN5863/ProgrammableLogic/Homework3/HW3Q5/HW3Q5_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  HW3Q5_tb

add wave -divider "Inputs"
add wave -label Clock /HW3Q5_tb/clock
add wave -label Reset_n /HW3Q5_tb/reset_n
add wave -label Sensor /HW3Q5_tb/sensor

add wave -divider "Outputs"
add wave -label Switches /HW3Q5_tb/switch
add wave -label DirA /HW3Q5_tb/dirA
add wave -label DirB /HW3Q5_tb/dirB

add wave -divider "Internal"
add wave -label State -radix unsigned /HW3Q5_tb/dut/state

view structure
view signals
run 900 ps
