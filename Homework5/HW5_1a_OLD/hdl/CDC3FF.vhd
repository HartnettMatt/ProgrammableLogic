--------------------------------------------------------------------------------
-- Company: University of Colorado Boulder
--
-- File: CDC3FF.vhd
--
-- Description: A 3 flip flop clock domain crossing circuit driven by a toggle FF.
--
-- Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
-- Author: Matt Hartnett
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity CDC3FF is
port (
	Aclk : IN  std_logic;
	Bclk : IN  std_logic;
	reset : IN  std_logic;
    Dout : OUT std_logic
);
end CDC3FF;


architecture architecture_CDC3FF of CDC3FF is
	signal data : std_logic := '0';
    signal FF1_d, FF2_d : STD_LOGIC;

begin

    data_source : process (Aclk, reset) begin
        if(reset) then
            data <= '0';
        elsif (rising_edge(Aclk)) then
            data <= not data;
        end if;
    end process data_source;

    FF1 : process(Bclk, reset) begin
        if (reset) then
            FF1_d <= '0';
        elsif (rising_edge(Bclk)) then
            FF1_d <= data;
        end if;
    end process FF1;
    
    FF2 : process(Bclk, reset) begin
        if (reset) then
            FF2_d <= '0';
        elsif (rising_edge(Bclk)) then
            FF2_d <= FF1_d;
        end if;
    end process FF2;
    
    FF3 : process(Bclk, reset) begin
        if (reset) then
            Dout <= '0';
        elsif (rising_edge(Bclk)) then
            Dout <= FF2_d;
        end if;
    end process FF3;
   -- architecture body
end architecture_CDC3FF;
