//------------------------------------------------------------------------------
//                                                                            --
//                     			HW3Q1  Test Bench                     				--
//                                                                            --
//------------------------------------------------------------------------------
//--
//-- @file HW3Q2_tb_clocked.v
//-- @version: 1.0 
//-- Date of current revision:  @date 2023-10-28
//-- Target FPGA: Intel Altera MAX10 
//-- Tools used: Quartus Prime 18.1 for editing and synthesis 
//--             Modeltech ModelSIM 10.4a Student Edition for simulation 
//--             Quartus Prime 18.1  for place and route if applied
//--             
//--  Functional Description:  This file contains the Verilog which describes the 
//--              test bench for an FPGA implementation of 32 bit wide ALU
//--  Hierarchy:  This test bench uses the HW3Q2 component found
//--              in the Work Library.
//--             The HW3Q2 component is instantiated. This is the component 
//--             under test.  Other devices on the board are modeled as processes 
//--             which run concurrently.    
//--
//--              The architecture is a 32 bit wide ALU that has 3 inputs: A,
//--					B, and OpCode. There is one output. The opcode dictionary is 
//--					with the 5863Homework3.pdf file. 
//
//--	 TESTS 
//--   I. 
//--  
//--  Designed for: Tim Scherr
//--                ECEN 5863
//--                University of Colorado Boulder
//--  Designed by:  @author Matt Hartnett
//--                University of Colorado Boulder
//--                maha7943@colorado.edu
//-- 
//--      Copyright (c) 2018 by Tim Scherr
//--
//-- Redistribution, modification or use of this software in source or binary
//-- forms is permitted as long as the files maintain this copyright. Users are
//-- permitted to modify this and use it to learn about the field of HDl code.
//-- Tim Scherr and the University of Colorado are not liable for any misuse
//-- of this material.
//------------------------------------------------------------------------------
//-- 
`timescale 1 ns / 100 ps

//--------------------------------------------------------------------
//-- Libraries
//----------------------------------------------------------------------

//-------------------------------------------------------------------
//-- Testbench module
//----------------------------------------------------------------------
module HW3Q2_tb_clocked;    
//----------------------------------------------------------------------
//--- constant declarations
//----------------------------------------------------------------------
   localparam  TIME = 10; // defines the wait period.
//----------------------------------------------------------------------                                                                      
//-- signal declarations 
//----------------------------------------------------------------------
	reg [31:0] A;  				// A data input
	reg [31:0] B;  				// B data input
	reg [4:0] Op;  				// OpCode data input
	wire [31:0] Y;  				// Y data output
	reg clock;

	integer i, j;  				// define and initialize indexes.
	reg [31:0] expY, expOut;	// define expected Out and Y values
	wire correctness;				// Define a correctness integer 
	integer error_count;			// Define a error_count integer 
  
//----------------------------------------------------------------------
//-- Component instances
//----------------------------------------------------------------------
//-- instantiate the device under test
HW3Q2_clocked dut    // Device under Test  #(.TIME(10))
	( 
		// Inputs
		.A(A),
		.B(B),
		.Op(Op),
		.clk(clock),
		// Outputs
		.Y(Y)
	);  


//----------------------------------------------------------------------
//-- Test Process
//----------------------------------------------------------------------      

assign correctness = expY == Y ? 1 : 0;

initial
begin
// Begin by initializing all of the inputs to zero/high Z
	A = 32'b0;
	B = 32'b0;
	Op = 5'bZ;
	error_count = 0;
	clock = 1'b0;
	
	#5
	A = 32'hC59422AD; // Two randomly generated test numbers
	B = 32'h850EE33EF;
	
	for (i=0; i<8; i=i+1) begin // Loop through all upper level op code bits
		for (j=0; j<4; j=j+1) begin // Loop through all lower level op code bits
			Op = {i[2:0], j[1:0]}; // Build the opCode out of the indices
			#5
			case (i) // These two case statements build the expected output
				0	: expOut = A;
				1	: expOut = A+B;
				2	: expOut = A-B;
				3 	: expOut = A & B;
				4 	: expOut = A | B;
				5 	: expOut = A + 1;
				6 	: expOut = A - 1;
				7 	: expOut = B;

			endcase
			case (j)
				0	: expY = expOut;
				1 	: expY = expOut << 1;
				2 	: expY = expOut >> 1;
				3	: expY = 0;
			endcase
			#5;
			if(expY != Y) begin // Compare the result to the expected result
				error_count = error_count + 1; // Increment error if result doesn't match expected
			end
			#10;
		end
	end
end

always
	#10 clock = ~clock; // Clock signal
	

endmodule // of HW3Q2_tb;     


    