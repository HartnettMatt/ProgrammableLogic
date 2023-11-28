--
-- Synopsys
-- Vhdl wrapper for top level design, written on Mon Nov 27 19:37:18 2023
--
library ieee;
use ieee.std_logic_1164.all;

entity wrapper_for_SlowFast is
   port (
      Aclk : in std_logic;
      Bclk : in std_logic;
      reset : in std_logic;
      Dout : out std_logic_vector(3 downto 0)
   );
end wrapper_for_SlowFast;

architecture architecture_slowfast of wrapper_for_SlowFast is

component SlowFast
 port (
   Aclk : in std_logic;
   Bclk : in std_logic;
   reset : in std_logic;
   Dout : out std_logic_vector (3 downto 0)
 );
end component;

signal tmp_Aclk : std_logic;
signal tmp_Bclk : std_logic;
signal tmp_reset : std_logic;
signal tmp_Dout : std_logic_vector (3 downto 0);

begin

tmp_Aclk <= Aclk;

tmp_Bclk <= Bclk;

tmp_reset <= reset;

Dout <= tmp_Dout;



u1:   SlowFast port map (
		Aclk => tmp_Aclk,
		Bclk => tmp_Bclk,
		reset => tmp_reset,
		Dout => tmp_Dout
       );
end architecture_slowfast;
