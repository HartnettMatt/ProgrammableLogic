module Tcontrol(
	input reset_n, clock, sensor1, sensor2, sensor3, sensor4, sensor5,
	output switch1, switch2, switch3,
	output [1:0] dirA, dirB
);

reg 				SW1, SW2;
reg 	 			dA, dB; 	// Since the directions are specified, this only determines if it's stopped or not
reg 	[2:0] 	state;
wire 	[1:0] 	s12;
wire 	[1:0] 	s34;
wire 	[1:0] 	s24;

assign switch1 = SW1;
assign switch2 = SW2;
assign switch3 = 1'b0; 	// We never want to switch this one, only leads to derailment

assign dirA[1] = 1'b1; 	// Train A is required to go clockwise
assign dirB[1] = 1'b0; 	// Train B is required to go counterclockwise
assign dirA[0] = dA; 	// This indicates if the train should stop or go
assign dirB[0] = dB; 	// This indicates if the train should stop or go

assign s12 = {sensor1, sensor2}; // These sensor combinations help easily define the case statements below
assign s34 = {sensor3, sensor4};
assign s24 = {sensor2, sensor4};

parameter ABout = 0, Ain = 1, Bin = 2, Astop = 3, Bstop = 4;

always @(posedge clock or negedge reset_n) // This block handles the state logic based on current state + sensor values
	begin
		if(~reset_n)
			state = ABout;
		else
			case(state)
				ABout : 
					case(s24)
						2'b00 	: state = ABout;
						2'b01 	: state = Ain;
						2'b10 	: state = Bin;
						2'b11 	: state = Ain;
						default 	: state = ABout;
					endcase
				Ain : 
					case(s12)
						2'b00 	: state = Ain;
						2'b01 	: state = Bstop;
						2'b10 	: state = ABout;
						2'b11 	: state = ABout;
						default 	: state = ABout;
					endcase
				Bin : 
					case(s34)
						2'b00 	: state = Bin;
						2'b01 	: state = Astop;
						2'b10 	: state = ABout;
						2'b11 	: state = ABout;
						default 	: state = ABout;
					endcase
				Astop : 
					case(sensor3)
						1'b0 		: state = Astop;
						1'b1 		: state = Ain;
						default	: state = ABout;
					endcase
				Bstop : 
					case(sensor1)
						1'b0 		: state = Bstop;
						1'b1 		: state = Bin;
						default 	: state = ABout;
					endcase
			endcase
	end
	
	always @(state) // This handles the switching and stopping logic based on the state we're in
		begin
			case(state)
				ABout 	:
					begin
						SW1 = 0; // Outside edge
						SW2 = 0; // Outside edge
						dA = 1; 	// Running
						dB = 1; 	// Running
					end
				Ain 		:
					begin
						SW1 = 0;
						SW2 = 0;
						dA = 1;
						dB = 1;
					end
				Bin		:
					begin
						SW1 = 1;
						SW2 = 1;
						dA = 1;
						dB = 1;
					end
				Astop		:
					begin
						SW1 = 1; // Inside edge
						SW2 = 1; // Inside edge
						dA = 0;	// Stopped
						dB = 1;	// Running
					end
				Bstop		:
					begin
						SW1 = 0;
						SW2 = 0;
						dA = 1;
						dB = 0;
					end
				default 	:
					begin
						SW1 = 0;
						SW2 = 0;
						dA = 1;
						dB = 1;
					end
			endcase
		end

endmodule