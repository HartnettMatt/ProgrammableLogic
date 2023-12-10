add wave -divider "External Signals"
add wave -label clkA /HandshakeSynchronizer_tb/clkA
add wave -label clkB /HandshakeSynchronizer_tb/clkB
add wave -label reset /HandshakeSynchronizer_tb/reset
add wave -label enable /HandshakeSynchronizer_tb/enable
add wave -label count  sim:/HandshakeSynchronizer_tb/count
add wave -label Dout /HandshakeSynchronizer_tb/Dout
add wave -divider "Internal Signals"
add wave -label req_source  sim:/HandshakeSynchronizer_tb/DUT0/req_source
add wave -label req_sync  sim:/HandshakeSynchronizer_tb/DUT0/req_sink/D
add wave -label req_sink  sim:/HandshakeSynchronizer_tb/DUT0/req_sink/Q
add wave -label ack_sink sim:/HandshakeSynchronizer_tb/DUT0/ack_sink
add wave -label ack_sync  sim:/HandshakeSynchronizer_tb/DUT0/ack_source/D
add wave -label ack_source  sim:/HandshakeSynchronizer_tb/DUT0/ack_source/Q
add wave -divider "Source FSM"
add wave -label "state[0]" -group "sourceFSM State" {sim:/HandshakeSynchronizer_tb/DUT0/\U0/state[0] /Q} 
add wave -label state[1] -group "sourceFSM State"  {sim:/HandshakeSynchronizer_tb/DUT0/\U0/state[1] /Q}
add wave -label data_out[0] -group "sourceFSM Data_out"  {sim:/HandshakeSynchronizer_tb/DUT0/\U0/data_out[0] /Q} 
add wave -label data_out[1] -group "sourceFSM Data_out"  {sim:/HandshakeSynchronizer_tb/DUT0/\U0/data_out[1] /Q} 
add wave -label data_out[2] -group "sourceFSM Data_out"  {sim:/HandshakeSynchronizer_tb/DUT0/\U0/data_out[2] /Q} 
add wave -label data_out[3] -group "sourceFSM Data_out"  {sim:/HandshakeSynchronizer_tb/DUT0/\U0/data_out[3] /Q} 
add wave -label data_out[4] -group "sourceFSM Data_out"  {sim:/HandshakeSynchronizer_tb/DUT0/\U0/data_out[4] /Q} 
add wave -label data_out[5] -group "sourceFSM Data_out"  {sim:/HandshakeSynchronizer_tb/DUT0/\U0/data_out[5] /Q} 
add wave -label data_out[6] -group "sourceFSM Data_out"  {sim:/HandshakeSynchronizer_tb/DUT0/\U0/data_out[6] /Q} 
add wave -label data_out[7] -group "sourceFSM Data_out"  {sim:/HandshakeSynchronizer_tb/DUT0/\U0/data_out[7] /Q} 
add wave -divider "Sink FSM"
add wave -label state[0] -group "sinkFSM State" {sim:/HandshakeSynchronizer_tb/DUT0/\U1/state[0] /Q} 
add wave -label state[1] -group "sinkFSM State"  {sim:/HandshakeSynchronizer_tb/DUT0/\U1/state[1] /Q} 
