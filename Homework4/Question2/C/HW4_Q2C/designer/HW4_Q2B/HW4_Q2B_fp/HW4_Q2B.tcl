open_project -project {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2B\HW4_Q2B_fp\HW4_Q2B.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {M2S010} \
    -fpga {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2B\HW4_Q2B.map} \
    -header {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2B\HW4_Q2B.hdr} \
    -spm {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2B\HW4_Q2B.spm} \
    -dca {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2B\HW4_Q2B.dca}
export_single_ppd \
    -name {M2S010} \
    -file {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\B\HW4_Q2B\designer\HW4_Q2B\HW4_Q2B.ppd}

save_project
close_project
