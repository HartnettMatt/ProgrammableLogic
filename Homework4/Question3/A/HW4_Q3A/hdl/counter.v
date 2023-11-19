///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Univeristy of Colorado Boulder
//
// File: HW4_Q2A.v
// File history:
//      1.0: 11/18/2023: Initial work
//
// Description: 
//
// Synchronous n-bit counter circuit with an asynchronous, active low reset. This counter will go up until k-1, then rollover and indicate such with the rollover bit
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: Matt Hartnett
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module counter (Clock, Reset_n, Q, Rollover);
	parameter n = 4; 		// Quantity of bits for the counter, default = 4
	parameter k = 15;		// Highest value of counter, default = 15
	
	input Clock, Reset_n;
	output [n-1:0] Q;
	output Rollover;
	
	reg [n-1:0] Q;
	reg Rollover;
	
	always @(posedge Clock or negedge Reset_n)
	begin
		if(!Reset_n) begin		// Active low reset
			Q <= 1'b0;
			Rollover <= 1'b0;
		end else begin
			// Count up from Q = 0 to k-1
			if(Q < k-1)
				Q <= Q + 1'b1;
			else
				Q <= 0;
			// Rollover (has to be k-2 due to non-blocking assignments):
			if (Q == k-2)
				Rollover <= 1'b1;
			else
				Rollover <= 1'b0;
		end
	end
endmodule
