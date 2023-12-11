--------------------------------------------------------------------------------
-- Company: University of Colorado Boulder
--
-- File: fifo2x8_tb.vhd
--
-- Description: An 8 bit FIFO with dual read and write ports
--
--
-- Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
-- Author: Matt Hartnett
--
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fifo2x8_tb is
end fifo2x8_tb;

architecture Behavioral of fifo2x8_tb is
    -- Inputs
    signal clk1 : std_logic := '0';
    signal clk2 : std_logic := '1';
    signal rst, rd, wr, rdinc, wrinc, rdptrclr, wrptrclr : std_logic := '0';
    signal data_in : std_logic_vector(7 downto 0) := (others => '0');
    
    -- Outputs
    signal data_out : std_logic_vector(7 downto 0);

    -- Component Declaration
    component fifo2x8
        port (
            clk1, clk2, rst: in std_logic;
            rd, wr, rdinc, wrinc : in std_logic;
            rdptrclr, wrptrclr   : in std_logic;
            full, empty          : out std_logic;
            data_in              : in std_logic_vector(7 downto 0);
            data_out             : out std_logic_vector(7 downto 0));
    end component;

    -- Instantiate the component
    begin
        DUT: fifo2x8 port map (
            clk1 => clk1,
            clk2 => clk2,
            rst => rst,
            rd => rd,
            wr => wr,
            rdinc => rdinc,
            wrinc => wrinc,
            rdptrclr => rdptrclr,
            wrptrclr => wrptrclr,
            data_in => data_in,
            data_out => data_out
        );

 -- Clock generation process
    clock1_process: process
    begin
        while true loop
            wait for 20 ns;
            clk1 <= not clk1;
        end loop;
    end process clock1_process;

    clock2_process: process
    begin
        while true loop
            wait for 20 ns;
            clk2 <= not clk2;
        end loop;
    end process clock2_process;

    -- Initial values process
    process
    begin
        rst <= '1';
        rd <= '1';
        wr <= '0';
        rdinc <= '1';
        wrinc <= '1';
        rdptrclr <= '1';
        wrptrclr <= '1';
        
        wait for 50 ns;
        rst <= '0';
        wait for 40 ns;
        wr <= '1';
        rdptrclr <= '0';
        wrptrclr <= '0';
        data_in <= "10101010";
        wait for 40 ns;
        wr <= '0';
        rdptrclr <= '1';
        wait for 40 ns;
        wrptrclr <= '1';
        
        
        -- Simulate some clock cycles
        wait for 2100 ns; 

        -- End simulation
        assert false report "Simulation ended" severity failure;
        wait;
    end process;

end Behavioral;
