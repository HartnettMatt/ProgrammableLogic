--------------------------------------------------------------------------------
-- Company: University of Colorado Boulder
--
-- File: SlowFast.vhd
--
-- Description: A syncSignal clock domain crossing design. This design has a slow
-- Aclk and a fast Bclk.
--
--
-- Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
-- Author: Matt Hartnett
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity SlowFast is
port (
	Aclk : IN  std_logic;
	Bclk : IN  std_logic;
	reset : IN  std_logic;
    Dout : OUT std_logic_vector(3 downto 0)
);
end SlowFast;

architecture architecture_SlowFast of SlowFast is

signal data : std_logic;
signal shiftRegister : std_logic_vector (3 downto 0);
signal syncSignal : std_logic;
signal syncOut : std_logic_vector (3 downto 0);

begin
    -- FF to generate the toggle
    data_source : process (Aclk, reset) begin
        if(reset) then
            data <= '0';
        elsif (rising_edge(Aclk)) then
            data <= not data;
        end if;
    end process data_source;
   
   -- Shift register takes in toggle output and pushes data through
    shift_register : process (Aclk, reset) begin
        if(reset) then 
            shiftRegister <= "0000";
        elsif (rising_edge(Aclk)) then
            shiftRegister(3 downto 1) <= shiftRegister (2 downto 0);
            shiftRegister(0) <= data;
        end if;
    end process shift_register;
    
    -- Generate the syncSignal, had to be changed to switch clock speeds
    syncFF1 : process (Bclk, reset) begin
        if(reset) then
            syncSignal <= '0';
        elsif(rising_edge(Bclk)) then
            syncSignal <= Aclk; -- Slow clock used as the input to a FF that triggers on the fast clock
        end if;
    end process syncFF1;
    
    -- Create the synchronized data by clocking (off the fast) the incoming data when the syncSignal is high 
    sync : process (Bclk, reset, syncSignal) begin
        if(reset) then
            syncOut <= "0000";
        elsif(rising_edge(Bclk)) then
            if(syncSignal) then
                syncOut <= shiftRegister;
            else 
                syncOut <= syncOut;
            end if;
        end if;
    end process sync;
    
    -- Clock the sychronized data out on to Bclk
    output : process (Bclk, reset) begin
        if(reset) then
            Dout <= "0000";
        elsif(rising_edge(Bclk)) then
            Dout <= syncOut;
        end if;
    end process output;
end architecture_SlowFast;
