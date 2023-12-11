quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "X:/Graduate/ECEN5863/ProgrammableLogic/Homework6/Question2/fifo2x8"

if {[file exists ../designer/fifo2x8/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/fifo2x8/simulation/postlayout already exists"
} else {
   file delete -force ../designer/fifo2x8/simulation/postlayout 
   vlib ../designer/fifo2x8/simulation/postlayout
}
vmap postlayout ../designer/fifo2x8/simulation/postlayout
vmap SmartFusion2 "D:/Microsemi/Libero_SoC_v12.6/Designer/lib/modelsimpro/precompiled/vlog/SmartFusion2"

vcom -2008 -explicit  -work postlayout "${PROJECT_DIR}/designer/fifo2x8/fifo2x8_ba.vhd"
vcom -2008 -explicit  -work postlayout "${PROJECT_DIR}/stimulus/fifo2x8_tb.vhdl"

vsim -L SmartFusion2 -L postlayout  -t 1fs -sdfmax /DUT=${PROJECT_DIR}/designer/fifo2x8/fifo2x8_ba.sdf +transport_path_delays postlayout.fifo2x8_tb
add wave /fifo2x8_tb/*
add wave sim:/fifo2x8_tb/DUT/full
add wave sim:/fifo2x8_tb/DUT/empty
add wave -divider "Write pointer"
add wave -label wrptr sim:/fifo2x8_tb/DUT/wrptr/Q 
add wave -label wrptrd1 sim:/fifo2x8_tb/DUT/wrptrd1/Q 
add wave -label wrptrd2 sim:/fifo2x8_tb/DUT/wrptrd2/Q 
add wave -divider "Read pointer"
add wave -label rdptr sim:/fifo2x8_tb/DUT/rdptr/Q 
add wave -label rptrd1 sim:/fifo2x8_tb/DUT/rptrd1/Q 
add wave -label rptrd2 sim:/fifo2x8_tb/DUT/rptrd2/Q 
run 1000ns
