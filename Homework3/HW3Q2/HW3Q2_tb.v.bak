//------------------------------------------------------------------------------
//                                                                            --
//                     			HW3Q1  Test Bench                     				--
//                                                                            --
//------------------------------------------------------------------------------
//--
//-- @file HW3Q1_tb.v
//-- @version: 1.0 
//-- Date of current revision:  @date YYYY-MM-DD  
//-- Target FPGA: Intel Altera MAX10 
//-- Tools used: Quartus Prime 18.1 for editing and synthesis 
//--             Modeltech ModelSIM 10.4a Student Edition for simulation 
//--             Quartus Prime 18.1  for place and route if applied
//--             
//--  Functional Description:  This file contains the Verilog which describes the 
//--              test bench for an FPGA implementation of a 9 bit wide by 8 deep 
//--					FIFO. 
//--  Hierarchy:  This test bench uses the HW3Q1 component found
//--              in the Work Library.
//--             The YourFPGA component is instantiated. This is the component 
//--             under test.  Other devices on the board are modeled as processes 
//--             which run concurrently.    The other 
//--             devices are listed in the following function sections:
//--                [ I.   Clock - generates XX MHz clock 
//--                 II.  Reset control
//--                 III. Interrupt Control
//--                 IV.  Address/Data Bus
//--                      etc.         ]
//--
//--              [The FPGA is one entity.  The architecture is one
//--              functional section, which compares all the possible
//--              input bit vector combinations and checks to see if the
//--              result is correct after a 10 ns delay.]   
//
//--	 TESTS 
//--   I. [Majority Vote test
//--    compare all the possible input bit vector combinations and checks to see 
//--    if the result is correct after a 10 ns delay.]
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
module HW3Q1_tb;    
//----------------------------------------------------------------------
//--- constant declarations
//----------------------------------------------------------------------
   localparam  TIME = 10; // defines the wait period.
//----------------------------------------------------------------------                                                                      
//-- signal declarations 
//----------------------------------------------------------------------
	reg clock;
  reg RdPtrClr;  			// data input
  reg WrPtrClr;  			// data input
  reg rdinc;  				// data input
  reg wrinc;  				// data input
  reg [8:0] DataIn;  	// data input
  reg rden;  				// data input
  reg wden;  				// data input
  wire [8:0] DataOut; 	// data output

  integer i;  				// define and initialize indexes.
  
//----------------------------------------------------------------------
//-- Component instances
//----------------------------------------------------------------------
//-- instantiate the device under test
HW3Q1 dut    // Device under Test  #(.TIME(10))
	( 
		// Inputs
		.clk(clock),
		.RdPtrClr(RdPtrClr),
		.WrPtrClr(WrPtrClr),
		.rdinc(rdinc),
		.wrinc(wrinc),
		.DataIn(DataIn),
		.rden(rden),
		.wden(wden),
		// Outputs
		.DataOut(DataOut)
	);  


//----------------------------------------------------------------------
//-- Test Process
//----------------------------------------------------------------------      


initial
begin
// Begin by initializing all of the inputs to zero (except resets)
	rden = 1'b0;
	wden = 1'b0;
	RdPtrClr = 1'b1;
	WrPtrClr = 1'b1;
	rdinc = 1'b0;
	wrinc = 1'b0;
	DataIn = 9'b000000000;
	clock = 1'b0;
	
// Clear resets
	#10
	RdPtrClr = 1'b0;
	WrPtrClr = 1'b0;
	
// Write data into the FIFO
	#10
	wden = 1'b1;
	for(i=1; i<=14; i = i+1) begin // Loop through the whole FIFO almost twice and write i into memory
		DataIn = i;
		#20; 				// Wait for the next clock cycle
	end
	wden = 1'b0;
	
// Read data out of the FIFO
	rden = 1'b1; 
	#200 					// Read the entire FIFO 1 and a half times
	rden = 1'b0;

// Test pointer resets and increments
	#15 					// Test that the pointer reset is synchronous
	RdPtrClr = 1'b1; 	// Reset the read pointer
	WrPtrClr = 1'b1; 	// Reset the write pointer
	#60
	rdinc = 1'b1; 		// Try to start counting read (still in reset)
	wrinc = 1'b1; 		// Try to start counter write (still in reset)
	#60 					// Test that the counting is synchronous
	RdPtrClr = 1'b0; 	// Clear the read pointer reset
	WrPtrClr = 1'b0; 	// Clear the write pointer reset
	#105
	rdinc = 1'b0; 		// Stop counting read
	wrinc = 1'b0; 		// Stop counting write
	
end

always
	#10 clock = ~clock; // Clock signal



endmodule // of HW3Q1_tb;     


    