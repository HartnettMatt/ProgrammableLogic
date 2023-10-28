--------------------------------------------------------------------------------
--                                                                            --
--                     [Functional Unit Name]  Test Bench                     --
--                                                                            --
--------------------------------------------------------------------------------
--
-- Replace [items in brackets] with your content
-- @file [YourFPGA_tb.vhd]
-- @version: 1.0 
-- Date of current revision:  @date YYYY-MM-DD  
-- Target FPGA: [Intel Altera MAX10] 
-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
--             [Quartus Prime 16.1]  for place and route if applied
--             
--  Functional Description:  This file contains the VHDL which describes the 
--              test bench for an FPGA implementation of a [4-bit mux]
--  Hierarchy:  This test bench uses the [YourFPGA.vhd] component found
--              in the Work Library.
--             The YourFPGA component is instantiated. This is the component 
--             under test.  Other devices on the board are modeled as processes 
--             which run concurrently.    The other 
--             devices are listed in the following function sections:
--                [ I.   Clock - generates XX MHz clock 
--                 II.  Reset control
--                 III. Interrupt Control
--                 IV.  Address/Data Bus
--                      etc.         ]
--
--              [The FPGA is one entity.  The architecture is one
--              functional section, which compares all the possible
--              input bit vector combinations and checks to see if the
--              result is correct after a 10 ns delay.]   

--	 TESTS 
--   I. [Majority Vote test
--    compare all the possible input bit vector combinations and checks to see 
--    if the result is correct after a 10 ns delay.]
--  
--  Designed for: [Customer] 
--                [Address]
--                [City, ST ZIP]
--                [www.customer, phone number]
--  Designed by:  @author [your name] 
--                [Organization]
--                [email] 
-- 
--      Copyright (c) 2018 by Tim Scherr
--
-- Redistribution, modification or use of this software in source or binary
-- forms is permitted as long as the files maintain this copyright. Users are
-- permitted to modify this and use it to learn about the field of HDl code.
-- Tim Scherr and the University of Colorado are not liable for any misuse
-- of this material.
------------------------------------------------------------------------------
-- 
--

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------

library ieee;                                
use ieee.std_logic_1164.all;                 
use ieee.numeric_std.all; 
use ieee.numeric_bit_unsigned.all;
use std.textio.all;
use work.all;

----------------------------------------------------------------------
-- Testbench entity declaration
----------------------------------------------------------------------
entity YourFPGA_tb is 
--  port( ); 
-- no external interface.....THIS IS THE TOP LEVEL
end YourFPGA_tb;

-------------------------------------------------------------------
-- Testbench architecture body
----------------------------------------------------------------------
architecture behavioral of YourFPGA_tb is      
----------------------------------------------------------------------
--- constant declarations
----------------------------------------------------------------------
   constant delay:  TIME := 10.00 NS; -- defines the wait period.
----------------------------------------------------------------------                                                                      
-- signal declarations 
----------------------------------------------------------------------
--  signal clock:  std_logic := '0';    -- clock if needed
--  signal reset_n:  std_logic := '0';    -- reset if needed  
  signal a_tb:  std_logic := '0';  -- data input
  signal b_tb:  std_logic := '0';  -- data input
  signal c_tb:  std_logic := '0';  -- data input
  signal y_tb:  std_logic; -- data output

--------------------------------------------------
-- component declarations before instantiatation 
--------------------------------------------------
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- Majority Vote Component
component Majority 
   port (                 
    A, B, C: in std_logic;   
	Y: out std_logic
    );  
end component;
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------

begin
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- instantiate the device under test
DUT : Majority        -- Device under Test
    port map( 
        -- Inputs
        A    => a_tb,
		    B    => b_tb,
        C    => c_tb,
         -- Outputs
        Y    => y_tb
        );  

----------------------------------------------------------------------
-- External Device Simulation Processes
----------------------------------------------------------------------


----------------------------------------------------------------------
-- Test Process
----------------------------------------------------------------------                                       
  my_label: process                     
  variable i,j,k: integer :=0;  -- define and initialize indexes.
  variable ErrorCount: integer := 0;      -- Used to count errors
  variable line_var : line;
  file output_file: text is out "testresults.txt";  -- opens output file
  begin
    for i in 0 to 1 loop        -- loop over number of a inputs possible
		  a_tb <= std_logic(to_unsigned(i,1)(0));
      for j in 0 to 1 loop     -- loop over number of b inputs possible
		    b_tb <= std_logic(to_unsigned(j,1)(0));
		      for k in 0 to 1 loop   -- loop over c inputs
			      c_tb <= std_logic(to_unsigned(k,1)(0));
			      wait for delay;
			-- test the results
			      if (i+j+k) < 2 then 
				      if Y_tb /= '0' then
					      assert Y_tb /= '0' report "Error" severity error;
					      ErrorCount := ErrorCount + 1;
				      end if;
            else
				      if Y_tb /= '1' then
					      assert Y_tb /= '1' report "Error" severity error;
					      ErrorCount := ErrorCount + 1;  
              end if;              
			      end if;
		    end loop;
      end loop;          -- over all j
    end loop;            -- over all i


    report "ErrorCount = " & integer'image(ErrorCount);   -- puts results in 
                                                          -- transcript

    write(line_var, integer'image(ErrorCount));  -- put result in file 
    writeline(output_file, line_var);
    file_close(output_file);
    wait;     -- wait forces End of Simulation
  end process;

end behavioral; -- of YourFPGA_tb;     


    