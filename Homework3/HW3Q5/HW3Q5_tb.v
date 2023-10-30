//------------------------------------------------------------------------------
//                                                                            --
//                     Comparator2  Test Bench                     				--
//                                                                            --
//------------------------------------------------------------------------------
//--
//-- @file HW3Q5_tb.v
//-- @version: 1.0 
//-- Date of current revision:  @date 2023-10-29  
//-- Target FPGA: Intel Altera Cyclone V 
//-- Tools used: Quartus Prime 18.1 for editing and synthesis 
//--             Modeltech ModelSIM 10.4a Student Edition for simulation 
//--             Quartus Prime 18.1  for place and route if applied
//--             
//--  Functional Description:  This file contains the VHDL which describes the 
//--              test bench for an FPGA implementation of train control state machine
//--  Hierarchy:  This test bench uses the Tcontrol.v component found
//--              in the Work Library.
//--             The Tcontrol component is instantiated. This is the component 
//--             under test.  Other devices on the board are modeled as processes 
//--             which run concurrently.
//--
//--              The FPGA is one entity.  The architecture is a 
//--              functional section, with two always blocks. One block controls
//--              the state logic based on current state and sensor values.
//--              The other block controls output based on state.
//
//--	 TESTS 
//--   I. Ain to ABout 
//--   II. Bin to ABout 
//--   III. Ain to Bstop to Bin to ABout 
//--   IV. Bin to Astop to Ain to ABout 
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


//--------------------------------------------------------------------
//-- Libraries
//----------------------------------------------------------------------

//-------------------------------------------------------------------
//-- Testbench module
//----------------------------------------------------------------------
module HW3Q5_tb;    
//----------------------------------------------------------------------
//--- constant declarations
//----------------------------------------------------------------------
   localparam  TIME = 10; // defines the wait period.
//----------------------------------------------------------------------                                                                      
//-- signal declarations 
//----------------------------------------------------------------------
  reg reset_n;  				// data input
  reg clock;  					// data input
  reg [5:0] sensor;			// data input

  
  wire [3:1] switch; 		// data output
  
  wire [1:0] dirA;			// data output
  wire [1:0] dirB;			// data output

  integer i,j;  				// define and initialize indexes.
  integer ErrorCount;      // Used to count errors
  integer log_file;        // opens output file
//----------------------------------------------------------------------
//-- Component instances
//----------------------------------------------------------------------
//-- instantiate the device under test
Tcontrol dut    // Device under Test  #(.TIME(10))
    ( 
        // Inputs
        .reset_n(reset_n),
		  .clock(clock),
		  .sensor1(sensor[1]),
		  .sensor2(sensor[2]),
		  .sensor3(sensor[3]),
		  .sensor4(sensor[4]),
		  .sensor5(sensor[5]),
		  
         // Outputs
        .switch1(switch[1]),
        .switch2(switch[2]),
        .switch3(switch[3]),
        .dirA(dirA),
        .dirB(dirB)
		  
        );  

//----------------------------------------------------------------------
//-- External Device Simulation Processes
//----------------------------------------------------------------------

   //assign y_tb = 0;
//----------------------------------------------------------------------
//-- Test Process
//----------------------------------------------------------------------                                       
  initial
  begin
  
  // Initialize in reset
  clock = 0;
  reset_n = 0;
  sensor = 5'b0;
  #20;
  reset_n = 1; // De-assert reset
  #20;
  
  // Test 1: Ain to ABout: SW1 and SW2 should stay as 0
  sensor[4] = 1'b1; // Simulates A entering the inner track
  #60; // A is at the inner track for 3 clock cycles
  sensor[1] = 1'b1; // A leaves the inner track
  sensor[4] = 1'b0;
  #20;
  sensor[1] = 1'b0;
  #100;
  
  // Test 2: Bin to ABout: SW1 and SW2 should go high
  sensor[2] = 1'b1;
  #60;
  sensor[3] = 1'b1;
  sensor[2] = 1'b0;
  #20;
  sensor[3] = 1'b0;
  #100;
  
  // Test 3: Ain to Bstop to Bin to ABout
  sensor[4] = 1'b1; // A enters
  #60;
  sensor[2] = 1'b1; // B tries to enter, should get stopped
  #40;
  sensor[1] = 1'b1; // A leaves, B enters (SW1 and SW2 get asserted)
  sensor[4] = 1'b0;
  #40;
  sensor[3] = 1'b1; // B leaves
  sensor[2] = 1'b0;
  #20
  sensor[3] = 1'b0;
  sensor[1] = 1'b0;
  #100;
  
  // Test 4: Bin to Astop to Ain to ABout
  sensor[2] = 1'b1; // B enters (SW1 and SW 2 get asserted)
  #60;
  sensor[4] = 1'b1; // A tries to enter, should get stopped
  #40;
  sensor[3] = 1'b1; // B leaves, A enters 
  sensor[2] = 1'b0;
  #40;
  sensor[1] = 1'b1; // A leaves
  sensor[4] = 1'b0;
  #20
  sensor[1] = 1'b0;
  sensor[3] = 1'b0;
  #100;
  
  end
  
  always
	#10 clock = ~clock; // Clock signal

endmodule // of HW3Q5_tb;     


    