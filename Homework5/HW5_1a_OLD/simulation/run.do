quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "X:/Graduate/ECEN5863/ProgrammableLogic/Homework5/HW5_1a"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap SmartFusion2 "D:/Microsemi/Libero_SoC_v12.6/Designer/lib/modelsimpro/precompiled/vlog/SmartFusion2"

vlog -sv -work postsynth "${PROJECT_DIR}/synthesis/CDC3FF.v"
vcom -2008 -explicit  -work postsynth "${PROJECT_DIR}/stimulus/CDC3FF_tb.vhd"

vsim -L SmartFusion2 -L postsynth  -t 1fs postsynth.CDC3FF_tb
add wave /CDC3FF_tb/*
run 1000ns
