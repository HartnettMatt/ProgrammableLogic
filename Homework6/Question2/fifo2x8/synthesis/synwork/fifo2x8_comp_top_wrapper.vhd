--
-- Synopsys
-- Vhdl wrapper for top level design, written on Sun Dec 10 17:23:45 2023
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wrapper_for_fifo2x8 is
   port (
      clk1 : in std_logic;
      clk2 : in std_logic;
      rst : in std_logic;
      rd : in std_logic;
      wr : in std_logic;
      rdinc : in std_logic;
      wrinc : in std_logic;
      rdptrclr : in std_logic;
      wrptrclr : in std_logic;
      full : out std_logic;
      empty : out std_logic;
      data_in : in std_logic_vector(7 downto 0);
      data_out : out std_logic_vector(7 downto 0)
   );
end wrapper_for_fifo2x8;

architecture archfifo2x8 of wrapper_for_fifo2x8 is

component fifo2x8
 port (
   clk1 : in std_logic;
   clk2 : in std_logic;
   rst : in std_logic;
   rd : in std_logic;
   wr : in std_logic;
   rdinc : in std_logic;
   wrinc : in std_logic;
   rdptrclr : in std_logic;
   wrptrclr : in std_logic;
   full : out std_logic;
   empty : out std_logic;
   data_in : in std_logic_vector (7 downto 0);
   data_out : out std_logic_vector (7 downto 0)
 );
end component;

signal tmp_clk1 : std_logic;
signal tmp_clk2 : std_logic;
signal tmp_rst : std_logic;
signal tmp_rd : std_logic;
signal tmp_wr : std_logic;
signal tmp_rdinc : std_logic;
signal tmp_wrinc : std_logic;
signal tmp_rdptrclr : std_logic;
signal tmp_wrptrclr : std_logic;
signal tmp_full : std_logic;
signal tmp_empty : std_logic;
signal tmp_data_in : std_logic_vector (7 downto 0);
signal tmp_data_out : std_logic_vector (7 downto 0);

begin

tmp_clk1 <= clk1;

tmp_clk2 <= clk2;

tmp_rst <= rst;

tmp_rd <= rd;

tmp_wr <= wr;

tmp_rdinc <= rdinc;

tmp_wrinc <= wrinc;

tmp_rdptrclr <= rdptrclr;

tmp_wrptrclr <= wrptrclr;

full <= tmp_full;

empty <= tmp_empty;

tmp_data_in <= data_in;

data_out <= tmp_data_out;



u1:   fifo2x8 port map (
		clk1 => tmp_clk1,
		clk2 => tmp_clk2,
		rst => tmp_rst,
		rd => tmp_rd,
		wr => tmp_wr,
		rdinc => tmp_rdinc,
		wrinc => tmp_wrinc,
		rdptrclr => tmp_rdptrclr,
		wrptrclr => tmp_wrptrclr,
		full => tmp_full,
		empty => tmp_empty,
		data_in => tmp_data_in,
		data_out => tmp_data_out
       );
end archfifo2x8;
