--------------------------------------------------------------------------------
--                                                                            --
--               Application Assignment 4 Module 1 Course 2                   --
--                                                                            --
--------------------------------------------------------------------------------
--
-- [Replace [items in brackets] with your content]
-- @file HW2P4.vhd
-- @brief Application Assignment 2-001 Example code with errors to be found
-- @version: 1.0 
-- Date of current revision:  @date [YYYY-MM-DD]  
-- Target FPGA: [Intel Altera MAX10] 
-- Tools used: [Quartus Prime 16.1] for editing and synthesis 
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
--             [Quartus Prime 16.1]  for place and route if applied
--             
--  Functional Description:  This file contains the VHDL which describes the 
--               FPGA implementation of a Majority Vote Circuit. The inputs are  
--               signals A, B, C with one output Y that is true only if at  
--               least 2 of the inputs are true.
 
--  Hierarchy:  There is only one level in this simple design.
--  
--  Designed for: Tim Scherr
--						University of Colorado Boulder
--						ECEN 5863, Homework 2
--                
--  Designed by:  @author Matt Hartnett
--                University of Colorado Boulder
--                maha7943@colorado.edu
-- 
--      Copyright (c) 2018 by Tim Scherr
--
-- Redistribution, modification or use of this software in source or binary
-- forms is permitted as long as the files maintain this copyright. Users are
-- permitted to modify this and use it to learn about the field of HDl code.
-- Tim Scherr and the University of Colorado are not liabSle for any misuse
-- of this material.
------------------------------------------------------------------------------
-- 

library ieee;                                	
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  
use ieee.std_logic_misc.all;        	
                                             		
entity HW2Q5 is port (
	CP: in std_logic; -- clock
	SR: in std_logic; -- Active low, synchronous reset
	P: in std_logic_vector(3 downto 0); -- Parallel input
	PE: in std_logic; -- Parallel Enable (Load)
	CEP: in std_logic; -- Count enable parallel input
	CET: in std_logic; -- Count enable trickle input
	Q: out std_logic_vector(3 downto 0);
	TC: out std_logic -- Terminal Count
);
end HW2Q5; 

architecture Behavorial of HW2Q5 is
	signal count: unsigned(3 downto 0) := "0000";
	signal control:std_logic_vector(1 downto 0);

begin

	Q <= std_logic_vector(count);
	control(0) <= SR and CEP and CET;
	control(1) <= SR and not PE;

	process (CP)
	begin
		if rising_edge(CP) then
			case control is
				when "00" => count <= "0000";
				when "01" => count <= count + 1;
				when "10" => count <= unsigned(P);
				when "11" => count <= unsigned(P);
				when others => count <= count;
			end case;
--			if (SR = '0') then -- Synchronous reset
--				count <= '0';
--			else
--				if PE = '0' then -- Parallel  input enable
--					count <= unsigned(P);
--				elsif CEP = '1' and CET = '1' then -- Count enables
--					count <= count + "0001"; -- Increment
--				else
--					count <= count;
--				end if;
--			end if;
		end if;
	end process;

	TC <= and_reduce(std_logic_vector(count)) and CET;	 -- Roll over signal


	
end Behavorial;
    