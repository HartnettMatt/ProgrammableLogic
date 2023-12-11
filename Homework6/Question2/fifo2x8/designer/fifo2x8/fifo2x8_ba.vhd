-- Version: v12.6 12.900.20.24
-- File used only for Simulation

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity sdf_IOPAD_TRI is

    port( PAD : out   std_logic;
          D   : in    std_logic;
          E   : in    std_logic
        );

end sdf_IOPAD_TRI;

architecture DEF_ARCH of sdf_IOPAD_TRI is 

  component IOPAD_TRI_VDDI
    port( OIN_VDD : in    std_logic := 'U';
          EIN_VDD : in    std_logic := 'U';
          PAD_P   : out   std_logic
        );
  end component;

  component IOPAD_VDD
    port( OIN_P    : in    std_logic := 'U';
          EIN_P    : in    std_logic := 'U';
          IOUT_VDD : in    std_logic := 'U';
          OIN_VDD  : out   std_logic;
          EIN_VDD  : out   std_logic;
          IOUT_IN  : out   std_logic
        );
  end component;

    signal NET_OIN_VDD, NET_EIN_VDD : std_logic;

begin 


    U_VCCI : IOPAD_TRI_VDDI
      port map(OIN_VDD => NET_OIN_VDD, EIN_VDD => NET_EIN_VDD, 
        PAD_P => PAD);
    
    U_VCCA : IOPAD_VDD
      port map(OIN_P => D, EIN_P => E, IOUT_VDD => OPEN, OIN_VDD
         => NET_OIN_VDD, EIN_VDD => NET_EIN_VDD, IOUT_IN => OPEN);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity sdf_IOPAD_IN is

    port( PAD : in    std_logic;
          Y   : out   std_logic
        );

end sdf_IOPAD_IN;

architecture DEF_ARCH of sdf_IOPAD_IN is 

  component IOPAD_IN_VDDI
    port( PAD_P    : in    std_logic := 'U';
          IOUT_VDD : out   std_logic
        );
  end component;

  component IOPAD_DELAY
    port( IOUT_IN : in    std_logic := 'U';
          IOUT_P  : out   std_logic
        );
  end component;

  component IOPAD_VDD
    port( OIN_P    : in    std_logic := 'U';
          EIN_P    : in    std_logic := 'U';
          IOUT_VDD : in    std_logic := 'U';
          OIN_VDD  : out   std_logic;
          EIN_VDD  : out   std_logic;
          IOUT_IN  : out   std_logic
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

    signal NET_IOUT_VDD, NET_IOUT_IN, ADLIB_GND : std_logic;
    signal GND_power_net1 : std_logic;

begin 

    ADLIB_GND <= GND_power_net1;

    U_VCCI : IOPAD_IN_VDDI
      port map(PAD_P => PAD, IOUT_VDD => NET_IOUT_VDD);
    
    U_DELAY : IOPAD_DELAY
      port map(IOUT_IN => NET_IOUT_IN, IOUT_P => Y);
    
    U_VCCA : IOPAD_VDD
      port map(OIN_P => ADLIB_GND, EIN_P => ADLIB_GND, IOUT_VDD
         => NET_IOUT_VDD, OIN_VDD => OPEN, EIN_VDD => OPEN, 
        IOUT_IN => NET_IOUT_IN);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);


end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity fifo2x8 is

    port( clk1     : in    std_logic;
          clk2     : in    std_logic;
          rst      : in    std_logic;
          rd       : in    std_logic;
          wr       : in    std_logic;
          rdinc    : in    std_logic;
          wrinc    : in    std_logic;
          rdptrclr : in    std_logic;
          wrptrclr : in    std_logic;
          full     : out   std_logic;
          empty    : out   std_logic;
          data_in  : in    std_logic_vector(7 downto 0);
          data_out : out   std_logic_vector(7 downto 0)
        );

end fifo2x8;

