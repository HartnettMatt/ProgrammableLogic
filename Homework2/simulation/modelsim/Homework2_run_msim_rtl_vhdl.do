transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {X:/Graduate/ECEN5863/ProgrammableLogic/Homework2/HW2P4.vhd}
vcom -93 -work work {X:/Graduate/ECEN5863/ProgrammableLogic/Homework2/HW2P3.vhd}
vcom -93 -work work {X:/Graduate/ECEN5863/ProgrammableLogic/Homework2/Homework2.vhd}
vcom -93 -work work {X:/Graduate/ECEN5863/ProgrammableLogic/Homework2/HW2P5.vhd}

