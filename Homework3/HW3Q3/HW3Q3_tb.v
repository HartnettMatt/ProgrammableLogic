//------------------------------------------------------------------------------
//                                                                            --
//                     Comparator2  Test Bench                     				--
//                                                                            --
//------------------------------------------------------------------------------
//--
//-- @file HW3Q3_tb.v
//-- @version: 1.0 
//-- Date of current revision:  @date Y2023-10-29  
//-- Target FPGA: Intel Altera MAX10 
//-- Tools used: Quartus Prime 18.1 for editing and synthesis 
//--             Modeltech ModelSIM 10.4a Student Edition for simulation 
//--             Quartus Prime 18.1  for place and route if applied
//--             
//--  Functional Description:  This file contains the VHDL which describes the 
//--              test bench for an FPGA implementation of a 2 bit comparator
//--  Hierarchy:  This test bench uses the Comparator2.v component found
//--              in the Work Library.
//--             The Comparator2 component is instantiated. This is the component 
//--             under test.  Other devices on the board are modeled as processes 
//--             which run concurrently.
//--
//--              The FPGA is one entity.  The architecture is one
//--              functional section, which compares the 2 bit values
//--              of the two inputs to each other. If the two inputs are
//--              equal, then the output Equals, goes high
//
//--	 TESTS 
//--   I. Compare all possible values of A and B
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
module HW3Q3_tb;    
//----------------------------------------------------------------------
//--- constant declarations
//----------------------------------------------------------------------
   localparam  TIME = 10; // defines the wait period.
//----------------------------------------------------------------------                                                                      
//-- signal declarations 
//----------------------------------------------------------------------
  reg a_tb;  					// data input
  reg b_tb;  					// data input
  wire equals_tb; 			// data output

  integer i,j;  				// define and initialize indexes.
  integer ErrorCount;      // Used to count errors
  integer log_file;        // opens output file
//----------------------------------------------------------------------
//-- Component instances
//----------------------------------------------------------------------
//-- instantiate the device under test
Comparator2 dut    // Device under Test  #(.TIME(10))
    ( 
        // Inputs
        .A(a_tb),
		  .B(b_tb),
         // Outputs
        .Equals(equals_tb)
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
  ErrorCount = 0;
  a_tb = 0;
  b_tb = 0;
  $display("Starting...");
    for(i=0; i<2; i = i+1) begin       // loop over number of a inputs possible
		  a_tb = i;
      for(j=0; j<2; j = j+1) begin     // loop over number of b inputs possible
		    b_tb = j;
			#TIME;           // wait for T unit times
			// test the results
			if(i == j) begin // The output should be 1
				if(equals_tb != 1) begin
					ErrorCount = ErrorCount + 1;
					$display ("Error");
				end
			end else if (i != j) begin // The output should be 0
				if(equals_tb == 1) begin
					ErrorCount = ErrorCount + 1;
					$display ("Error");
				end
			end
      end           // over all j
    end             // over all i


    $display ("ErrorCount = %d" , ErrorCount);   // puts results in 
                                                          // transcript
     // write to file 
    log_file = $fopen("mylog");
    $fdisplay(log_file,"ErrorCount = %d" , ErrorCount); 
    $fclose(log_file);
  end

endmodule // of HW3Q3_tb;     


    