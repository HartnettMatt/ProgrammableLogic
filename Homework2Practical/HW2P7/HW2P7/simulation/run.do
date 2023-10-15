quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "X:/Graduate/ECEN5863/ProgrammableLogic/Homework2Practical/HW2P7/HW2P7"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap SmartFusion2 "D:/Microsemi/Libero_SoC_v12.6/Designer/lib/modelsimpro/precompiled/vlog/SmartFusion2"

vlog -sv -work postsynth "${PROJECT_DIR}/synthesis/HW2P7.v"

vsim -L SmartFusion2 -L postsynth  -t 1fs postsynth.HW2P7
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns
