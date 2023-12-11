--------------------------------------------------------------------------------
-- Company: University of Colorado Boulder
--
-- File: fifo2x8.vhd
--
-- Description: An 8 bit FIFO with dual read and write ports
--
--
-- Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
-- Author: Matt Hartnett, Tim Scherr
--
--------------------------------------------------------------------------------

Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity fifo2x8 is port(
   clk1, clk2, rst: in std_logic;
   rd, wr, rdinc, wrinc : in std_logic;
   rdptrclr, wrptrclr   : in std_logic;
   full, empty          : out std_logic;
   data_in              : in std_logic_vector(7 downto 0);
   data_out             : out std_logic_vector(7 downto 0));
end fifo2x8;


architecture archfifo2x8 of fifo2x8 is
   type fifo_array is array(1 downto 0) of std_logic_vector(7 downto 0); -- makes use of VHDL's enumerated -- type
   signal fifo             : fifo_array;
   signal wrptr, rdptr     : std_logic;
   signal wrptrd1, wrptrd2 : std_logic;
   signal rptrd1, rptrd2   : std_logic;
   signal en               : std_logic_vector(1 downto 0);
   signal dmuxout          : std_logic_vector(7 downto 0);
begin

   -- fifo register array (Dual port RAM);
   reg_array: process(rst, clk1)
   begin
      if rst = '1' then
         for i in 1 downto 0 loop
            fifo(i) <= (others => '0');
         end loop;
      elsif (clk1'event and clk1 = '1') then
         if wr = '1' then -- wr could be the same as not FULL
            for i in 1 downto 0 loop
               if en(i) = '1' then
                  fifo(i) <= data_in;
               else
                  fifo(i) <= fifo(i);
               end if;
            end loop;
         end if;
      end if;
   end process;
   
   -- read pointer
   Read_cout: process (rst, clk2)
   Begin
      If rst = '1' then
         rdptr <= '0';
      elsif (rising_edge(clk2)) then
         if rdptrclr = '1' then
            rdptr <= '0';
         elsif rdinc = '1' then
            rdptr <= not(rdptr);
         end if;
      end if;
   end process;
   
   -- write pointer
   Write_count: process (rst, clk1)
   Begin
      if rst = '1' then
         wrptr <= '0';
      elsif (clk1'event and clk1 = '1') then
         if wrptrclr = '1' then
            wrptr <= '0';
         elsif wrinc = '1' then
            wrptr <= not(wrptr);
         end if;
      end if;
   end process;
   
   -- generate FULL signal
   detFull: process (rst, clk1)
   begin
      if rst = '1' then
         full <= '0';
      elsif (rising_edge(clk1)) then
         if(wrptr = '1' and rptrd2 = '1') then -- If both are 1, then it's full
            full <= '1';
         else
            full <= '0';
         end if;
      end if;
   end process;

   -- Synchronize the read pointer across domains
   rptr_d1: process(rst, clk1)
   begin
      if (rst = '1') then
         rptrd1 <= '0';
      else if (rising_edge(clk1)) then
         rptrd1 <= rdptr;
      end if;
   end process;
   rptr_d2: process(rst, clk1)
   begin
      if (rst = '1') then
         rptrd2 <= '0';
      else if (rising_edge(clk1)) then
         rptrd2 <= rptrd1;
      end if;
   end process;
   
   -- generate EMPTY signal
   detEmpty: process (rst, clk2)
   begin
      if (rst = '1') then
         empty <= '1';
         wrptrd1 <= '0';
         wrptrd2 <= '0';
      elsif (rising_edge(clk2)) then
         if(rdptr = '0' and wrptrd2 = '0') then -- If both are zero, then it's empty
            empty <= '1';
         else
            empty <= '0';
         end if;
      end if;
   end process;

   -- Synchronize the write pointer across domains
   wrptr_d1: process(rst, clk2)
   begin
      if (rst = '1') then
         wrptrd1 <= '0';
      else if (rising_edge(clk2)) then
         wrptrd1 <= wrptr;
      end if;
   end process;
   wrptr_d2: process(rst, clk2)
   begin
      if (rst = '1') then
         wrptrd2 <= '0';
      else if (rising_edge(clk2)) then
         wrptrd2 <= wrptrd1;
      end if;
   end process;

   -- 2:1 output data mux
   With rdptr select
      Dmuxout <= fifo(0) when '0',
                 fifo(1) when '1',
                 fifo(1) when others;

   -- FIFO register selector decoder
   With wrptr select
      en <= "01" when '0',
            "10" when '1',
            "10" when others;

   -- Clk2 control of outputs
   Read_out: process (clk2, rd, dmuxout)
   Begin
      if (rising_edge(clk2)) then
         If rd = '1' then -- typically rd could be same as not empty
            data_out <= dmuxout;
         else
            data_out <= data_out;
         end if;
      end if;
   end process;
end archfifo2x8;