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

entity SlowFast is

    port( Aclk  : in    std_logic;
          Bclk  : in    std_logic;
          reset : in    std_logic;
          Dout  : out   std_logic_vector(3 downto 0)
        );

end SlowFast;

architecture DEF_ARCH of SlowFast is 

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

  component INV_BA
    port( A : in    std_logic := 'U';
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

  component sdf_IOPAD_TRI
    port( PAD : out   std_logic;
          D   : in    std_logic := 'U';
          E   : in    std_logic := 'U'
        );
  end component;

  component IOTRI_OB_EB
    port( D    : in    std_logic := 'U';
          E    : in    std_logic := 'U';
          DOUT : out   std_logic;
          EOUT : out   std_logic
        );
  end component;

  component GB_NG
    port( An  : in    std_logic := 'U';
          ENn : in    std_logic := 'U';
          YNn : out   std_logic;
          YSn : out   std_logic
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

  component FLASH_FREEZE
    port( FF_TO_START : out   std_logic;
          FF_DONE     : out   std_logic
        );
  end component;

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

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

  component IP_INTERFACE
    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          IPA : out   std_logic;
          IPB : out   std_logic;
          IPC : out   std_logic
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal \shiftRegister_Z[3]\, \shiftRegister_Z[2]\, 
        \shiftRegister_Z[1]\, \shiftRegister_Z[0]\, 
        \syncOut_Z[3]\, \syncOut_Z[2]\, \syncOut_Z[1]\, 
        \syncOut_Z[0]\, \Dout_c[3]\, \Dout_c[2]\, \Dout_c[1]\, 
        \Dout_c[0]\, data_Z, syncSignal_Z, \GND\, \VCC\, 
        \Aclk_ibuf_RNI08V3/U0_YNn\, \Bclk_ibuf_RNI1GRC/U0_YNn\, 
        \reset_ibuf_RNI8255/U0_YNn\, data_i, Bclk_ibuf_Z, 
        ff_to_start_net, \Bclk_ibuf/U0/YIN1\, \Bclk_ibuf/U0/YIN\, 
        \Dout_obuf[0]/U0/DOUT1\, \Dout_obuf[0]/U0/DOUT\, 
        \Dout_obuf[0]/U0/EOUT1\, \Dout_obuf[0]/U0/EOUT\, 
        reset_ibuf_Z, \reset_ibuf/U0/YIN\, 
        \Dout_obuf[3]/U0/DOUT1\, \Dout_obuf[3]/U0/DOUT\, 
        \Dout_obuf[3]/U0/EOUT1\, \Dout_obuf[3]/U0/EOUT\, 
        \Dout_obuf[2]/U0/DOUT1\, \Dout_obuf[2]/U0/DOUT\, 
        \Dout_obuf[2]/U0/EOUT1\, \Dout_obuf[2]/U0/EOUT\, 
        \Dout_obuf[1]/U0/DOUT1\, \Dout_obuf[1]/U0/DOUT\, 
        \Dout_obuf[1]/U0/EOUT1\, \Dout_obuf[1]/U0/EOUT\, 
        Aclk_ibuf_Z, \Aclk_ibuf/U0/YIN\, Aclk_c, Bclk_c, reset_c, 
        AFLSDF_VCC, AFLSDF_GND, \AFLSDF_INV_0\, \AFLSDF_INV_1\, 
        \AFLSDF_INV_2\, \AFLSDF_INV_3\, \AFLSDF_INV_4\, 
        \AFLSDF_INV_5\, \AFLSDF_INV_6\, \AFLSDF_INV_7\, 
        \AFLSDF_INV_8\, \AFLSDF_INV_9\, \AFLSDF_INV_10\, 
        \AFLSDF_INV_11\, \AFLSDF_INV_12\, \AFLSDF_INV_13\, 
        \AFLSDF_INV_14\, \AFLSDF_INV_15\, \AFLSDF_INV_16\
         : std_logic;
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

    syncSignal : SLE
      port map(D => Bclk_ibuf_Z, CLK => Aclk_c, EN => \VCC\, ALn
         => \AFLSDF_INV_0\, ADn => \VCC\, SLn => \VCC\, SD => 
        \GND\, LAT => \GND\, Q => syncSignal_Z);
    
    \reset_ibuf/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => reset_ibuf_Z, Y => \reset_ibuf/U0/YIN\);
    
    \Dout_obuf[2]/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \Dout_obuf[2]/U0/DOUT1\, Y => 
        \Dout_obuf[2]/U0/DOUT\);
    
    AFLSDF_INV_2 : INV_BA
      port map(A => Aclk_ibuf_Z, Y => \AFLSDF_INV_2\);
    
    \Aclk_ibuf_RNI08V3/U0_RGB1\ : RGB_NG
      port map(An => \Aclk_ibuf_RNI08V3/U0_YNn\, ENn => \GND\, YL
         => Aclk_c, YR => OPEN);
    
    AFLSDF_INV_7 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_7\);
    
    AFLSDF_INV_6 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_6\);
    
    AFLSDF_INV_15 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_15\);
    
    \Dout_obuf[3]/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => Dout(3), D => \Dout_obuf[3]/U0/DOUT\, E => 
        \Dout_obuf[3]/U0/EOUT\);
    
    \Bclk_ibuf/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => \Bclk_ibuf/U0/YIN1\, Y => \Bclk_ibuf/U0/YIN\);
    
    \Dout_obuf[1]/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => \Dout_c[1]\, E => \VCC\, DOUT => 
        \Dout_obuf[1]/U0/DOUT1\, EOUT => \Dout_obuf[1]/U0/EOUT1\);
    
    \syncOut[1]\ : SLE
      port map(D => \shiftRegister_Z[1]\, CLK => Aclk_c, EN => 
        syncSignal_Z, ALn => \AFLSDF_INV_1\, ADn => \VCC\, SLn
         => \VCC\, SD => \GND\, LAT => \GND\, Q => \syncOut_Z[1]\);
    
    \Dout_obuf[2]/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => \Dout_c[2]\, E => \VCC\, DOUT => 
        \Dout_obuf[2]/U0/DOUT1\, EOUT => \Dout_obuf[2]/U0/EOUT1\);
    
    Aclk_ibuf_RNI08V3 : GB_NG
      port map(An => \AFLSDF_INV_2\, ENn => \GND\, YNn => 
        \Aclk_ibuf_RNI08V3/U0_YNn\, YSn => OPEN);
    
    AFLSDF_INV_13 : INV_BA
      port map(A => reset_ibuf_Z, Y => \AFLSDF_INV_13\);
    
    Bclk_ibuf_RNI1GRC : GB_NG
      port map(An => \AFLSDF_INV_3\, ENn => \GND\, YNn => 
        \Bclk_ibuf_RNI1GRC/U0_YNn\, YSn => OPEN);
    
    \Dout_Z[0]\ : SLE
      port map(D => \syncOut_Z[0]\, CLK => Bclk_c, EN => \VCC\, 
        ALn => \AFLSDF_INV_4\, ADn => \VCC\, SLn => \VCC\, SD => 
        \GND\, LAT => \GND\, Q => \Dout_c[0]\);
    
    \syncOut[2]\ : SLE
      port map(D => \shiftRegister_Z[2]\, CLK => Aclk_c, EN => 
        syncSignal_Z, ALn => \AFLSDF_INV_5\, ADn => \VCC\, SLn
         => \VCC\, SD => \GND\, LAT => \GND\, Q => \syncOut_Z[2]\);
    
    \Bclk_ibuf/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => Bclk, Y => \Bclk_ibuf/U0/YIN1\);
    
    \syncOut[0]\ : SLE
      port map(D => \shiftRegister_Z[0]\, CLK => Aclk_c, EN => 
        syncSignal_Z, ALn => \AFLSDF_INV_6\, ADn => \VCC\, SLn
         => \VCC\, SD => \GND\, LAT => \GND\, Q => \syncOut_Z[0]\);
    
    AFLSDF_INV_16 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_16\);
    
    \shiftRegister[2]\ : SLE
      port map(D => \shiftRegister_Z[1]\, CLK => Aclk_c, EN => 
        \VCC\, ALn => \AFLSDF_INV_7\, ADn => \VCC\, SLn => \VCC\, 
        SD => \GND\, LAT => \GND\, Q => \shiftRegister_Z[2]\);
    
    \Dout_obuf[1]/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \Dout_obuf[1]/U0/EOUT1\, Y => 
        \Dout_obuf[1]/U0/EOUT\);
    
    \flash_freeze_inst/INST_FLASH_FREEZE_IP\ : FLASH_FREEZE
      port map(FF_TO_START => ff_to_start_net, FF_DONE => OPEN);
    
    \Dout_obuf[0]/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => Dout(0), D => \Dout_obuf[0]/U0/DOUT\, E => 
        \Dout_obuf[0]/U0/EOUT\);
    
    \Dout_obuf[0]/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \Dout_obuf[0]/U0/EOUT1\, Y => 
        \Dout_obuf[0]/U0/EOUT\);
    
    data : SLE
      port map(D => data_i, CLK => Aclk_c, EN => \VCC\, ALn => 
        \AFLSDF_INV_8\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => data_Z);
    
    AFLSDF_INV_12 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_12\);
    
    \Aclk_ibuf/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => Aclk, Y => Aclk_ibuf_Z);
    
    AFLSDF_INV_5 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_5\);
    
    \syncOut[3]\ : SLE
      port map(D => \shiftRegister_Z[3]\, CLK => Aclk_c, EN => 
        syncSignal_Z, ALn => \AFLSDF_INV_9\, ADn => \VCC\, SLn
         => \VCC\, SD => \GND\, LAT => \GND\, Q => \syncOut_Z[3]\);
    
    \Dout_obuf[1]/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \Dout_obuf[1]/U0/DOUT1\, Y => 
        \Dout_obuf[1]/U0/DOUT\);
    
    \Dout_Z[2]\ : SLE
      port map(D => \syncOut_Z[2]\, CLK => Bclk_c, EN => \VCC\, 
        ALn => \AFLSDF_INV_10\, ADn => \VCC\, SLn => \VCC\, SD
         => \GND\, LAT => \GND\, Q => \Dout_c[2]\);
    
    AFLSDF_INV_3 : INV_BA
      port map(A => \Bclk_ibuf/U0/YIN1\, Y => \AFLSDF_INV_3\);
    
    AFLSDF_INV_11 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_11\);
    
    AFLSDF_INV_0 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_0\);
    
    \reset_ibuf/U0/U_IOPAD\ : sdf_IOPAD_IN
      port map(PAD => reset, Y => reset_ibuf_Z);
    
    AFLSDF_INV_10 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_10\);
    
    \Dout_obuf[1]/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => Dout(1), D => \Dout_obuf[1]/U0/DOUT\, E => 
        \Dout_obuf[1]/U0/EOUT\);
    
    \Dout_Z[1]\ : SLE
      port map(D => \syncOut_Z[1]\, CLK => Bclk_c, EN => \VCC\, 
        ALn => \AFLSDF_INV_11\, ADn => \VCC\, SLn => \VCC\, SD
         => \GND\, LAT => \GND\, Q => \Dout_c[1]\);
    
    data_RNO : CFG1
      generic map(INIT => "01")

      port map(A => data_Z, Y => data_i);
    
    AFLSDF_INV_1 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_1\);
    
    \Aclk_ibuf/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \Aclk_ibuf/U0/YIN\, E => \GND\, Y => OPEN);
    
    \Dout_obuf[3]/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \Dout_obuf[3]/U0/DOUT1\, Y => 
        \Dout_obuf[3]/U0/DOUT\);
    
    \shiftRegister[3]\ : SLE
      port map(D => \shiftRegister_Z[2]\, CLK => Aclk_c, EN => 
        \VCC\, ALn => \AFLSDF_INV_12\, ADn => \VCC\, SLn => \VCC\, 
        SD => \GND\, LAT => \GND\, Q => \shiftRegister_Z[3]\);
    
    reset_ibuf_RNI8255 : GB_NG
      port map(An => \AFLSDF_INV_13\, ENn => \GND\, YNn => 
        \reset_ibuf_RNI8255/U0_YNn\, YSn => OPEN);
    
    \Dout_obuf[2]/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \Dout_obuf[2]/U0/EOUT1\, Y => 
        \Dout_obuf[2]/U0/EOUT\);
    
    \Dout_obuf[0]/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => \Dout_c[0]\, E => \VCC\, DOUT => 
        \Dout_obuf[0]/U0/DOUT1\, EOUT => \Dout_obuf[0]/U0/EOUT1\);
    
    \reset_ibuf_RNI8255/U0_RGB1\ : RGB_NG
      port map(An => \reset_ibuf_RNI8255/U0_YNn\, ENn => \GND\, 
        YL => reset_c, YR => OPEN);
    
    \shiftRegister[0]\ : SLE
      port map(D => data_Z, CLK => Aclk_c, EN => \VCC\, ALn => 
        \AFLSDF_INV_14\, ADn => \VCC\, SLn => \VCC\, SD => \GND\, 
        LAT => \GND\, Q => \shiftRegister_Z[0]\);
    
    \Dout_obuf[3]/U0/U_IOENFF\ : IOENFF_BYPASS
      port map(A => \Dout_obuf[3]/U0/EOUT1\, Y => 
        \Dout_obuf[3]/U0/EOUT\);
    
    AFLSDF_INV_9 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_9\);
    
    ip_interface_inst : IP_INTERFACE
      port map(A => \VCC\, B => ff_to_start_net, C => \VCC\, IPA
         => OPEN, IPB => OPEN, IPC => OPEN);
    
    \Dout_obuf[0]/U0/U_IOOUTFF\ : IOOUTFF_BYPASS
      port map(A => \Dout_obuf[0]/U0/DOUT1\, Y => 
        \Dout_obuf[0]/U0/DOUT\);
    
    \Dout_obuf[3]/U0/U_IOTRI\ : IOTRI_OB_EB
      port map(D => \Dout_c[3]\, E => \VCC\, DOUT => 
        \Dout_obuf[3]/U0/DOUT1\, EOUT => \Dout_obuf[3]/U0/EOUT1\);
    
    \reset_ibuf/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \reset_ibuf/U0/YIN\, E => \GND\, Y => OPEN);
    
    \Dout_Z[3]\ : SLE
      port map(D => \syncOut_Z[3]\, CLK => Bclk_c, EN => \VCC\, 
        ALn => \AFLSDF_INV_15\, ADn => \VCC\, SLn => \VCC\, SD
         => \GND\, LAT => \GND\, Q => \Dout_c[3]\);
    
    AFLSDF_INV_14 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_14\);
    
    \shiftRegister[1]\ : SLE
      port map(D => \shiftRegister_Z[0]\, CLK => Aclk_c, EN => 
        \VCC\, ALn => \AFLSDF_INV_16\, ADn => \VCC\, SLn => \VCC\, 
        SD => \GND\, LAT => \GND\, Q => \shiftRegister_Z[1]\);
    
    \Aclk_ibuf/U0/U_IOINFF\ : IOINFF_BYPASS
      port map(A => Aclk_ibuf_Z, Y => \Aclk_ibuf/U0/YIN\);
    
    \Dout_obuf[2]/U0/U_IOPAD\ : sdf_IOPAD_TRI
      port map(PAD => Dout(2), D => \Dout_obuf[2]/U0/DOUT\, E => 
        \Dout_obuf[2]/U0/EOUT\);
    
    AFLSDF_INV_4 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_4\);
    
    \Bclk_ibuf/U0/U_IOIN\ : IOIN_IB
      port map(YIN => \Bclk_ibuf/U0/YIN\, E => \GND\, Y => 
        Bclk_ibuf_Z);
    
    AFLSDF_INV_8 : INV_BA
      port map(A => reset_c, Y => \AFLSDF_INV_8\);
    
    \Bclk_ibuf_RNI1GRC/U0_RGB1\ : RGB_NG
      port map(An => \Bclk_ibuf_RNI1GRC/U0_YNn\, ENn => \GND\, YL
         => Bclk_c, YR => OPEN);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
