//------------------------------------------------------------------------------
//                                                                            --
//                     [Functional Unit Name]  Test Bench                     --
//                                                                            --
//------------------------------------------------------------------------------
//--
//-- Replace [items in brackets] with your content
//-- @file [YourFPGA_tb.vhd]
//-- @version: 1.0 
//-- Date of current revision:  @date YYYY-MM-DD  
//-- Target FPGA: [Intel Altera MAX10] 
//-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
//--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
//--             [Quartus Prime 16.1]  for place and route if applied
//--             
//--  Functional Description:  This file contains the VHDL which describes the 
//--              test bench for an FPGA implementation of a [4-bit mux]
//--  Hierarchy:  This test bench uses the [YourFPGA.vhd] component found
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
//--  Designed for: [Customer] 
//--                [Address]
//--                [City, ST ZIP]
//--                [www.customer, phone number]
//--  Designed by:  @author [your name] 
//--                [Organization]
//--                [email] 
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
module YourFPGA_tb;    
//----------------------------------------------------------------------
//--- constant declarations
//----------------------------------------------------------------------
   localparam  TIME = 10; // defines the wait period.
//----------------------------------------------------------------------                                                                      
//-- signal declarations 
//----------------------------------------------------------------------
//--  wire clock;    -- clock if needed
//--  wire reset_n;    -- reset if needed  
  reg a_tb;  // data input
  reg b_tb;  // data input
  reg c_tb;  // data input
  wire y_tb; // data output

  integer i,j,k;  // define and initialize indexes.
  integer ErrorCount;      // Used to count errors
  integer log_file;        // opens output file
//----------------------------------------------------------------------
//-- Component instances
//----------------------------------------------------------------------
//-- instantiate the device under test
Majority dut    // Device under Test  #(.TIME(10))
    ( 
        // Inputs
        .A(a_tb),
		    .B(b_tb),
        .C(c_tb),
         // Outputs
        .Y(y_tb)
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
  c_tb = 0;
  $display("Starting...");
    for(i=0; i<2; i = i+1) begin       // loop over number of a inputs possible
		  a_tb = i;
      for(j=0; j<2; j = j+1) begin     // loop over number of b inputs possible
		    b_tb = j;
		      for(k=0; k<2; k = k+1) begin   // loop over c inputs
			      c_tb = k;
			      #TIME;           // wait for T unit times
			// test the results
			      if ((i+j+k) < 2)  
               begin
				      if (y_tb == 1) 
                  begin     
					      ErrorCount = ErrorCount + 1;
					      $display ("Error");
                  end
                end
                else
				      if (y_tb != 1) 
                  begin
					      $display ("Error") ;
					      ErrorCount = ErrorCount + 1;
                  end

		    end   //over all k

      end           // over all j

    end             // over all i


    $display ("ErrorCount = %d" , ErrorCount);   // puts results in 
                                                          // transcript
     // write to file 
    log_file = $fopen("mylog");
    $fdisplay(log_file,"ErrorCount = %d" , ErrorCount); 
    $fclose(log_file);
  end

endmodule // of YourFPGA_tb;     


    