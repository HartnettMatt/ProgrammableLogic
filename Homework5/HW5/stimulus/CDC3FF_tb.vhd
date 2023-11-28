----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Mon Nov 27 18:21:55 2023
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: University of Colorado Boulder
--
-- File: CDC3FF_tb.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- Testbench for the CDC3FF synchronizer module
--
-- Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
-- Author: Matt Hartnett
--
--------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity CDC3FF_tb is
end CDC3FF_tb;

architecture behavioral of CDC3FF_tb is

    constant ACLK_PERIOD : time := 20 ns; -- 50MHZ
    constant BCLK_PERIOD : time := 36.10 ns; -- 27.7MHZ

    signal ACLK : std_logic := '0';
    signal BCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component CDC3FF
        -- ports
        port( 
            -- Inputs
            Aclk : in std_logic;
            Bclk : in std_logic;
            reset : in std_logic;

            -- Outputs
            Dout : out std_logic

            -- Inouts

        );
    end component;

begin

    process
        variable vhdl_initial : BOOLEAN := TRUE;

    begin
        if ( vhdl_initial ) then
            -- Assert Reset
            NSYSRESET <= '0';
            wait for ( ACLK_PERIOD * 10 );
            
            NSYSRESET <= '1';
            wait;
        end if;
    end process;

    -- Clock Driver
    ACLK <= not ACLK after (ACLK_PERIOD / 2.0 );
    BCLK <= not BCLK after (BCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  CDC3FF
    CDC3FF_0 : CDC3FF
        -- port map
        port map( 
            -- Inputs
            Aclk => ACLK,
            Bclk => BCLK,
            reset => NSYSRESET,

            -- Outputs
            Dout =>  open
        );

end behavioral;