architecture DEF_ARCH of fifo2x8 is 

  component IOINFF_BYPASS
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOOUTFF_BYPASS
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component sdf_IOPAD_TRI
    port( PAD : out   std_logic;
          D   : in    std_logic := 'U';
          E   : in    std_logic := 'U'
        );
  end component;

  component INV_BA
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOTRI_OB_EB
    port( D    : in    std_logic := 'U';
          E    : in    std_logic := 'U';
          DOUT : out   std_logic;
          EOUT : out   std_logic
        );
  end component;

  component sdf_IOPAD_IN
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component IOENFF_BYPASS
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOIN_IB
    port( YIN : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component RGB_NG
    port( An  : in    std_logic := 'U';
          ENn : in    std_logic := 'U';
          YL  : out   std_logic;
          YR  : out   std_logic
        );
  end component;

  component GB_NG
    port( An  : in    std_logic := 'U';
          ENn : in    std_logic := 'U';
          YNn : out   std_logic;
          YSn : out   std_logic
        );
  end component;

  component IP_INTERFACE
    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          IPA : out   std_logic;
          IPB : out   std_logic;
          IPC : out   std_logic
        );
  end component;

  component FLASH_FREEZE
    port( FF_TO_START : out   std_logic;
          FF_DONE     : out   std_logic
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal \reg_array.fifo_0_Z[7]\, \reg_array.fifo_0_Z[6]\, 
        \reg_array.fifo_0_Z[5]\, \reg_array.fifo_0_Z[4]\, 
        \reg_array.fifo_0_Z[3]\, \reg_array.fifo_0_Z[2]\, 
        \reg_array.fifo_0_Z[1]\, \reg_array.fifo_0_Z[0]\, 
        \reg_array.fifo_1_Z[7]\, \reg_array.fifo_1_Z[6]\, 
        \reg_array.fifo_1_Z[5]\, \reg_array.fifo_1_Z[4]\, 
        \reg_array.fifo_1_Z[3]\, \reg_array.fifo_1_Z[2]\, 
        \reg_array.fifo_1_Z[1]\, \reg_array.fifo_1_Z[0]\, 
        \dmuxout_Z[7]\, \dmuxout_Z[6]\, \dmuxout_Z[5]\, 
        \dmuxout_Z[4]\, \dmuxout_Z[3]\, \dmuxout_Z[2]\, 
        \dmuxout_Z[1]\, \dmuxout_Z[0]\, \data_in_c[7]\, 
        \data_in_c[6]\, \data_in_c[5]\, \data_in_c[4]\, 
        \data_in_c[3]\, \data_in_c[2]\, \data_in_c[1]\, 
        \data_in_c[0]\, \data_out_c[7]\, \data_out_c[6]\, 
        \data_out_c[5]\, \data_out_c[4]\, \data_out_c[3]\, 
        \data_out_c[2]\, \data_out_c[1]\, \data_out_c[0]\, 
        rdptr_Z, wrptrd2_Z, wrptr_Z, \GND\, wrptrd1_Z, rptrd2_Z, 
        rptrd1_Z, fifo_1_0_sqmuxa_Z, \Read_cout.un1_rdinc_Z\, 
        \Write_count.un1_wrinc_Z\, \detFull.un7_wrptr_Z\, 
        fifo_0_0_sqmuxa_Z, \detEmpty.un9_rdptr_Z\, 
        \Read_cout.rdptr_3_Z\, \Write_count.wrptr_2_Z\, \VCC\, 
        \rst_ibuf_RNIUUM5/U0_YNn\, \clk1_ibuf_RNIGE28/U0_YNn\, 
        \clk2_ibuf_RNIHJC2/U0_YNn\, rst_c, rd_c, wr_c, rdinc_c, 
        wrinc_c, rdptrclr_c, wrptrclr_c, full_c, empty_c, 
        ff_to_start_net, \data_out_obuf[2]/U0/DOUT1\, 
        \data_out_obuf[2]/U0/DOUT\, \data_out_obuf[2]/U0/EOUT1\, 
        \data_out_obuf[2]/U0/EOUT\, \data_out_obuf[7]/U0/DOUT1\, 
        \data_out_obuf[7]/U0/DOUT\, \data_out_obuf[7]/U0/EOUT1\, 
        \data_out_obuf[7]/U0/EOUT\, \rdptrclr_ibuf/U0/YIN1\, 
        \rdptrclr_ibuf/U0/YIN\, \data_out_obuf[6]/U0/DOUT1\, 
        \data_out_obuf[6]/U0/DOUT\, \data_out_obuf[6]/U0/EOUT1\, 
        \data_out_obuf[6]/U0/EOUT\, \rst_ibuf/U0/YIN1\, 
        \rst_ibuf/U0/YIN\, \data_in_ibuf[5]/U0/YIN1\, 
        \data_in_ibuf[5]/U0/YIN\, clk2_ibuf_Z, \clk2_ibuf/U0/YIN\, 
        \data_in_ibuf[1]/U0/YIN1\, \data_in_ibuf[1]/U0/YIN\, 
        \rdinc_ibuf/U0/YIN1\, \rdinc_ibuf/U0/YIN\, 
        \data_in_ibuf[7]/U0/YIN1\, \data_in_ibuf[7]/U0/YIN\, 
        \data_out_obuf[1]/U0/DOUT1\, \data_out_obuf[1]/U0/DOUT\, 
        \data_out_obuf[1]/U0/EOUT1\, \data_out_obuf[1]/U0/EOUT\, 
        \data_out_obuf[4]/U0/DOUT1\, \data_out_obuf[4]/U0/DOUT\, 
        \data_out_obuf[4]/U0/EOUT1\, \data_out_obuf[4]/U0/EOUT\, 
        \rd_ibuf/U0/YIN1\, \rd_ibuf/U0/YIN\, 
        \data_in_ibuf[3]/U0/YIN1\, \data_in_ibuf[3]/U0/YIN\, 
        \empty_obuf/U0/DOUT1\, \empty_obuf/U0/DOUT\, 
        \empty_obuf/U0/EOUT1\, \empty_obuf/U0/EOUT\, 
        \data_out_obuf[5]/U0/DOUT1\, \data_out_obuf[5]/U0/DOUT\, 
        \data_out_obuf[5]/U0/EOUT1\, \data_out_obuf[5]/U0/EOUT\, 
        \wrptrclr_ibuf/U0/YIN1\, \wrptrclr_ibuf/U0/YIN\, 
        \full_obuf/U0/DOUT1\, \full_obuf/U0/DOUT\, 
        \full_obuf/U0/EOUT1\, \full_obuf/U0/EOUT\, 
        \wrinc_ibuf/U0/YIN1\, \wrinc_ibuf/U0/YIN\, 
        \data_out_obuf[0]/U0/DOUT1\, \data_out_obuf[0]/U0/DOUT\, 
        \data_out_obuf[0]/U0/EOUT1\, \data_out_obuf[0]/U0/EOUT\, 
        \data_in_ibuf[0]/U0/YIN1\, \data_in_ibuf[0]/U0/YIN\, 
        \data_in_ibuf[4]/U0/YIN1\, \data_in_ibuf[4]/U0/YIN\, 
        \data_in_ibuf[2]/U0/YIN1\, \data_in_ibuf[2]/U0/YIN\, 
        \data_out_obuf[3]/U0/DOUT1\, \data_out_obuf[3]/U0/DOUT\, 
        \data_out_obuf[3]/U0/EOUT1\, \data_out_obuf[3]/U0/EOUT\, 
        \wr_ibuf/U0/YIN1\, \wr_ibuf/U0/YIN\, 
        \data_in_ibuf[6]/U0/YIN1\, \data_in_ibuf[6]/U0/YIN\, 
        clk1_ibuf_Z, \clk1_ibuf/U0/YIN\, clk2_c, clk1_c, rst_arst, 
        AFLSDF_VCC, AFLSDF_GND, \AFLSDF_INV_0\, \AFLSDF_INV_1\, 
        \AFLSDF_INV_2\, \AFLSDF_INV_3\, \AFLSDF_INV_4\, 
        \AFLSDF_INV_5\, \AFLSDF_INV_6\, \AFLSDF_INV_7\, 
        \AFLSDF_INV_8\, \AFLSDF_INV_9\, \AFLSDF_INV_10\, 
        \AFLSDF_INV_11\, \AFLSDF_INV_12\, \AFLSDF_INV_13\, 
        \AFLSDF_INV_14\, \AFLSDF_INV_15\, \AFLSDF_INV_16\, 
        \AFLSDF_INV_17\, \AFLSDF_INV_18\, \AFLSDF_INV_19\, 
        \AFLSDF_INV_20\, \AFLSDF_INV_21\, \AFLSDF_INV_22\, 
        \AFLSDF_INV_23\, \AFLSDF_INV_24\, \AFLSDF_INV_25\, 
        \AFLSDF_INV_26\ : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

    for all : sdf_IOPAD_TRI
	Use entity work.sdf_IOPAD_TRI(DEF_ARCH);
    for all : sdf_IOPAD_IN
	Use entity work.sdf_IOPAD_IN(DEF_ARCH);
begin 

    AFLSDF_GND <= GND_power_net1;
    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    AFLSDF_VCC <= VCC_power_net1;

    \rst_ibuf/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \rst_ibuf/U0/YIN1\, Y => \rst_ibuf/U0/YIN\);
    
    \data_in_ibuf[0]/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \data_in_ibuf[0]/U0/YIN1\, Y => 
        \data_in_ibuf[0]/U0/YIN\);
    
    \data_out_obuf[2]/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \data_out_obuf[2]/U0/DOUT1\, Y => 
        \data_out_obuf[2]/U0/DOUT\);
    
    \wrinc_ibuf/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \wrinc_ibuf/U0/YIN1\, Y => 
        \wrinc_ibuf/U0/YIN\);
    
    \data_out_obuf[7]/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => data_out(7), D => 
        \data_out_obuf[7]/U0/DOUT\, E => 
        \data_out_obuf[7]/U0/EOUT\);
    
    AFLSDF_INV_20 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_20\);
    
    \data_out_obuf[0]/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => \data_out_c[0]\, E => \VCC\, DOUT => 
        \data_out_obuf[0]/U0/DOUT1\, EOUT => 
        \data_out_obuf[0]/U0/EOUT1\);
    
    \data_out_obuf[1]/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => \data_out_c[1]\, E => \VCC\, DOUT => 
        \data_out_obuf[1]/U0/DOUT1\, EOUT => 
        \data_out_obuf[1]/U0/EOUT1\);
    
    \data_out_obuf[2]/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => \data_out_c[2]\, E => \VCC\, DOUT => 
        \data_out_obuf[2]/U0/DOUT1\, EOUT => 
        \data_out_obuf[2]/U0/EOUT1\);
    
    \rst_ibuf/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => rst, Y => \rst_ibuf/U0/YIN1\);
    
    \data_out_obuf[5]/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \data_out_obuf[5]/U0/DOUT1\, Y => 
        \data_out_obuf[5]/U0/DOUT\);
    
    \data_out_obuf[2]/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \data_out_obuf[2]/U0/EOUT1\, Y => 
        \data_out_obuf[2]/U0/EOUT\);
    
    \data_out_obuf[4]/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => \data_out_c[4]\, E => \VCC\, DOUT => 
        \data_out_obuf[4]/U0/DOUT1\, EOUT => 
        \data_out_obuf[4]/U0/EOUT1\);
    
    \data_in_ibuf[0]/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \data_in_ibuf[0]/U0/YIN\, E => \GND\, Y => 
        \data_in_c[0]\);
    
    \clk2_ibuf/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \clk2_ibuf/U0/YIN\, E => \GND\, Y => OPEN);
    
    \reg_array.fifo_1[3]\ : SLE
      port map(D => \data_in_c[3]\, CLK => clk1_c, EN => 
        fifo_1_0_sqmuxa_Z, ALn => \AFLSDF_INV_0\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_1_Z[3]\);
    
    \data_out_Z[6]\ : SLE
      port map(D => \dmuxout_Z[6]\, CLK => clk2_c, EN => rd_c, 
        ALn => \VCC\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => \data_out_c[6]\);
    
    \data_out_obuf[6]/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => data_out(6), D => 
        \data_out_obuf[6]/U0/DOUT\, E => 
        \data_out_obuf[6]/U0/EOUT\);
    
    \rd_ibuf/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \rd_ibuf/U0/YIN1\, Y => \rd_ibuf/U0/YIN\);
    
    \data_out_obuf[4]/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => data_out(4), D => 
        \data_out_obuf[4]/U0/DOUT\, E => 
        \data_out_obuf[4]/U0/EOUT\);
    
    AFLSDF_INV_10 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_10\);
    
    fifo_0_0_sqmuxa : CFG2
      generic map(INIT => x"4")

      port map(A => wrptr_Z, B => wr_c, Y => fifo_0_0_sqmuxa_Z);
    
    \data_in_ibuf[7]/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \data_in_ibuf[7]/U0/YIN\, E => \GND\, Y => 
        \data_in_c[7]\);
    
    \full_obuf/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => full_c, E => \VCC\, DOUT => 
        \full_obuf/U0/DOUT1\, EOUT => \full_obuf/U0/EOUT1\);
    
    \data_out_Z[3]\ : SLE
      port map(D => \dmuxout_Z[3]\, CLK => clk2_c, EN => rd_c, 
        ALn => \VCC\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => \data_out_c[3]\);
    
    \data_out_obuf[1]/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => data_out(1), D => 
        \data_out_obuf[1]/U0/DOUT\, E => 
        \data_out_obuf[1]/U0/EOUT\);
    
    \rdinc_ibuf/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \rdinc_ibuf/U0/YIN\, E => \GND\, Y => 
        rdinc_c);
    
    \reg_array.fifo_0[4]\ : SLE
      port map(D => \data_in_c[4]\, CLK => clk1_c, EN => 
        fifo_0_0_sqmuxa_Z, ALn => \AFLSDF_INV_1\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_0_Z[4]\);
    
    \data_out_obuf[6]/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => \data_out_c[6]\, E => \VCC\, DOUT => 
        \data_out_obuf[6]/U0/DOUT1\, EOUT => 
        \data_out_obuf[6]/U0/EOUT1\);
    
    \wrptrclr_ibuf/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \wrptrclr_ibuf/U0/YIN1\, Y => 
        \wrptrclr_ibuf/U0/YIN\);
    
    \clk2_ibuf/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => clk2_ibuf_Z, Y => \clk2_ibuf/U0/YIN\);
    
    \data_out_obuf[7]/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => \data_out_c[7]\, E => \VCC\, DOUT => 
        \data_out_obuf[7]/U0/DOUT1\, EOUT => 
        \data_out_obuf[7]/U0/EOUT1\);
    
    wrptrd2 : SLE
      port map(D => wrptrd1_Z, CLK => clk2_c, EN => \VCC\, ALn
         => \AFLSDF_INV_2\, ADn => \VCC\, SLn => \VCC\, SD => 
        \GND\, LAT => \GND\, Q => wrptrd2_Z);
    
    AFLSDF_INV_5 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_5\);
    
    AFLSDF_INV_0 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_0\);
    
    \reg_array.fifo_0[1]\ : SLE
      port map(D => \data_in_c[1]\, CLK => clk1_c, EN => 
        fifo_0_0_sqmuxa_Z, ALn => \AFLSDF_INV_3\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_0_Z[1]\);
    
    empty_Z : SLE
      port map(D => \detEmpty.un9_rdptr_Z\, CLK => clk2_c, EN => 
        \VCC\, ALn => \AFLSDF_INV_4\, ADn => \GND\, SLn => \VCC\, 
        SD => \GND\, LAT => \GND\, Q => empty_c);
    
    \full_obuf/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => full, D => \full_obuf/U0/DOUT\, E => 
        \full_obuf/U0/EOUT\);
    
    \data_out_obuf[6]/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \data_out_obuf[6]/U0/EOUT1\, Y => 
        \data_out_obuf[6]/U0/EOUT\);
    
    \rd_ibuf/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \rd_ibuf/U0/YIN\, E => \GND\, Y => rd_c);
    
    \full_obuf/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \full_obuf/U0/DOUT1\, Y => 
        \full_obuf/U0/DOUT\);
    
    \data_out_obuf[6]/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \data_out_obuf[6]/U0/DOUT1\, Y => 
        \data_out_obuf[6]/U0/DOUT\);
    
    \Write_count.wrptr_2\ : CFG2
      generic map(INIT => x"1")

      port map(A => wrptr_Z, B => wrptrclr_c, Y => 
        \Write_count.wrptr_2_Z\);
    
    \data_out_obuf[4]/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \data_out_obuf[4]/U0/EOUT1\, Y => 
        \data_out_obuf[4]/U0/EOUT\);
    
    \rd_ibuf/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => rd, Y => \rd_ibuf/U0/YIN1\);
    
    \data_out_obuf[7]/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \data_out_obuf[7]/U0/DOUT1\, Y => 
        \data_out_obuf[7]/U0/DOUT\);
    
    \data_in_ibuf[1]/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \data_in_ibuf[1]/U0/YIN\, E => \GND\, Y => 
        \data_in_c[1]\);
    
    \rst_ibuf/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \rst_ibuf/U0/YIN\, E => \GND\, Y => rst_c);
    
    \Read_cout.rdptr_3\ : CFG2
      generic map(INIT => x"1")

      port map(A => rdptr_Z, B => rdptrclr_c, Y => 
        \Read_cout.rdptr_3_Z\);
    
    \data_in_ibuf[6]/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \data_in_ibuf[6]/U0/YIN\, E => \GND\, Y => 
        \data_in_c[6]\);
    
    AFLSDF_INV_17 : INV_BA
      port map(A => rst_c, Y => \AFLSDF_INV_17\);
    
    \reg_array.fifo_0[0]\ : SLE
      port map(D => \data_in_c[0]\, CLK => clk1_c, EN => 
        fifo_0_0_sqmuxa_Z, ALn => \AFLSDF_INV_5\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_0_Z[0]\);
    
    rdptr : SLE
      port map(D => \Read_cout.rdptr_3_Z\, CLK => clk2_c, EN => 
        \Read_cout.un1_rdinc_Z\, ALn => \AFLSDF_INV_6\, ADn => 
        \VCC\, SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        rdptr_Z);
    
    \data_out_obuf[1]/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \data_out_obuf[1]/U0/EOUT1\, Y => 
        \data_out_obuf[1]/U0/EOUT\);
    
    rptrd2 : SLE
      port map(D => rptrd1_Z, CLK => clk1_c, EN => \AFLSDF_INV_7\, 
        ALn => \VCC\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => rptrd2_Z);
    
    \data_in_ibuf[5]/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \data_in_ibuf[5]/U0/YIN1\, Y => 
        \data_in_ibuf[5]/U0/YIN\);
    
    \data_out_obuf[4]/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \data_out_obuf[4]/U0/DOUT1\, Y => 
        \data_out_obuf[4]/U0/DOUT\);
    
    \reg_array.fifo_0[5]\ : SLE
      port map(D => \data_in_c[5]\, CLK => clk1_c, EN => 
        fifo_0_0_sqmuxa_Z, ALn => \AFLSDF_INV_8\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_0_Z[5]\);
    
    \dmuxout[4]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \reg_array.fifo_1_Z[4]\, B => 
        \reg_array.fifo_0_Z[4]\, C => rdptr_Z, Y => 
        \dmuxout_Z[4]\);
    
    fifo_1_0_sqmuxa : CFG2
      generic map(INIT => x"8")

      port map(A => wrptr_Z, B => wr_c, Y => fifo_1_0_sqmuxa_Z);
    
    \data_out_obuf[3]/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => \data_out_c[3]\, E => \VCC\, DOUT => 
        \data_out_obuf[3]/U0/DOUT1\, EOUT => 
        \data_out_obuf[3]/U0/EOUT1\);
    
    AFLSDF_INV_22 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_22\);
    
    \data_out_obuf[0]/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \data_out_obuf[0]/U0/DOUT1\, Y => 
        \data_out_obuf[0]/U0/DOUT\);
    
    \data_in_ibuf[7]/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => data_in(7), Y => \data_in_ibuf[7]/U0/YIN1\);
    
    \wrptrclr_ibuf/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => wrptrclr, Y => \wrptrclr_ibuf/U0/YIN1\);
    
    \data_in_ibuf[3]/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \data_in_ibuf[3]/U0/YIN1\, Y => 
        \data_in_ibuf[3]/U0/YIN\);
    
    \wrptrclr_ibuf/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \wrptrclr_ibuf/U0/YIN\, E => \GND\, Y => 
        wrptrclr_c);
    
    \wrinc_ibuf/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => wrinc, Y => \wrinc_ibuf/U0/YIN1\);
    
    AFLSDF_INV_12 : INV_BA
      port map(A => clk2_ibuf_Z, Y => \AFLSDF_INV_12\);
    
    \data_out_Z[2]\ : SLE
      port map(D => \dmuxout_Z[2]\, CLK => clk2_c, EN => rd_c, 
        ALn => \VCC\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => \data_out_c[2]\);
    
    AFLSDF_INV_26 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_26\);
    
    \Write_count.un1_wrinc\ : CFG2
      generic map(INIT => x"E")

      port map(A => wrinc_c, B => wrptrclr_c, Y => 
        \Write_count.un1_wrinc_Z\);
    
    \dmuxout[3]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \reg_array.fifo_1_Z[3]\, B => 
        \reg_array.fifo_0_Z[3]\, C => rdptr_Z, Y => 
        \dmuxout_Z[3]\);
    
    \reg_array.fifo_0[3]\ : SLE
      port map(D => \data_in_c[3]\, CLK => clk1_c, EN => 
        fifo_0_0_sqmuxa_Z, ALn => \AFLSDF_INV_9\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_0_Z[3]\);
    
    AFLSDF_INV_8 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_8\);
    
    \data_out_obuf[0]/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => data_out(0), D => 
        \data_out_obuf[0]/U0/DOUT\, E => 
        \data_out_obuf[0]/U0/EOUT\);
    
    \data_in_ibuf[2]/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \data_in_ibuf[2]/U0/YIN\, E => \GND\, Y => 
        \data_in_c[2]\);
    
    wrptr : SLE
      port map(D => \Write_count.wrptr_2_Z\, CLK => clk1_c, EN
         => \Write_count.un1_wrinc_Z\, ALn => \AFLSDF_INV_10\, 
        ADn => \VCC\, SLn => \VCC\, SD => \GND\, LAT => \GND\, Q
         => wrptr_Z);
    
    \reg_array.fifo_1[7]\ : SLE
      port map(D => \data_in_c[7]\, CLK => clk1_c, EN => 
        fifo_1_0_sqmuxa_Z, ALn => \AFLSDF_INV_11\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_1_Z[7]\);
    
    \wr_ibuf/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \wr_ibuf/U0/YIN1\, Y => \wr_ibuf/U0/YIN\);
    
    \data_in_ibuf[4]/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => data_in(4), Y => \data_in_ibuf[4]/U0/YIN1\);
    
    AFLSDF_INV_9 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_9\);
    
    AFLSDF_INV_16 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_16\);
    
    \data_out_obuf[5]/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => data_out(5), D => 
        \data_out_obuf[5]/U0/DOUT\, E => 
        \data_out_obuf[5]/U0/EOUT\);
    
    \data_out_obuf[2]/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => data_out(2), D => 
        \data_out_obuf[2]/U0/DOUT\, E => 
        \data_out_obuf[2]/U0/EOUT\);
    
    \rst_ibuf_RNIUUM5/U0_RGB1\ : RGB_NG
      port map(An => \rst_ibuf_RNIUUM5/U0_YNn\, ENn => \GND\, YL
         => rst_arst, YR => OPEN);
    
    AFLSDF_INV_21 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_21\);
    
    \data_in_ibuf[4]/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \data_in_ibuf[4]/U0/YIN\, E => \GND\, Y => 
        \data_in_c[4]\);
    
    clk2_ibuf_RNIHJC2 : GB_NG
      port map(An => \AFLSDF_INV_12\, ENn => \GND\, YNn => 
        \clk2_ibuf_RNIHJC2/U0_YNn\, YSn => OPEN);
    
    \clk1_ibuf/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \clk1_ibuf/U0/YIN\, E => \GND\, Y => OPEN);
    
    \clk1_ibuf_RNIGE28/U0_RGB1\ : RGB_NG
      port map(An => \clk1_ibuf_RNIGE28/U0_YNn\, ENn => \GND\, YL
         => clk1_c, YR => OPEN);
    
    \data_in_ibuf[2]/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => data_in(2), Y => \data_in_ibuf[2]/U0/YIN1\);
    
    \detFull.un7_wrptr\ : CFG2
      generic map(INIT => x"8")

      port map(A => wrptr_Z, B => rptrd2_Z, Y => 
        \detFull.un7_wrptr_Z\);
    
    \dmuxout[0]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \reg_array.fifo_1_Z[0]\, B => 
        \reg_array.fifo_0_Z[0]\, C => rdptr_Z, Y => 
        \dmuxout_Z[0]\);
    
    AFLSDF_INV_6 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_6\);
    
    \full_obuf/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \full_obuf/U0/EOUT1\, Y => 
        \full_obuf/U0/EOUT\);
    
    \empty_obuf/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \empty_obuf/U0/DOUT1\, Y => 
        \empty_obuf/U0/DOUT\);
    
    \data_out_obuf[0]/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \data_out_obuf[0]/U0/EOUT1\, Y => 
        \data_out_obuf[0]/U0/EOUT\);
    
    \dmuxout[1]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \reg_array.fifo_1_Z[1]\, B => 
        \reg_array.fifo_0_Z[1]\, C => rdptr_Z, Y => 
        \dmuxout_Z[1]\);
    
    ip_interface_inst : IP_INTERFACE
      port map(A => \VCC\, B => ff_to_start_net, C => \VCC\, IPA
         => OPEN, IPB => OPEN, IPC => OPEN);
    
    \data_out_Z[1]\ : SLE
      port map(D => \dmuxout_Z[1]\, CLK => clk2_c, EN => rd_c, 
        ALn => \VCC\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => \data_out_c[1]\);
    
    AFLSDF_INV_11 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_11\);
    
    \empty_obuf/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => empty_c, E => \VCC\, DOUT => 
        \empty_obuf/U0/DOUT1\, EOUT => \empty_obuf/U0/EOUT1\);
    
    \data_in_ibuf[2]/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \data_in_ibuf[2]/U0/YIN1\, Y => 
        \data_in_ibuf[2]/U0/YIN\);
    
    AFLSDF_INV_3 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_3\);
    
    \wr_ibuf/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => wr, Y => \wr_ibuf/U0/YIN1\);
    
    \reg_array.fifo_1[6]\ : SLE
      port map(D => \data_in_c[6]\, CLK => clk1_c, EN => 
        fifo_1_0_sqmuxa_Z, ALn => \AFLSDF_INV_13\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_1_Z[6]\);
    
    AFLSDF_INV_7 : INV_BA
      port map(A => rst_c, Y => \AFLSDF_INV_7\);
    
    full_Z : SLE
      port map(D => \detFull.un7_wrptr_Z\, CLK => clk1_c, EN => 
        \VCC\, ALn => \AFLSDF_INV_14\, ADn => \VCC\, SLn => \VCC\, 
        SD => \GND\, LAT => \GND\, Q => full_c);
    
    \rdptrclr_ibuf/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \rdptrclr_ibuf/U0/YIN\, E => \GND\, Y => 
        rdptrclr_c);
    
    \empty_obuf/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => empty, D => \empty_obuf/U0/DOUT\, E => 
        \empty_obuf/U0/EOUT\);
    
    \data_in_ibuf[3]/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \data_in_ibuf[3]/U0/YIN\, E => \GND\, Y => 
        \data_in_c[3]\);
    
    \data_out_Z[4]\ : SLE
      port map(D => \dmuxout_Z[4]\, CLK => clk2_c, EN => rd_c, 
        ALn => \VCC\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => \data_out_c[4]\);
    
    \detEmpty.un9_rdptr\ : CFG2
      generic map(INIT => x"1")

      port map(A => rdptr_Z, B => wrptrd2_Z, Y => 
        \detEmpty.un9_rdptr_Z\);
    
    AFLSDF_INV_23 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_23\);
    
    AFLSDF_INV_19 : INV_BA
      port map(A => clk1_ibuf_Z, Y => \AFLSDF_INV_19\);
    
    AFLSDF_INV_4 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_4\);
    
    \data_out_obuf[3]/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \data_out_obuf[3]/U0/EOUT1\, Y => 
        \data_out_obuf[3]/U0/EOUT\);
    
    AFLSDF_INV_25 : INV_BA
      port map(A => \rst_ibuf/U0/YIN1\, Y => \AFLSDF_INV_25\);
    
    \rdinc_ibuf/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => rdinc, Y => \rdinc_ibuf/U0/YIN1\);
    
    \reg_array.fifo_1[5]\ : SLE
      port map(D => \data_in_c[5]\, CLK => clk1_c, EN => 
        fifo_1_0_sqmuxa_Z, ALn => \AFLSDF_INV_15\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_1_Z[5]\);
    
    AFLSDF_INV_13 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_13\);
    
    \clk2_ibuf/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => clk2, Y => clk2_ibuf_Z);
    
    \data_out_Z[5]\ : SLE
      port map(D => \dmuxout_Z[5]\, CLK => clk2_c, EN => rd_c, 
        ALn => \VCC\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => \data_out_c[5]\);
    
    \data_in_ibuf[0]/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => data_in(0), Y => \data_in_ibuf[0]/U0/YIN1\);
    
    \reg_array.fifo_0[7]\ : SLE
      port map(D => \data_in_c[7]\, CLK => clk1_c, EN => 
        fifo_0_0_sqmuxa_Z, ALn => \AFLSDF_INV_16\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_0_Z[7]\);
    
    AFLSDF_INV_15 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_15\);
    
    AFLSDF_INV_2 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_2\);
    
    \data_in_ibuf[7]/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \data_in_ibuf[7]/U0/YIN1\, Y => 
        \data_in_ibuf[7]/U0/YIN\);
    
    \wrinc_ibuf/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \wrinc_ibuf/U0/YIN\, E => \GND\, Y => 
        wrinc_c);
    
    rptrd1 : SLE
      port map(D => rdptr_Z, CLK => clk1_c, EN => \AFLSDF_INV_17\, 
        ALn => \VCC\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => rptrd1_Z);
    
    \reg_array.fifo_1[2]\ : SLE
      port map(D => \data_in_c[2]\, CLK => clk1_c, EN => 
        fifo_1_0_sqmuxa_Z, ALn => \AFLSDF_INV_18\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_1_Z[2]\);
    
    \data_in_ibuf[6]/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => data_in(6), Y => \data_in_ibuf[6]/U0/YIN1\);
    
    \dmuxout[6]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \reg_array.fifo_1_Z[6]\, B => 
        \reg_array.fifo_0_Z[6]\, C => rdptr_Z, Y => 
        \dmuxout_Z[6]\);
    
    \data_out_obuf[5]/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \data_out_obuf[5]/U0/EOUT1\, Y => 
        \data_out_obuf[5]/U0/EOUT\);
    
    \data_out_obuf[3]/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \data_out_obuf[3]/U0/DOUT1\, Y => 
        \data_out_obuf[3]/U0/DOUT\);
    
    \data_in_ibuf[1]/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => data_in(1), Y => \data_in_ibuf[1]/U0/YIN1\);
    
    \wr_ibuf/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \wr_ibuf/U0/YIN\, E => \GND\, Y => wr_c);
    
    \Read_cout.un1_rdinc\ : CFG2
      generic map(INIT => x"E")

      port map(A => rdinc_c, B => rdptrclr_c, Y => 
        \Read_cout.un1_rdinc_Z\);
    
    \rdptrclr_ibuf/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \rdptrclr_ibuf/U0/YIN1\, Y => 
        \rdptrclr_ibuf/U0/YIN\);
    
    \data_out_obuf[5]/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => \data_out_c[5]\, E => \VCC\, DOUT => 
        \data_out_obuf[5]/U0/DOUT1\, EOUT => 
        \data_out_obuf[5]/U0/EOUT1\);
    
    clk1_ibuf_RNIGE28 : GB_NG
      port map(An => \AFLSDF_INV_19\, ENn => \GND\, YNn => 
        \clk1_ibuf_RNIGE28/U0_YNn\, YSn => OPEN);
    
    AFLSDF_INV_1 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_1\);
    
    \reg_array.fifo_1[4]\ : SLE
      port map(D => \data_in_c[4]\, CLK => clk1_c, EN => 
        fifo_1_0_sqmuxa_Z, ALn => \AFLSDF_INV_20\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_1_Z[4]\);
    
    AFLSDF_INV_24 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_24\);
    
    \dmuxout[5]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \reg_array.fifo_1_Z[5]\, B => 
        \reg_array.fifo_0_Z[5]\, C => rdptr_Z, Y => 
        \dmuxout_Z[5]\);
    
    \clk2_ibuf_RNIHJC2/U0_RGB1\ : RGB_NG
      port map(An => \clk2_ibuf_RNIHJC2/U0_YNn\, ENn => \GND\, YL
         => clk2_c, YR => OPEN);
    
    \data_in_ibuf[6]/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \data_in_ibuf[6]/U0/YIN1\, Y => 
        \data_in_ibuf[6]/U0/YIN\);
    
    \flash_freeze_inst/INST_FLASH_FREEZE_IP\ : FLASH_FREEZE
      port map(FF_TO_START => ff_to_start_net, FF_DONE => OPEN);
    
    wrptrd1 : SLE
      port map(D => wrptr_Z, CLK => clk2_c, EN => \VCC\, ALn => 
        \AFLSDF_INV_21\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => wrptrd1_Z);
    
    \reg_array.fifo_0[2]\ : SLE
      port map(D => \data_in_c[2]\, CLK => clk1_c, EN => 
        fifo_0_0_sqmuxa_Z, ALn => \AFLSDF_INV_22\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_0_Z[2]\);
    
    \rdinc_ibuf/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \rdinc_ibuf/U0/YIN1\, Y => 
        \rdinc_ibuf/U0/YIN\);
    
    \clk1_ibuf/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => clk1_ibuf_Z, Y => \clk1_ibuf/U0/YIN\);
    
    \dmuxout[2]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \reg_array.fifo_1_Z[2]\, B => 
        \reg_array.fifo_0_Z[2]\, C => rdptr_Z, Y => 
        \dmuxout_Z[2]\);
    
    \reg_array.fifo_0[6]\ : SLE
      port map(D => \data_in_c[6]\, CLK => clk1_c, EN => 
        fifo_0_0_sqmuxa_Z, ALn => \AFLSDF_INV_23\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_0_Z[6]\);
    
    \data_in_ibuf[1]/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \data_in_ibuf[1]/U0/YIN1\, Y => 
        \data_in_ibuf[1]/U0/YIN\);
    
    AFLSDF_INV_14 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_14\);
    
    \rdptrclr_ibuf/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => rdptrclr, Y => \rdptrclr_ibuf/U0/YIN1\);
    
    \data_in_ibuf[5]/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => data_in(5), Y => \data_in_ibuf[5]/U0/YIN1\);
    
    \data_in_ibuf[4]/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \data_in_ibuf[4]/U0/YIN1\, Y => 
        \data_in_ibuf[4]/U0/YIN\);
    
    \reg_array.fifo_1[0]\ : SLE
      port map(D => \data_in_c[0]\, CLK => clk1_c, EN => 
        fifo_1_0_sqmuxa_Z, ALn => \AFLSDF_INV_24\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_1_Z[0]\);
    
    \data_in_ibuf[5]/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \data_in_ibuf[5]/U0/YIN\, E => \GND\, Y => 
        \data_in_c[5]\);
    
    \clk1_ibuf/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => clk1, Y => clk1_ibuf_Z);
    
    \data_in_ibuf[3]/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => data_in(3), Y => \data_in_ibuf[3]/U0/YIN1\);
    
    AFLSDF_INV_18 : INV_BA
      port map(A => rst_arst, Y => \AFLSDF_INV_18\);
    
    \data_out_obuf[3]/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => data_out(3), D => 
        \data_out_obuf[3]/U0/DOUT\, E => 
        \data_out_obuf[3]/U0/EOUT\);
    
    \data_out_Z[7]\ : SLE
      port map(D => \dmuxout_Z[7]\, CLK => clk2_c, EN => rd_c, 
        ALn => \VCC\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => \data_out_c[7]\);
    
    \data_out_obuf[1]/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \data_out_obuf[1]/U0/DOUT1\, Y => 
        \data_out_obuf[1]/U0/DOUT\);
    
    rst_ibuf_RNIUUM5 : GB_NG
      port map(An => \AFLSDF_INV_25\, ENn => \GND\, YNn => 
        \rst_ibuf_RNIUUM5/U0_YNn\, YSn => OPEN);
    
    \data_out_obuf[7]/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \data_out_obuf[7]/U0/EOUT1\, Y => 
        \data_out_obuf[7]/U0/EOUT\);
    
    \dmuxout[7]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \reg_array.fifo_1_Z[7]\, B => 
        \reg_array.fifo_0_Z[7]\, C => rdptr_Z, Y => 
        \dmuxout_Z[7]\);
    
    \reg_array.fifo_1[1]\ : SLE
      port map(D => \data_in_c[1]\, CLK => clk1_c, EN => 
        fifo_1_0_sqmuxa_Z, ALn => \AFLSDF_INV_26\, ADn => \VCC\, 
        SLn => \VCC\, SD => \GND\, LAT => \GND\, Q => 
        \reg_array.fifo_1_Z[1]\);
    
    \data_out_Z[0]\ : SLE
      port map(D => \dmuxout_Z[0]\, CLK => clk2_c, EN => rd_c, 
        ALn => \VCC\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => \data_out_c[0]\);
    
    \empty_obuf/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \empty_obuf/U0/EOUT1\, Y => 
        \empty_obuf/U0/EOUT\);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
