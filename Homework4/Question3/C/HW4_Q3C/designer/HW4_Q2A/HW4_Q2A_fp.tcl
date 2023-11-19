new_project \
         -name {HW4_Q2A} \
         -location {X:\Graduate\ECEN5863\ProgrammableLogic\Homework4\Question2\A\HW4_Q2A\designer\HW4_Q2A\HW4_Q2A_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S010} \
         -name {M2S010}
enable_device \
         -name {M2S010} \
         -enable {TRUE}
save_project
close_project
