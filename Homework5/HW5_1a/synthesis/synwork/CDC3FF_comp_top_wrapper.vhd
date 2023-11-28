--
-- Synopsys
-- Vhdl wrapper for top level design, written on Mon Nov 27 18:11:41 2023
--
library ieee;
use ieee.std_logic_1164.all;

entity wrapper_for_CDC3FF is
   port (
      Aclk : in std_logic;
      Bclk : in std_logic;
      reset : in std_logic;
      Dout : out std_logic
   );
end wrapper_for_CDC3FF;

architecture architecture_cdc3ff of wrapper_for_CDC3FF is

component CDC3FF
 port (
   Aclk : in std_logic;
   Bclk : in std_logic;
   reset : in std_logic;
   Dout : out std_logic
 );
end component;

signal tmp_Aclk : std_logic;
signal tmp_Bclk : std_logic;
signal tmp_reset : std_logic;
signal tmp_Dout : std_logic;

begin

tmp_Aclk <= Aclk;

tmp_Bclk <= Bclk;

tmp_reset <= reset;

Dout <= tmp_Dout;



u1:   CDC3FF port map (
		Aclk => tmp_Aclk,
		Bclk => tmp_Bclk,
		reset => tmp_reset,
		Dout => tmp_Dout
       );
end architecture_cdc3ff;
