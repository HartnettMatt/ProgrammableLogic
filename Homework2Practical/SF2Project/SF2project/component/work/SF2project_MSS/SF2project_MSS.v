//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Oct 12 13:46:52 2023
// Version: v12.6 12.900.20.24
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// SF2project_MSS
module SF2project_MSS(
    // Inputs
    MAC_MII_COL,
    MAC_MII_CRS,
    MAC_MII_RXD,
    MAC_MII_RX_CLK,
    MAC_MII_RX_DV,
    MAC_MII_RX_ER,
    MAC_MII_TX_CLK,
    MCCC_CLK_BASE,
    MDDR_DQS_TMATCH_0_IN,
    MMUART_0_RXD,
    MMUART_1_RXD,
    SPI_0_DI,
    SPI_1_DI,
    USB_ULPI_DIR,
    USB_ULPI_NXT,
    USB_ULPI_XCLK,
    // Outputs
    MAC_MII_TXD,
    MAC_MII_TX_EN,
    MAC_MII_TX_ER,
    MDDR_ADDR,
    MDDR_BA,
    MDDR_CAS_N,
    MDDR_CKE,
    MDDR_CLK,
    MDDR_CLK_N,
    MDDR_CS_N,
    MDDR_DQS_TMATCH_0_OUT,
    MDDR_ODT,
    MDDR_RAS_N,
    MDDR_RESET_N,
    MDDR_WE_N,
    MMUART_0_TXD,
    MMUART_1_TXD,
    SPI_0_DO,
    SPI_1_DO,
    USB_ULPI_STP,
    // Inouts
    I2C_0_SCL,
    I2C_0_SDA,
    I2C_1_SCL,
    I2C_1_SDA,
    MDDR_DM_RDQS,
    MDDR_DQ,
    MDDR_DQS,
    MDDR_DQS_N,
    SPI_0_CLK,
    SPI_0_SS0,
    SPI_1_CLK,
    SPI_1_SS0,
    USB_ULPI_DATA
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         MAC_MII_COL;
input         MAC_MII_CRS;
input  [3:0]  MAC_MII_RXD;
input         MAC_MII_RX_CLK;
input         MAC_MII_RX_DV;
input         MAC_MII_RX_ER;
input         MAC_MII_TX_CLK;
input         MCCC_CLK_BASE;
input         MDDR_DQS_TMATCH_0_IN;
input         MMUART_0_RXD;
input         MMUART_1_RXD;
input         SPI_0_DI;
input         SPI_1_DI;
input         USB_ULPI_DIR;
input         USB_ULPI_NXT;
input         USB_ULPI_XCLK;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [3:0]  MAC_MII_TXD;
output        MAC_MII_TX_EN;
output        MAC_MII_TX_ER;
output [15:0] MDDR_ADDR;
output [2:0]  MDDR_BA;
output        MDDR_CAS_N;
output        MDDR_CKE;
output        MDDR_CLK;
output        MDDR_CLK_N;
output        MDDR_CS_N;
output        MDDR_DQS_TMATCH_0_OUT;
output        MDDR_ODT;
output        MDDR_RAS_N;
output        MDDR_RESET_N;
output        MDDR_WE_N;
output        MMUART_0_TXD;
output        MMUART_1_TXD;
output        SPI_0_DO;
output        SPI_1_DO;
output        USB_ULPI_STP;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout         I2C_0_SCL;
inout         I2C_0_SDA;
inout         I2C_1_SCL;
inout         I2C_1_SDA;
inout  [1:0]  MDDR_DM_RDQS;
inout  [15:0] MDDR_DQ;
inout  [1:0]  MDDR_DQS;
inout  [1:0]  MDDR_DQS_N;
inout         SPI_0_CLK;
inout         SPI_0_SS0;
inout         SPI_1_CLK;
inout         SPI_1_SS0;
inout  [7:0]  USB_ULPI_DATA;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire           I2C_0_SCL;
wire           I2C_0_SCL_PAD_Y;
wire           I2C_0_SDA;
wire           I2C_0_SDA_PAD_Y;
wire           I2C_1_SCL;
wire           I2C_1_SCL_PAD_Y;
wire           I2C_1_SDA;
wire           I2C_1_SDA_PAD_Y;
wire           MAC_MII_COL;
wire           MAC_MII_CRS;
wire           MAC_MII_RX_CLK;
wire           MAC_MII_RX_DV;
wire           MAC_MII_RX_ER;
wire   [3:3]   MAC_MII_RXD_slice_0;
wire   [2:2]   MAC_MII_RXD_slice_1;
wire   [1:1]   MAC_MII_RXD_slice_2;
wire   [0:0]   MAC_MII_RXD_slice_3;
wire           MAC_MII_TX_CLK;
wire           MAC_MII_TX_EN_net_0;
wire           MAC_MII_TX_ER_net_0;
wire   [3:3]   MAC_MII_TXD_net_0;
wire   [2:2]   MAC_MII_TXD_0;
wire   [1:1]   MAC_MII_TXD_1;
wire   [0:0]   MAC_MII_TXD_2;
wire           MCCC_CLK_BASE;
wire           MDDR_ADDR_net_0;
wire           MDDR_ADDR_0;
wire           MDDR_ADDR_1;
wire           MDDR_ADDR_2;
wire           MDDR_ADDR_3;
wire           MDDR_ADDR_4;
wire           MDDR_ADDR_5;
wire           MDDR_ADDR_6;
wire           MDDR_ADDR_7;
wire           MDDR_ADDR_8;
wire           MDDR_ADDR_9;
wire           MDDR_ADDR_10;
wire           MDDR_ADDR_11;
wire           MDDR_ADDR_12;
wire           MDDR_ADDR_13;
wire           MDDR_ADDR_14;
wire           MDDR_BA_net_0;
wire           MDDR_BA_0;
wire           MDDR_BA_1;
wire           MDDR_CAS_N_net_0;
wire           MDDR_CKE_net_0;
wire           MDDR_CLK_net_0;
wire           MDDR_CLK_N_net_0;
wire           MDDR_CS_N_net_0;
wire           MDDR_DM_RDQS_0_PAD_Y;
wire           MDDR_DM_RDQS_1_PAD_Y;
wire           MDDR_DQ_0_PAD_Y;
wire           MDDR_DQ_1_PAD_Y;
wire           MDDR_DQ_2_PAD_Y;
wire           MDDR_DQ_3_PAD_Y;
wire           MDDR_DQ_4_PAD_Y;
wire           MDDR_DQ_5_PAD_Y;
wire           MDDR_DQ_6_PAD_Y;
wire           MDDR_DQ_7_PAD_Y;
wire           MDDR_DQ_8_PAD_Y;
wire           MDDR_DQ_9_PAD_Y;
wire           MDDR_DQ_10_PAD_Y;
wire           MDDR_DQ_11_PAD_Y;
wire           MDDR_DQ_12_PAD_Y;
wire           MDDR_DQ_13_PAD_Y;
wire           MDDR_DQ_14_PAD_Y;
wire           MDDR_DQ_15_PAD_Y;
wire           MDDR_DQS_0_PAD_Y;
wire           MDDR_DQS_1_PAD_Y;
wire           MDDR_DQS_TMATCH_0_IN;
wire           MDDR_DQS_TMATCH_0_IN_PAD_Y;
wire           MDDR_DQS_TMATCH_0_OUT_net_0;
wire           MDDR_ODT_net_0;
wire           MDDR_RAS_N_net_0;
wire           MDDR_RESET_N_net_0;
wire           MDDR_WE_N_net_0;
wire           MMUART_0_RXD;
wire           MMUART_0_RXD_PAD_Y;
wire           MMUART_0_TXD_net_0;
wire           MMUART_1_RXD;
wire           MMUART_1_RXD_PAD_Y;
wire           MMUART_1_TXD_net_0;
wire   [0:0]   MSS_ADLIB_INST_DM_OE0to0;
wire   [1:1]   MSS_ADLIB_INST_DM_OE1to1;
wire   [0:0]   MSS_ADLIB_INST_DRAM_ADDR0to0;
wire   [1:1]   MSS_ADLIB_INST_DRAM_ADDR1to1;
wire   [2:2]   MSS_ADLIB_INST_DRAM_ADDR2to2;
wire   [3:3]   MSS_ADLIB_INST_DRAM_ADDR3to3;
wire   [4:4]   MSS_ADLIB_INST_DRAM_ADDR4to4;
wire   [5:5]   MSS_ADLIB_INST_DRAM_ADDR5to5;
wire   [6:6]   MSS_ADLIB_INST_DRAM_ADDR6to6;
wire   [7:7]   MSS_ADLIB_INST_DRAM_ADDR7to7;
wire   [8:8]   MSS_ADLIB_INST_DRAM_ADDR8to8;
wire   [9:9]   MSS_ADLIB_INST_DRAM_ADDR9to9;
wire   [10:10] MSS_ADLIB_INST_DRAM_ADDR10to10;
wire   [11:11] MSS_ADLIB_INST_DRAM_ADDR11to11;
wire   [12:12] MSS_ADLIB_INST_DRAM_ADDR12to12;
wire   [13:13] MSS_ADLIB_INST_DRAM_ADDR13to13;
wire   [14:14] MSS_ADLIB_INST_DRAM_ADDR14to14;
wire   [15:15] MSS_ADLIB_INST_DRAM_ADDR15to15;
wire   [0:0]   MSS_ADLIB_INST_DRAM_BA0to0;
wire   [1:1]   MSS_ADLIB_INST_DRAM_BA1to1;
wire   [2:2]   MSS_ADLIB_INST_DRAM_BA2to2;
wire           MSS_ADLIB_INST_DRAM_CASN;
wire           MSS_ADLIB_INST_DRAM_CKE;
wire           MSS_ADLIB_INST_DRAM_CLK;
wire           MSS_ADLIB_INST_DRAM_CSN;
wire   [0:0]   MSS_ADLIB_INST_DRAM_DM_RDQS_OUT0to0;
wire   [1:1]   MSS_ADLIB_INST_DRAM_DM_RDQS_OUT1to1;
wire   [0:0]   MSS_ADLIB_INST_DRAM_DQ_OE0to0;
wire   [1:1]   MSS_ADLIB_INST_DRAM_DQ_OE1to1;
wire   [2:2]   MSS_ADLIB_INST_DRAM_DQ_OE2to2;
wire   [3:3]   MSS_ADLIB_INST_DRAM_DQ_OE3to3;
wire   [4:4]   MSS_ADLIB_INST_DRAM_DQ_OE4to4;
wire   [5:5]   MSS_ADLIB_INST_DRAM_DQ_OE5to5;
wire   [6:6]   MSS_ADLIB_INST_DRAM_DQ_OE6to6;
wire   [7:7]   MSS_ADLIB_INST_DRAM_DQ_OE7to7;
wire   [8:8]   MSS_ADLIB_INST_DRAM_DQ_OE8to8;
wire   [9:9]   MSS_ADLIB_INST_DRAM_DQ_OE9to9;
wire   [10:10] MSS_ADLIB_INST_DRAM_DQ_OE10to10;
wire   [11:11] MSS_ADLIB_INST_DRAM_DQ_OE11to11;
wire   [12:12] MSS_ADLIB_INST_DRAM_DQ_OE12to12;
wire   [13:13] MSS_ADLIB_INST_DRAM_DQ_OE13to13;
wire   [14:14] MSS_ADLIB_INST_DRAM_DQ_OE14to14;
wire   [15:15] MSS_ADLIB_INST_DRAM_DQ_OE15to15;
wire   [0:0]   MSS_ADLIB_INST_DRAM_DQ_OUT0to0;
wire   [1:1]   MSS_ADLIB_INST_DRAM_DQ_OUT1to1;
wire   [2:2]   MSS_ADLIB_INST_DRAM_DQ_OUT2to2;
wire   [3:3]   MSS_ADLIB_INST_DRAM_DQ_OUT3to3;
wire   [4:4]   MSS_ADLIB_INST_DRAM_DQ_OUT4to4;
wire   [5:5]   MSS_ADLIB_INST_DRAM_DQ_OUT5to5;
wire   [6:6]   MSS_ADLIB_INST_DRAM_DQ_OUT6to6;
wire   [7:7]   MSS_ADLIB_INST_DRAM_DQ_OUT7to7;
wire   [8:8]   MSS_ADLIB_INST_DRAM_DQ_OUT8to8;
wire   [9:9]   MSS_ADLIB_INST_DRAM_DQ_OUT9to9;
wire   [10:10] MSS_ADLIB_INST_DRAM_DQ_OUT10to10;
wire   [11:11] MSS_ADLIB_INST_DRAM_DQ_OUT11to11;
wire   [12:12] MSS_ADLIB_INST_DRAM_DQ_OUT12to12;
wire   [13:13] MSS_ADLIB_INST_DRAM_DQ_OUT13to13;
wire   [14:14] MSS_ADLIB_INST_DRAM_DQ_OUT14to14;
wire   [15:15] MSS_ADLIB_INST_DRAM_DQ_OUT15to15;
wire   [0:0]   MSS_ADLIB_INST_DRAM_DQS_OE0to0;
wire   [1:1]   MSS_ADLIB_INST_DRAM_DQS_OE1to1;
wire   [0:0]   MSS_ADLIB_INST_DRAM_DQS_OUT0to0;
wire   [1:1]   MSS_ADLIB_INST_DRAM_DQS_OUT1to1;
wire   [0:0]   MSS_ADLIB_INST_DRAM_FIFO_WE_OUT0to0;
wire           MSS_ADLIB_INST_DRAM_ODT;
wire           MSS_ADLIB_INST_DRAM_RASN;
wire           MSS_ADLIB_INST_DRAM_RSTN;
wire           MSS_ADLIB_INST_DRAM_WEN;
wire           MSS_ADLIB_INST_I2C0_SCL_USBC_DATA1_MGPIO31B_OE;
wire           MSS_ADLIB_INST_I2C0_SCL_USBC_DATA1_MGPIO31B_OUT;
wire           MSS_ADLIB_INST_I2C0_SDA_USBC_DATA0_MGPIO30B_OE;
wire           MSS_ADLIB_INST_I2C0_SDA_USBC_DATA0_MGPIO30B_OUT;
wire           MSS_ADLIB_INST_I2C1_SCL_USBA_DATA4_MGPIO1A_OE;
wire           MSS_ADLIB_INST_I2C1_SCL_USBA_DATA4_MGPIO1A_OUT;
wire           MSS_ADLIB_INST_I2C1_SDA_USBA_DATA3_MGPIO0A_OE;
wire           MSS_ADLIB_INST_I2C1_SDA_USBA_DATA3_MGPIO0A_OUT;
wire           MSS_ADLIB_INST_MMUART0_TXD_USBC_DIR_MGPIO27B_OE;
wire           MSS_ADLIB_INST_MMUART0_TXD_USBC_DIR_MGPIO27B_OUT;
wire           MSS_ADLIB_INST_MMUART1_TXD_USBC_DATA2_MGPIO24B_OE;
wire           MSS_ADLIB_INST_MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT;
wire           MSS_ADLIB_INST_RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE;
wire           MSS_ADLIB_INST_RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT;
wire           MSS_ADLIB_INST_RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OE;
wire           MSS_ADLIB_INST_RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OUT;
wire           MSS_ADLIB_INST_RGMII_RXD0_RMII_RXD0_USBB_DATA0_OE;
wire           MSS_ADLIB_INST_RGMII_RXD0_RMII_RXD0_USBB_DATA0_OUT;
wire           MSS_ADLIB_INST_RGMII_RXD1_RMII_RXD1_USBB_DATA1_OE;
wire           MSS_ADLIB_INST_RGMII_RXD1_RMII_RXD1_USBB_DATA1_OUT;
wire           MSS_ADLIB_INST_RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OE;
wire           MSS_ADLIB_INST_RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OUT;
wire           MSS_ADLIB_INST_RGMII_RXD3_USBB_DATA4_OE;
wire           MSS_ADLIB_INST_RGMII_RXD3_USBB_DATA4_OUT;
wire           MSS_ADLIB_INST_RGMII_TXD1_RMII_TXD1_USBB_STP_OE;
wire           MSS_ADLIB_INST_RGMII_TXD1_RMII_TXD1_USBB_STP_OUT;
wire           MSS_ADLIB_INST_RGMII_TXD2_USBB_DATA5_OE;
wire           MSS_ADLIB_INST_RGMII_TXD2_USBB_DATA5_OUT;
wire           MSS_ADLIB_INST_RGMII_TXD3_USBB_DATA6_OE;
wire           MSS_ADLIB_INST_RGMII_TXD3_USBB_DATA6_OUT;
wire           MSS_ADLIB_INST_SPI0_SCK_USBA_XCLK_OE;
wire           MSS_ADLIB_INST_SPI0_SCK_USBA_XCLK_OUT;
wire           MSS_ADLIB_INST_SPI0_SDO_USBA_STP_MGPIO6A_OE;
wire           MSS_ADLIB_INST_SPI0_SDO_USBA_STP_MGPIO6A_OUT;
wire           MSS_ADLIB_INST_SPI0_SS0_USBA_NXT_MGPIO7A_OE;
wire           MSS_ADLIB_INST_SPI0_SS0_USBA_NXT_MGPIO7A_OUT;
wire           MSS_ADLIB_INST_SPI1_SCK_OE;
wire           MSS_ADLIB_INST_SPI1_SCK_OUT;
wire           MSS_ADLIB_INST_SPI1_SDO_MGPIO12A_OE;
wire           MSS_ADLIB_INST_SPI1_SDO_MGPIO12A_OUT;
wire           MSS_ADLIB_INST_SPI1_SS0_MGPIO13A_OE;
wire           MSS_ADLIB_INST_SPI1_SS0_MGPIO13A_OUT;
wire           SPI_0_CLK;
wire           SPI_0_CLK_PAD_Y;
wire           SPI_0_DI;
wire           SPI_0_DI_PAD_Y;
wire           SPI_0_DO_net_0;
wire           SPI_0_SS0;
wire           SPI_0_SS0_PAD_Y;
wire           SPI_1_CLK;
wire           SPI_1_CLK_PAD_Y;
wire           SPI_1_DI;
wire           SPI_1_DI_PAD_Y;
wire           SPI_1_DO_net_0;
wire           SPI_1_SS0;
wire           SPI_1_SS0_PAD_Y;
wire           USB_ULPI_DATA_0_PAD_Y;
wire           USB_ULPI_DATA_1_PAD_Y;
wire           USB_ULPI_DATA_2_PAD_Y;
wire           USB_ULPI_DATA_3_PAD_Y;
wire           USB_ULPI_DATA_4_PAD_Y;
wire           USB_ULPI_DATA_5_PAD_Y;
wire           USB_ULPI_DATA_6_PAD_Y;
wire           USB_ULPI_DATA_7_PAD_Y;
wire           USB_ULPI_DIR;
wire           USB_ULPI_DIR_PAD_Y;
wire           USB_ULPI_NXT;
wire           USB_ULPI_NXT_PAD_Y;
wire           USB_ULPI_STP_net_0;
wire           USB_ULPI_XCLK;
wire           USB_ULPI_XCLK_PAD_Y;
wire           SPI_0_DO_net_1;
wire           SPI_1_DO_net_1;
wire           MMUART_1_TXD_net_1;
wire           MMUART_0_TXD_net_1;
wire           MAC_MII_TX_EN_net_1;
wire           MAC_MII_TX_ER_net_1;
wire           USB_ULPI_STP_net_1;
wire           MDDR_DQS_TMATCH_0_OUT_net_1;
wire           MDDR_CAS_N_net_1;
wire           MDDR_CLK_net_1;
wire           MDDR_CLK_N_net_1;
wire           MDDR_CKE_net_1;
wire           MDDR_CS_N_net_1;
wire           MDDR_ODT_net_1;
wire           MDDR_RAS_N_net_1;
wire           MDDR_RESET_N_net_1;
wire           MDDR_WE_N_net_1;
wire   [0:0]   MAC_MII_TXD_2_net_0;
wire   [1:1]   MAC_MII_TXD_1_net_0;
wire   [2:2]   MAC_MII_TXD_0_net_0;
wire   [3:3]   MAC_MII_TXD_net_1;
wire   [0:0]   MDDR_ADDR_14_net_0;
wire   [10:10] MDDR_ADDR_4_net_0;
wire   [11:11] MDDR_ADDR_3_net_0;
wire   [12:12] MDDR_ADDR_2_net_0;
wire   [13:13] MDDR_ADDR_1_net_0;
wire   [14:14] MDDR_ADDR_0_net_0;
wire   [15:15] MDDR_ADDR_net_1;
wire   [1:1]   MDDR_ADDR_13_net_0;
wire   [2:2]   MDDR_ADDR_12_net_0;
wire   [3:3]   MDDR_ADDR_11_net_0;
wire   [4:4]   MDDR_ADDR_10_net_0;
wire   [5:5]   MDDR_ADDR_9_net_0;
wire   [6:6]   MDDR_ADDR_8_net_0;
wire   [7:7]   MDDR_ADDR_7_net_0;
wire   [8:8]   MDDR_ADDR_6_net_0;
wire   [9:9]   MDDR_ADDR_5_net_0;
wire   [0:0]   MDDR_BA_1_net_0;
wire   [1:1]   MDDR_BA_0_net_0;
wire   [2:2]   MDDR_BA_net_1;
wire   [4:4]   TXDF_slice_0;
wire   [5:5]   TXDF_slice_1;
wire   [6:6]   TXDF_slice_2;
wire   [7:7]   TXDF_slice_3;
wire   [2:2]   DRAM_DM_RDQS_OUT_slice_0;
wire   [16:16] DRAM_DQ_OUT_slice_0;
wire   [17:17] DRAM_DQ_OUT_slice_1;
wire   [2:2]   DRAM_DQS_OUT_slice_0;
wire   [1:1]   DRAM_FIFO_WE_OUT_slice_0;
wire   [2:2]   DM_OE_slice_0;
wire   [16:16] DRAM_DQ_OE_slice_0;
wire   [17:17] DRAM_DQ_OE_slice_1;
wire   [2:2]   DRAM_DQS_OE_slice_0;
wire   [7:0]   RXDF_net_0;
wire   [3:0]   MAC_MII_RXD;
wire   [7:0]   TXDF_net_0;
wire   [2:0]   DM_IN_net_0;
wire   [17:0]  DRAM_DQ_IN_net_0;
wire   [2:0]   DRAM_DQS_IN_net_0;
wire   [1:0]   DRAM_FIFO_WE_IN_net_0;
wire   [15:0]  DRAM_ADDR_net_0;
wire   [2:0]   DRAM_BA_net_0;
wire   [2:0]   DRAM_DM_RDQS_OUT_net_0;
wire   [17:0]  DRAM_DQ_OUT_net_0;
wire   [2:0]   DRAM_DQS_OUT_net_0;
wire   [1:0]   DRAM_FIFO_WE_OUT_net_0;
wire   [2:0]   DM_OE_net_0;
wire   [17:0]  DRAM_DQ_OE_net_0;
wire   [2:0]   DRAM_DQS_OE_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire           GND_net;
wire           VCC_net;
wire   [1:0]   F2_DMAREADY_const_net_0;
wire   [15:0]  F2H_INTERRUPT_const_net_0;
wire   [1:0]   F_DMAREADY_const_net_0;
wire   [31:0]  F_FM0_ADDR_const_net_0;
wire   [1:0]   F_FM0_SIZE_const_net_0;
wire   [31:0]  F_FM0_WDATA_const_net_0;
wire   [31:0]  F_HM0_RDATA_const_net_0;
wire   [1:0]   FAB_LINESTATE_const_net_0;
wire   [7:0]   FAB_VSTATUS_const_net_0;
wire   [7:0]   FAB_XDATAIN_const_net_0;
wire   [31:0]  PER2_FABRIC_PRDATA_const_net_0;
wire   [9:0]   RCGF_const_net_0;
wire   [31:0]  F_ARADDR_HADDR1_const_net_0;
wire   [1:0]   F_ARBURST_HTRANS1_const_net_0;
wire   [3:0]   F_ARID_HSEL1_const_net_0;
wire   [3:0]   F_ARLEN_HBURST1_const_net_0;
wire   [1:0]   F_ARLOCK_HMASTLOCK1_const_net_0;
wire   [1:0]   F_ARSIZE_HSIZE1_const_net_0;
wire   [31:0]  F_AWADDR_HADDR0_const_net_0;
wire   [1:0]   F_AWBURST_HTRANS0_const_net_0;
wire   [3:0]   F_AWID_HSEL0_const_net_0;
wire   [3:0]   F_AWLEN_HBURST0_const_net_0;
wire   [1:0]   F_AWLOCK_HMASTLOCK0_const_net_0;
wire   [1:0]   F_AWSIZE_HSIZE0_const_net_0;
wire   [63:0]  F_WDATA_HWDATA01_const_net_0;
wire   [3:0]   F_WID_HREADY01_const_net_0;
wire   [7:0]   F_WSTRB_const_net_0;
wire   [10:2]  MDDR_FABRIC_PADDR_const_net_0;
wire   [15:0]  MDDR_FABRIC_PWDATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                         = 1'b0;
assign VCC_net                         = 1'b1;
assign F2_DMAREADY_const_net_0         = 2'h3;
assign F2H_INTERRUPT_const_net_0       = 16'h0000;
assign F_DMAREADY_const_net_0          = 2'h3;
assign F_FM0_ADDR_const_net_0          = 32'h00000000;
assign F_FM0_SIZE_const_net_0          = 2'h0;
assign F_FM0_WDATA_const_net_0         = 32'h00000000;
assign F_HM0_RDATA_const_net_0         = 32'h00000000;
assign FAB_LINESTATE_const_net_0       = 2'h3;
assign FAB_VSTATUS_const_net_0         = 8'hFF;
assign FAB_XDATAIN_const_net_0         = 8'hFF;
assign PER2_FABRIC_PRDATA_const_net_0  = 32'hFFFFFFFF;
assign RCGF_const_net_0                = 10'h3FF;
assign F_ARADDR_HADDR1_const_net_0     = 32'hFFFFFFFF;
assign F_ARBURST_HTRANS1_const_net_0   = 2'h0;
assign F_ARID_HSEL1_const_net_0        = 4'h0;
assign F_ARLEN_HBURST1_const_net_0     = 4'h0;
assign F_ARLOCK_HMASTLOCK1_const_net_0 = 2'h0;
assign F_ARSIZE_HSIZE1_const_net_0     = 2'h0;
assign F_AWADDR_HADDR0_const_net_0     = 32'hFFFFFFFF;
assign F_AWBURST_HTRANS0_const_net_0   = 2'h0;
assign F_AWID_HSEL0_const_net_0        = 4'h0;
assign F_AWLEN_HBURST0_const_net_0     = 4'h0;
assign F_AWLOCK_HMASTLOCK0_const_net_0 = 2'h0;
assign F_AWSIZE_HSIZE0_const_net_0     = 2'h0;
assign F_WDATA_HWDATA01_const_net_0    = 64'hFFFFFFFFFFFFFFFF;
assign F_WID_HREADY01_const_net_0      = 4'h0;
assign F_WSTRB_const_net_0             = 8'h00;
assign MDDR_FABRIC_PADDR_const_net_0   = 9'h1FF;
assign MDDR_FABRIC_PWDATA_const_net_0  = 16'hFFFF;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign SPI_0_DO_net_1              = SPI_0_DO_net_0;
assign SPI_0_DO                    = SPI_0_DO_net_1;
assign SPI_1_DO_net_1              = SPI_1_DO_net_0;
assign SPI_1_DO                    = SPI_1_DO_net_1;
assign MMUART_1_TXD_net_1          = MMUART_1_TXD_net_0;
assign MMUART_1_TXD                = MMUART_1_TXD_net_1;
assign MMUART_0_TXD_net_1          = MMUART_0_TXD_net_0;
assign MMUART_0_TXD                = MMUART_0_TXD_net_1;
assign MAC_MII_TX_EN_net_1         = MAC_MII_TX_EN_net_0;
assign MAC_MII_TX_EN               = MAC_MII_TX_EN_net_1;
assign MAC_MII_TX_ER_net_1         = MAC_MII_TX_ER_net_0;
assign MAC_MII_TX_ER               = MAC_MII_TX_ER_net_1;
assign USB_ULPI_STP_net_1          = USB_ULPI_STP_net_0;
assign USB_ULPI_STP                = USB_ULPI_STP_net_1;
assign MDDR_DQS_TMATCH_0_OUT_net_1 = MDDR_DQS_TMATCH_0_OUT_net_0;
assign MDDR_DQS_TMATCH_0_OUT       = MDDR_DQS_TMATCH_0_OUT_net_1;
assign MDDR_CAS_N_net_1            = MDDR_CAS_N_net_0;
assign MDDR_CAS_N                  = MDDR_CAS_N_net_1;
assign MDDR_CLK_net_1              = MDDR_CLK_net_0;
assign MDDR_CLK                    = MDDR_CLK_net_1;
assign MDDR_CLK_N_net_1            = MDDR_CLK_N_net_0;
assign MDDR_CLK_N                  = MDDR_CLK_N_net_1;
assign MDDR_CKE_net_1              = MDDR_CKE_net_0;
assign MDDR_CKE                    = MDDR_CKE_net_1;
assign MDDR_CS_N_net_1             = MDDR_CS_N_net_0;
assign MDDR_CS_N                   = MDDR_CS_N_net_1;
assign MDDR_ODT_net_1              = MDDR_ODT_net_0;
assign MDDR_ODT                    = MDDR_ODT_net_1;
assign MDDR_RAS_N_net_1            = MDDR_RAS_N_net_0;
assign MDDR_RAS_N                  = MDDR_RAS_N_net_1;
assign MDDR_RESET_N_net_1          = MDDR_RESET_N_net_0;
assign MDDR_RESET_N                = MDDR_RESET_N_net_1;
assign MDDR_WE_N_net_1             = MDDR_WE_N_net_0;
assign MDDR_WE_N                   = MDDR_WE_N_net_1;
assign MAC_MII_TXD_2_net_0[0]      = MAC_MII_TXD_2[0];
assign MAC_MII_TXD[0:0]            = MAC_MII_TXD_2_net_0[0];
assign MAC_MII_TXD_1_net_0[1]      = MAC_MII_TXD_1[1];
assign MAC_MII_TXD[1:1]            = MAC_MII_TXD_1_net_0[1];
assign MAC_MII_TXD_0_net_0[2]      = MAC_MII_TXD_0[2];
assign MAC_MII_TXD[2:2]            = MAC_MII_TXD_0_net_0[2];
assign MAC_MII_TXD_net_1[3]        = MAC_MII_TXD_net_0[3];
assign MAC_MII_TXD[3:3]            = MAC_MII_TXD_net_1[3];
assign MDDR_ADDR_14_net_0[0]       = MDDR_ADDR_14;
assign MDDR_ADDR[0:0]              = MDDR_ADDR_14_net_0[0];
assign MDDR_ADDR_4_net_0[10]       = MDDR_ADDR_4;
assign MDDR_ADDR[10:10]            = MDDR_ADDR_4_net_0[10];
assign MDDR_ADDR_3_net_0[11]       = MDDR_ADDR_3;
assign MDDR_ADDR[11:11]            = MDDR_ADDR_3_net_0[11];
assign MDDR_ADDR_2_net_0[12]       = MDDR_ADDR_2;
assign MDDR_ADDR[12:12]            = MDDR_ADDR_2_net_0[12];
assign MDDR_ADDR_1_net_0[13]       = MDDR_ADDR_1;
assign MDDR_ADDR[13:13]            = MDDR_ADDR_1_net_0[13];
assign MDDR_ADDR_0_net_0[14]       = MDDR_ADDR_0;
assign MDDR_ADDR[14:14]            = MDDR_ADDR_0_net_0[14];
assign MDDR_ADDR_net_1[15]         = MDDR_ADDR_net_0;
assign MDDR_ADDR[15:15]            = MDDR_ADDR_net_1[15];
assign MDDR_ADDR_13_net_0[1]       = MDDR_ADDR_13;
assign MDDR_ADDR[1:1]              = MDDR_ADDR_13_net_0[1];
assign MDDR_ADDR_12_net_0[2]       = MDDR_ADDR_12;
assign MDDR_ADDR[2:2]              = MDDR_ADDR_12_net_0[2];
assign MDDR_ADDR_11_net_0[3]       = MDDR_ADDR_11;
assign MDDR_ADDR[3:3]              = MDDR_ADDR_11_net_0[3];
assign MDDR_ADDR_10_net_0[4]       = MDDR_ADDR_10;
assign MDDR_ADDR[4:4]              = MDDR_ADDR_10_net_0[4];
assign MDDR_ADDR_9_net_0[5]        = MDDR_ADDR_9;
assign MDDR_ADDR[5:5]              = MDDR_ADDR_9_net_0[5];
assign MDDR_ADDR_8_net_0[6]        = MDDR_ADDR_8;
assign MDDR_ADDR[6:6]              = MDDR_ADDR_8_net_0[6];
assign MDDR_ADDR_7_net_0[7]        = MDDR_ADDR_7;
assign MDDR_ADDR[7:7]              = MDDR_ADDR_7_net_0[7];
assign MDDR_ADDR_6_net_0[8]        = MDDR_ADDR_6;
assign MDDR_ADDR[8:8]              = MDDR_ADDR_6_net_0[8];
assign MDDR_ADDR_5_net_0[9]        = MDDR_ADDR_5;
assign MDDR_ADDR[9:9]              = MDDR_ADDR_5_net_0[9];
assign MDDR_BA_1_net_0[0]          = MDDR_BA_1;
assign MDDR_BA[0:0]                = MDDR_BA_1_net_0[0];
assign MDDR_BA_0_net_0[1]          = MDDR_BA_0;
assign MDDR_BA[1:1]                = MDDR_BA_0_net_0[1];
assign MDDR_BA_net_1[2]            = MDDR_BA_net_0;
assign MDDR_BA[2:2]                = MDDR_BA_net_1[2];
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign MAC_MII_RXD_slice_0[3]                 = MAC_MII_RXD[3:3];
assign MAC_MII_RXD_slice_1[2]                 = MAC_MII_RXD[2:2];
assign MAC_MII_RXD_slice_2[1]                 = MAC_MII_RXD[1:1];
assign MAC_MII_RXD_slice_3[0]                 = MAC_MII_RXD[0:0];
assign MAC_MII_TXD_net_0[3]                   = TXDF_net_0[3:3];
assign MAC_MII_TXD_0[2]                       = TXDF_net_0[2:2];
assign MAC_MII_TXD_1[1]                       = TXDF_net_0[1:1];
assign MAC_MII_TXD_2[0]                       = TXDF_net_0[0:0];
assign MSS_ADLIB_INST_DM_OE0to0[0]            = DM_OE_net_0[0:0];
assign MSS_ADLIB_INST_DM_OE1to1[1]            = DM_OE_net_0[1:1];
assign MSS_ADLIB_INST_DRAM_ADDR0to0[0]        = DRAM_ADDR_net_0[0:0];
assign MSS_ADLIB_INST_DRAM_ADDR1to1[1]        = DRAM_ADDR_net_0[1:1];
assign MSS_ADLIB_INST_DRAM_ADDR2to2[2]        = DRAM_ADDR_net_0[2:2];
assign MSS_ADLIB_INST_DRAM_ADDR3to3[3]        = DRAM_ADDR_net_0[3:3];
assign MSS_ADLIB_INST_DRAM_ADDR4to4[4]        = DRAM_ADDR_net_0[4:4];
assign MSS_ADLIB_INST_DRAM_ADDR5to5[5]        = DRAM_ADDR_net_0[5:5];
assign MSS_ADLIB_INST_DRAM_ADDR6to6[6]        = DRAM_ADDR_net_0[6:6];
assign MSS_ADLIB_INST_DRAM_ADDR7to7[7]        = DRAM_ADDR_net_0[7:7];
assign MSS_ADLIB_INST_DRAM_ADDR8to8[8]        = DRAM_ADDR_net_0[8:8];
assign MSS_ADLIB_INST_DRAM_ADDR9to9[9]        = DRAM_ADDR_net_0[9:9];
assign MSS_ADLIB_INST_DRAM_ADDR10to10[10]     = DRAM_ADDR_net_0[10:10];
assign MSS_ADLIB_INST_DRAM_ADDR11to11[11]     = DRAM_ADDR_net_0[11:11];
assign MSS_ADLIB_INST_DRAM_ADDR12to12[12]     = DRAM_ADDR_net_0[12:12];
assign MSS_ADLIB_INST_DRAM_ADDR13to13[13]     = DRAM_ADDR_net_0[13:13];
assign MSS_ADLIB_INST_DRAM_ADDR14to14[14]     = DRAM_ADDR_net_0[14:14];
assign MSS_ADLIB_INST_DRAM_ADDR15to15[15]     = DRAM_ADDR_net_0[15:15];
assign MSS_ADLIB_INST_DRAM_BA0to0[0]          = DRAM_BA_net_0[0:0];
assign MSS_ADLIB_INST_DRAM_BA1to1[1]          = DRAM_BA_net_0[1:1];
assign MSS_ADLIB_INST_DRAM_BA2to2[2]          = DRAM_BA_net_0[2:2];
assign MSS_ADLIB_INST_DRAM_DM_RDQS_OUT0to0[0] = DRAM_DM_RDQS_OUT_net_0[0:0];
assign MSS_ADLIB_INST_DRAM_DM_RDQS_OUT1to1[1] = DRAM_DM_RDQS_OUT_net_0[1:1];
assign MSS_ADLIB_INST_DRAM_DQ_OE0to0[0]       = DRAM_DQ_OE_net_0[0:0];
assign MSS_ADLIB_INST_DRAM_DQ_OE1to1[1]       = DRAM_DQ_OE_net_0[1:1];
assign MSS_ADLIB_INST_DRAM_DQ_OE2to2[2]       = DRAM_DQ_OE_net_0[2:2];
assign MSS_ADLIB_INST_DRAM_DQ_OE3to3[3]       = DRAM_DQ_OE_net_0[3:3];
assign MSS_ADLIB_INST_DRAM_DQ_OE4to4[4]       = DRAM_DQ_OE_net_0[4:4];
assign MSS_ADLIB_INST_DRAM_DQ_OE5to5[5]       = DRAM_DQ_OE_net_0[5:5];
assign MSS_ADLIB_INST_DRAM_DQ_OE6to6[6]       = DRAM_DQ_OE_net_0[6:6];
assign MSS_ADLIB_INST_DRAM_DQ_OE7to7[7]       = DRAM_DQ_OE_net_0[7:7];
assign MSS_ADLIB_INST_DRAM_DQ_OE8to8[8]       = DRAM_DQ_OE_net_0[8:8];
assign MSS_ADLIB_INST_DRAM_DQ_OE9to9[9]       = DRAM_DQ_OE_net_0[9:9];
assign MSS_ADLIB_INST_DRAM_DQ_OE10to10[10]    = DRAM_DQ_OE_net_0[10:10];
assign MSS_ADLIB_INST_DRAM_DQ_OE11to11[11]    = DRAM_DQ_OE_net_0[11:11];
assign MSS_ADLIB_INST_DRAM_DQ_OE12to12[12]    = DRAM_DQ_OE_net_0[12:12];
assign MSS_ADLIB_INST_DRAM_DQ_OE13to13[13]    = DRAM_DQ_OE_net_0[13:13];
assign MSS_ADLIB_INST_DRAM_DQ_OE14to14[14]    = DRAM_DQ_OE_net_0[14:14];
assign MSS_ADLIB_INST_DRAM_DQ_OE15to15[15]    = DRAM_DQ_OE_net_0[15:15];
assign MSS_ADLIB_INST_DRAM_DQ_OUT0to0[0]      = DRAM_DQ_OUT_net_0[0:0];
assign MSS_ADLIB_INST_DRAM_DQ_OUT1to1[1]      = DRAM_DQ_OUT_net_0[1:1];
assign MSS_ADLIB_INST_DRAM_DQ_OUT2to2[2]      = DRAM_DQ_OUT_net_0[2:2];
assign MSS_ADLIB_INST_DRAM_DQ_OUT3to3[3]      = DRAM_DQ_OUT_net_0[3:3];
assign MSS_ADLIB_INST_DRAM_DQ_OUT4to4[4]      = DRAM_DQ_OUT_net_0[4:4];
assign MSS_ADLIB_INST_DRAM_DQ_OUT5to5[5]      = DRAM_DQ_OUT_net_0[5:5];
assign MSS_ADLIB_INST_DRAM_DQ_OUT6to6[6]      = DRAM_DQ_OUT_net_0[6:6];
assign MSS_ADLIB_INST_DRAM_DQ_OUT7to7[7]      = DRAM_DQ_OUT_net_0[7:7];
assign MSS_ADLIB_INST_DRAM_DQ_OUT8to8[8]      = DRAM_DQ_OUT_net_0[8:8];
assign MSS_ADLIB_INST_DRAM_DQ_OUT9to9[9]      = DRAM_DQ_OUT_net_0[9:9];
assign MSS_ADLIB_INST_DRAM_DQ_OUT10to10[10]   = DRAM_DQ_OUT_net_0[10:10];
assign MSS_ADLIB_INST_DRAM_DQ_OUT11to11[11]   = DRAM_DQ_OUT_net_0[11:11];
assign MSS_ADLIB_INST_DRAM_DQ_OUT12to12[12]   = DRAM_DQ_OUT_net_0[12:12];
assign MSS_ADLIB_INST_DRAM_DQ_OUT13to13[13]   = DRAM_DQ_OUT_net_0[13:13];
assign MSS_ADLIB_INST_DRAM_DQ_OUT14to14[14]   = DRAM_DQ_OUT_net_0[14:14];
assign MSS_ADLIB_INST_DRAM_DQ_OUT15to15[15]   = DRAM_DQ_OUT_net_0[15:15];
assign MSS_ADLIB_INST_DRAM_DQS_OE0to0[0]      = DRAM_DQS_OE_net_0[0:0];
assign MSS_ADLIB_INST_DRAM_DQS_OE1to1[1]      = DRAM_DQS_OE_net_0[1:1];
assign MSS_ADLIB_INST_DRAM_DQS_OUT0to0[0]     = DRAM_DQS_OUT_net_0[0:0];
assign MSS_ADLIB_INST_DRAM_DQS_OUT1to1[1]     = DRAM_DQS_OUT_net_0[1:1];
assign MSS_ADLIB_INST_DRAM_FIFO_WE_OUT0to0[0] = DRAM_FIFO_WE_OUT_net_0[0:0];
assign TXDF_slice_0[4]                        = TXDF_net_0[4:4];
assign TXDF_slice_1[5]                        = TXDF_net_0[5:5];
assign TXDF_slice_2[6]                        = TXDF_net_0[6:6];
assign TXDF_slice_3[7]                        = TXDF_net_0[7:7];
assign DRAM_DM_RDQS_OUT_slice_0[2]            = DRAM_DM_RDQS_OUT_net_0[2:2];
assign DRAM_DQ_OUT_slice_0[16]                = DRAM_DQ_OUT_net_0[16:16];
assign DRAM_DQ_OUT_slice_1[17]                = DRAM_DQ_OUT_net_0[17:17];
assign DRAM_DQS_OUT_slice_0[2]                = DRAM_DQS_OUT_net_0[2:2];
assign DRAM_FIFO_WE_OUT_slice_0[1]            = DRAM_FIFO_WE_OUT_net_0[1:1];
assign DM_OE_slice_0[2]                       = DM_OE_net_0[2:2];
assign DRAM_DQ_OE_slice_0[16]                 = DRAM_DQ_OE_net_0[16:16];
assign DRAM_DQ_OE_slice_1[17]                 = DRAM_DQ_OE_net_0[17:17];
assign DRAM_DQS_OE_slice_0[2]                 = DRAM_DQS_OE_net_0[2:2];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign RXDF_net_0            = { 1'b1 , 1'b1 , 1'b1 , 1'b1 , MAC_MII_RXD_slice_0[3] , MAC_MII_RXD_slice_1[2] , MAC_MII_RXD_slice_2[1] , MAC_MII_RXD_slice_3[0] };
assign DM_IN_net_0           = { 1'b0 , MDDR_DM_RDQS_1_PAD_Y , MDDR_DM_RDQS_0_PAD_Y };
assign DRAM_DQ_IN_net_0      = { 1'b0 , 1'b0 , MDDR_DQ_15_PAD_Y , MDDR_DQ_14_PAD_Y , MDDR_DQ_13_PAD_Y , MDDR_DQ_12_PAD_Y , MDDR_DQ_11_PAD_Y , MDDR_DQ_10_PAD_Y , MDDR_DQ_9_PAD_Y , MDDR_DQ_8_PAD_Y , MDDR_DQ_7_PAD_Y , MDDR_DQ_6_PAD_Y , MDDR_DQ_5_PAD_Y , MDDR_DQ_4_PAD_Y , MDDR_DQ_3_PAD_Y , MDDR_DQ_2_PAD_Y , MDDR_DQ_1_PAD_Y , MDDR_DQ_0_PAD_Y };
assign DRAM_DQS_IN_net_0     = { 1'b0 , MDDR_DQS_1_PAD_Y , MDDR_DQS_0_PAD_Y };
assign DRAM_FIFO_WE_IN_net_0 = { 1'b0 , MDDR_DQS_TMATCH_0_IN_PAD_Y };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------BIBUF
BIBUF I2C_0_SCL_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_I2C0_SCL_USBC_DATA1_MGPIO31B_OUT ),
        .E   ( MSS_ADLIB_INST_I2C0_SCL_USBC_DATA1_MGPIO31B_OE ),
        // Outputs
        .Y   ( I2C_0_SCL_PAD_Y ),
        // Inouts
        .PAD ( I2C_0_SCL ) 
        );

//--------BIBUF
BIBUF I2C_0_SDA_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_I2C0_SDA_USBC_DATA0_MGPIO30B_OUT ),
        .E   ( MSS_ADLIB_INST_I2C0_SDA_USBC_DATA0_MGPIO30B_OE ),
        // Outputs
        .Y   ( I2C_0_SDA_PAD_Y ),
        // Inouts
        .PAD ( I2C_0_SDA ) 
        );

//--------BIBUF
BIBUF I2C_1_SCL_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_I2C1_SCL_USBA_DATA4_MGPIO1A_OUT ),
        .E   ( MSS_ADLIB_INST_I2C1_SCL_USBA_DATA4_MGPIO1A_OE ),
        // Outputs
        .Y   ( I2C_1_SCL_PAD_Y ),
        // Inouts
        .PAD ( I2C_1_SCL ) 
        );

//--------BIBUF
BIBUF I2C_1_SDA_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_I2C1_SDA_USBA_DATA3_MGPIO0A_OUT ),
        .E   ( MSS_ADLIB_INST_I2C1_SDA_USBA_DATA3_MGPIO0A_OE ),
        // Outputs
        .Y   ( I2C_1_SDA_PAD_Y ),
        // Inouts
        .PAD ( I2C_1_SDA ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_0_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR0to0 ),
        // Outputs
        .PAD ( MDDR_ADDR_14 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_1_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR1to1 ),
        // Outputs
        .PAD ( MDDR_ADDR_13 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_2_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR2to2 ),
        // Outputs
        .PAD ( MDDR_ADDR_12 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_3_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR3to3 ),
        // Outputs
        .PAD ( MDDR_ADDR_11 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_4_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR4to4 ),
        // Outputs
        .PAD ( MDDR_ADDR_10 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_5_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR5to5 ),
        // Outputs
        .PAD ( MDDR_ADDR_9 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_6_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR6to6 ),
        // Outputs
        .PAD ( MDDR_ADDR_8 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_7_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR7to7 ),
        // Outputs
        .PAD ( MDDR_ADDR_7 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_8_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR8to8 ),
        // Outputs
        .PAD ( MDDR_ADDR_6 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_9_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR9to9 ),
        // Outputs
        .PAD ( MDDR_ADDR_5 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_10_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR10to10 ),
        // Outputs
        .PAD ( MDDR_ADDR_4 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_11_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR11to11 ),
        // Outputs
        .PAD ( MDDR_ADDR_3 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_12_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR12to12 ),
        // Outputs
        .PAD ( MDDR_ADDR_2 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_13_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR13to13 ),
        // Outputs
        .PAD ( MDDR_ADDR_1 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_14_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR14to14 ),
        // Outputs
        .PAD ( MDDR_ADDR_0 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ADDR_15_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ADDR15to15 ),
        // Outputs
        .PAD ( MDDR_ADDR_net_0 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_BA_0_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_BA0to0 ),
        // Outputs
        .PAD ( MDDR_BA_1 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_BA_1_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_BA1to1 ),
        // Outputs
        .PAD ( MDDR_BA_0 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_BA_2_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_BA2to2 ),
        // Outputs
        .PAD ( MDDR_BA_net_0 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_CAS_N_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_CASN ),
        // Outputs
        .PAD ( MDDR_CAS_N_net_0 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_CKE_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_CKE ),
        // Outputs
        .PAD ( MDDR_CKE_net_0 ) 
        );

//--------OUTBUF_DIFF
OUTBUF_DIFF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_CLK_PAD(
        // Inputs
        .D    ( MSS_ADLIB_INST_DRAM_CLK ),
        // Outputs
        .PADP ( MDDR_CLK_net_0 ),
        .PADN ( MDDR_CLK_N_net_0 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_CS_N_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_CSN ),
        // Outputs
        .PAD ( MDDR_CS_N_net_0 ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DM_RDQS_0_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DM_RDQS_OUT0to0 ),
        .E   ( MSS_ADLIB_INST_DM_OE0to0 ),
        // Outputs
        .Y   ( MDDR_DM_RDQS_0_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DM_RDQS[0:0] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DM_RDQS_1_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DM_RDQS_OUT1to1 ),
        .E   ( MSS_ADLIB_INST_DM_OE1to1 ),
        // Outputs
        .Y   ( MDDR_DM_RDQS_1_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DM_RDQS[1:1] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_0_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT0to0 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE0to0 ),
        // Outputs
        .Y   ( MDDR_DQ_0_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[0:0] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_1_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT1to1 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE1to1 ),
        // Outputs
        .Y   ( MDDR_DQ_1_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[1:1] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_2_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT2to2 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE2to2 ),
        // Outputs
        .Y   ( MDDR_DQ_2_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[2:2] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_3_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT3to3 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE3to3 ),
        // Outputs
        .Y   ( MDDR_DQ_3_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[3:3] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_4_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT4to4 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE4to4 ),
        // Outputs
        .Y   ( MDDR_DQ_4_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[4:4] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_5_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT5to5 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE5to5 ),
        // Outputs
        .Y   ( MDDR_DQ_5_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[5:5] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_6_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT6to6 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE6to6 ),
        // Outputs
        .Y   ( MDDR_DQ_6_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[6:6] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_7_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT7to7 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE7to7 ),
        // Outputs
        .Y   ( MDDR_DQ_7_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[7:7] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_8_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT8to8 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE8to8 ),
        // Outputs
        .Y   ( MDDR_DQ_8_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[8:8] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_9_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT9to9 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE9to9 ),
        // Outputs
        .Y   ( MDDR_DQ_9_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[9:9] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_10_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT10to10 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE10to10 ),
        // Outputs
        .Y   ( MDDR_DQ_10_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[10:10] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_11_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT11to11 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE11to11 ),
        // Outputs
        .Y   ( MDDR_DQ_11_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[11:11] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_12_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT12to12 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE12to12 ),
        // Outputs
        .Y   ( MDDR_DQ_12_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[12:12] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_13_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT13to13 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE13to13 ),
        // Outputs
        .Y   ( MDDR_DQ_13_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[13:13] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_14_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT14to14 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE14to14 ),
        // Outputs
        .Y   ( MDDR_DQ_14_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[14:14] ) 
        );

//--------BIBUF
BIBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQ_15_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_DQ_OUT15to15 ),
        .E   ( MSS_ADLIB_INST_DRAM_DQ_OE15to15 ),
        // Outputs
        .Y   ( MDDR_DQ_15_PAD_Y ),
        // Inouts
        .PAD ( MDDR_DQ[15:15] ) 
        );

//--------BIBUF_DIFF
BIBUF_DIFF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQS_0_PAD(
        // Inputs
        .D    ( MSS_ADLIB_INST_DRAM_DQS_OUT0to0 ),
        .E    ( MSS_ADLIB_INST_DRAM_DQS_OE0to0 ),
        // Outputs
        .Y    ( MDDR_DQS_0_PAD_Y ),
        // Inouts
        .PADP ( MDDR_DQS[0:0] ),
        .PADN ( MDDR_DQS_N[0:0] ) 
        );

//--------BIBUF_DIFF
BIBUF_DIFF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQS_1_PAD(
        // Inputs
        .D    ( MSS_ADLIB_INST_DRAM_DQS_OUT1to1 ),
        .E    ( MSS_ADLIB_INST_DRAM_DQS_OE1to1 ),
        // Outputs
        .Y    ( MDDR_DQS_1_PAD_Y ),
        // Inouts
        .PADP ( MDDR_DQS[1:1] ),
        .PADN ( MDDR_DQS_N[1:1] ) 
        );

//--------INBUF
INBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQS_TMATCH_0_IN_PAD(
        // Inputs
        .PAD ( MDDR_DQS_TMATCH_0_IN ),
        // Outputs
        .Y   ( MDDR_DQS_TMATCH_0_IN_PAD_Y ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_DQS_TMATCH_0_OUT_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_FIFO_WE_OUT0to0 ),
        // Outputs
        .PAD ( MDDR_DQS_TMATCH_0_OUT_net_0 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_ODT_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_ODT ),
        // Outputs
        .PAD ( MDDR_ODT_net_0 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_RAS_N_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_RASN ),
        // Outputs
        .PAD ( MDDR_RAS_N_net_0 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_RESET_N_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_RSTN ),
        // Outputs
        .PAD ( MDDR_RESET_N_net_0 ) 
        );

//--------OUTBUF
OUTBUF #( 
        .IOSTD ( "SSTL18I" ) )
MDDR_WE_N_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_DRAM_WEN ),
        // Outputs
        .PAD ( MDDR_WE_N_net_0 ) 
        );

//--------INBUF
INBUF MMUART_0_RXD_PAD(
        // Inputs
        .PAD ( MMUART_0_RXD ),
        // Outputs
        .Y   ( MMUART_0_RXD_PAD_Y ) 
        );

//--------TRIBUFF
TRIBUFF MMUART_0_TXD_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_MMUART0_TXD_USBC_DIR_MGPIO27B_OUT ),
        .E   ( MSS_ADLIB_INST_MMUART0_TXD_USBC_DIR_MGPIO27B_OE ),
        // Outputs
        .PAD ( MMUART_0_TXD_net_0 ) 
        );

//--------INBUF
INBUF MMUART_1_RXD_PAD(
        // Inputs
        .PAD ( MMUART_1_RXD ),
        // Outputs
        .Y   ( MMUART_1_RXD_PAD_Y ) 
        );

//--------TRIBUFF
TRIBUFF MMUART_1_TXD_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT ),
        .E   ( MSS_ADLIB_INST_MMUART1_TXD_USBC_DATA2_MGPIO24B_OE ),
        // Outputs
        .PAD ( MMUART_1_TXD_net_0 ) 
        );

//--------MSS_010
MSS_010 #( 
        .ACT_UBITS         ( 56'hFFFFFFFFFFFFFF ),
        .DDR_CLK_FREQ      ( 200.0 ),
        .INIT              ( 1438'h0000040100361200000000000000003610008000000000000000000000000000000000001203610000000000000000000120361000000000100520481204812048120D8120D8120F00000000F000000000000000000000000000000007FFFFFFFB000001007C37F00020200E09280F00183FFFFE400000000002150000000000E11C0000007E4800010842108421000001FE34001FF8000000400000000020091007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
        .MEMORYFILE        ( "ENVM_init.mem" ),
        .RTC_MAIN_XTL_FREQ ( 0.0 ),
        .RTC_MAIN_XTL_MODE ( "" ) )
MSS_ADLIB_INST(
        // Inputs
        .CAN_RXBUS_F2H_SCP                       ( VCC_net ), // tied to 1'b1 from definition
        .CAN_TX_EBL_F2H_SCP                      ( VCC_net ), // tied to 1'b1 from definition
        .CAN_TXBUS_F2H_SCP                       ( VCC_net ), // tied to 1'b1 from definition
        .COLF                                    ( MAC_MII_COL ),
        .CRSF                                    ( MAC_MII_CRS ),
        .F2_DMAREADY                             ( F2_DMAREADY_const_net_0 ), // tied to 2'h3 from definition
        .F2H_INTERRUPT                           ( F2H_INTERRUPT_const_net_0 ), // tied to 16'h0000 from definition
        .F2HCALIB                                ( VCC_net ), // tied to 1'b1 from definition
        .F_DMAREADY                              ( F_DMAREADY_const_net_0 ), // tied to 2'h3 from definition
        .F_FM0_ADDR                              ( F_FM0_ADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .F_FM0_ENABLE                            ( GND_net ), // tied to 1'b0 from definition
        .F_FM0_MASTLOCK                          ( GND_net ), // tied to 1'b0 from definition
        .F_FM0_READY                             ( VCC_net ), // tied to 1'b1 from definition
        .F_FM0_SEL                               ( GND_net ), // tied to 1'b0 from definition
        .F_FM0_SIZE                              ( F_FM0_SIZE_const_net_0 ), // tied to 2'h0 from definition
        .F_FM0_TRANS1                            ( GND_net ), // tied to 1'b0 from definition
        .F_FM0_WDATA                             ( F_FM0_WDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .F_FM0_WRITE                             ( GND_net ), // tied to 1'b0 from definition
        .F_HM0_RDATA                             ( F_HM0_RDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .F_HM0_READY                             ( VCC_net ), // tied to 1'b1 from definition
        .F_HM0_RESP                              ( GND_net ), // tied to 1'b0 from definition
        .FAB_AVALID                              ( VCC_net ), // tied to 1'b1 from definition
        .FAB_HOSTDISCON                          ( VCC_net ), // tied to 1'b1 from definition
        .FAB_IDDIG                               ( VCC_net ), // tied to 1'b1 from definition
        .FAB_LINESTATE                           ( FAB_LINESTATE_const_net_0 ), // tied to 2'h3 from definition
        .FAB_M3_RESET_N                          ( VCC_net ), // tied to 1'b1 from definition
        .FAB_PLL_LOCK                            ( VCC_net ), // tied to 1'b1 from definition
        .FAB_RXACTIVE                            ( VCC_net ), // tied to 1'b1 from definition
        .FAB_RXERROR                             ( VCC_net ), // tied to 1'b1 from definition
        .FAB_RXVALID                             ( VCC_net ), // tied to 1'b1 from definition
        .FAB_RXVALIDH                            ( GND_net ), // tied to 1'b0 from definition
        .FAB_SESSEND                             ( VCC_net ), // tied to 1'b1 from definition
        .FAB_TXREADY                             ( VCC_net ), // tied to 1'b1 from definition
        .FAB_VBUSVALID                           ( VCC_net ), // tied to 1'b1 from definition
        .FAB_VSTATUS                             ( FAB_VSTATUS_const_net_0 ), // tied to 8'hFF from definition
        .FAB_XDATAIN                             ( FAB_XDATAIN_const_net_0 ), // tied to 8'hFF from definition
        .GTX_CLKPF                               ( VCC_net ), // tied to 1'b1 from definition
        .I2C0_BCLK                               ( VCC_net ), // tied to 1'b1 from definition
        .I2C0_SCL_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .I2C0_SDA_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .I2C1_BCLK                               ( VCC_net ), // tied to 1'b1 from definition
        .I2C1_SCL_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .I2C1_SDA_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .MDIF                                    ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO0A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO10A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO11A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO11B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO12A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO13A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO14A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO15A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO16A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO17B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO18B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO19B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO1A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO20B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO21B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO22B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO24B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO25B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO26B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO27B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO28B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO29B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO2A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO30B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO31B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO3A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO4A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO5A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO6A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO7A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO8A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO9A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_CTS_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_DCD_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_DSR_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_DTR_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_RI_F2H_SCP                      ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_RTS_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_RXD_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_SCK_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_TXD_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_CTS_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_DCD_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_DSR_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_RI_F2H_SCP                      ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_RTS_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_RXD_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_SCK_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_TXD_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .PER2_FABRIC_PRDATA                      ( PER2_FABRIC_PRDATA_const_net_0 ), // tied to 32'hFFFFFFFF from definition
        .PER2_FABRIC_PREADY                      ( VCC_net ), // tied to 1'b1 from definition
        .PER2_FABRIC_PSLVERR                     ( VCC_net ), // tied to 1'b1 from definition
        .RCGF                                    ( RCGF_const_net_0 ), // tied to 10'h3FF from definition
        .RX_CLKPF                                ( MAC_MII_RX_CLK ),
        .RX_DVF                                  ( MAC_MII_RX_DV ),
        .RX_ERRF                                 ( MAC_MII_RX_ER ),
        .RX_EV                                   ( VCC_net ), // tied to 1'b1 from definition
        .RXDF                                    ( RXDF_net_0 ),
        .SLEEPHOLDREQ                            ( GND_net ), // tied to 1'b0 from definition
        .SMBALERT_NI0                            ( VCC_net ), // tied to 1'b1 from definition
        .SMBALERT_NI1                            ( VCC_net ), // tied to 1'b1 from definition
        .SMBSUS_NI0                              ( VCC_net ), // tied to 1'b1 from definition
        .SMBSUS_NI1                              ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_CLK_IN                             ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_SDI_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_SDO_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_SS0_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_SS1_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_SS2_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_SS3_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI1_CLK_IN                             ( VCC_net ), // tied to 1'b1 from definition
        .SPI1_SDI_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI1_SDO_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI1_SS0_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI1_SS1_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI1_SS2_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI1_SS3_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .TX_CLKPF                                ( MAC_MII_TX_CLK ),
        .USER_MSS_GPIO_RESET_N                   ( VCC_net ), // tied to 1'b1 from definition
        .USER_MSS_RESET_N                        ( VCC_net ), // tied to 1'b1 from definition
        .XCLK_FAB                                ( VCC_net ), // tied to 1'b1 from definition
        .CLK_BASE                                ( MCCC_CLK_BASE ),
        .CLK_MDDR_APB                            ( VCC_net ), // tied to 1'b1 from definition
        .F_ARADDR_HADDR1                         ( F_ARADDR_HADDR1_const_net_0 ), // tied to 32'hFFFFFFFF from definition
        .F_ARBURST_HTRANS1                       ( F_ARBURST_HTRANS1_const_net_0 ), // tied to 2'h0 from definition
        .F_ARID_HSEL1                            ( F_ARID_HSEL1_const_net_0 ), // tied to 4'h0 from definition
        .F_ARLEN_HBURST1                         ( F_ARLEN_HBURST1_const_net_0 ), // tied to 4'h0 from definition
        .F_ARLOCK_HMASTLOCK1                     ( F_ARLOCK_HMASTLOCK1_const_net_0 ), // tied to 2'h0 from definition
        .F_ARSIZE_HSIZE1                         ( F_ARSIZE_HSIZE1_const_net_0 ), // tied to 2'h0 from definition
        .F_ARVALID_HWRITE1                       ( GND_net ), // tied to 1'b0 from definition
        .F_AWADDR_HADDR0                         ( F_AWADDR_HADDR0_const_net_0 ), // tied to 32'hFFFFFFFF from definition
        .F_AWBURST_HTRANS0                       ( F_AWBURST_HTRANS0_const_net_0 ), // tied to 2'h0 from definition
        .F_AWID_HSEL0                            ( F_AWID_HSEL0_const_net_0 ), // tied to 4'h0 from definition
        .F_AWLEN_HBURST0                         ( F_AWLEN_HBURST0_const_net_0 ), // tied to 4'h0 from definition
        .F_AWLOCK_HMASTLOCK0                     ( F_AWLOCK_HMASTLOCK0_const_net_0 ), // tied to 2'h0 from definition
        .F_AWSIZE_HSIZE0                         ( F_AWSIZE_HSIZE0_const_net_0 ), // tied to 2'h0 from definition
        .F_AWVALID_HWRITE0                       ( GND_net ), // tied to 1'b0 from definition
        .F_BREADY                                ( GND_net ), // tied to 1'b0 from definition
        .F_RMW_AXI                               ( GND_net ), // tied to 1'b0 from definition
        .F_RREADY                                ( GND_net ), // tied to 1'b0 from definition
        .F_WDATA_HWDATA01                        ( F_WDATA_HWDATA01_const_net_0 ), // tied to 64'hFFFFFFFFFFFFFFFF from definition
        .F_WID_HREADY01                          ( F_WID_HREADY01_const_net_0 ), // tied to 4'h0 from definition
        .F_WLAST                                 ( GND_net ), // tied to 1'b0 from definition
        .F_WSTRB                                 ( F_WSTRB_const_net_0 ), // tied to 8'h00 from definition
        .F_WVALID                                ( GND_net ), // tied to 1'b0 from definition
        .FPGA_MDDR_ARESET_N                      ( VCC_net ), // tied to 1'b1 from definition
        .MDDR_FABRIC_PADDR                       ( MDDR_FABRIC_PADDR_const_net_0 ), // tied to 9'h1FF from definition
        .MDDR_FABRIC_PENABLE                     ( VCC_net ), // tied to 1'b1 from definition
        .MDDR_FABRIC_PSEL                        ( VCC_net ), // tied to 1'b1 from definition
        .MDDR_FABRIC_PWDATA                      ( MDDR_FABRIC_PWDATA_const_net_0 ), // tied to 16'hFFFF from definition
        .MDDR_FABRIC_PWRITE                      ( VCC_net ), // tied to 1'b1 from definition
        .PRESET_N                                ( GND_net ), // tied to 1'b0 from definition
        .CAN_RXBUS_USBA_DATA1_MGPIO3A_IN         ( GND_net ),
        .CAN_TX_EBL_USBA_DATA2_MGPIO4A_IN        ( GND_net ),
        .CAN_TXBUS_USBA_DATA0_MGPIO2A_IN         ( GND_net ),
        .DM_IN                                   ( DM_IN_net_0 ),
        .DRAM_DQ_IN                              ( DRAM_DQ_IN_net_0 ),
        .DRAM_DQS_IN                             ( DRAM_DQS_IN_net_0 ),
        .DRAM_FIFO_WE_IN                         ( DRAM_FIFO_WE_IN_net_0 ),
        .I2C0_SCL_USBC_DATA1_MGPIO31B_IN         ( I2C_0_SCL_PAD_Y ),
        .I2C0_SDA_USBC_DATA0_MGPIO30B_IN         ( I2C_0_SDA_PAD_Y ),
        .I2C1_SCL_USBA_DATA4_MGPIO1A_IN          ( I2C_1_SCL_PAD_Y ),
        .I2C1_SDA_USBA_DATA3_MGPIO0A_IN          ( I2C_1_SDA_PAD_Y ),
        .MMUART0_CTS_USBC_DATA7_MGPIO19B_IN      ( GND_net ),
        .MMUART0_DCD_MGPIO22B_IN                 ( GND_net ),
        .MMUART0_DSR_MGPIO20B_IN                 ( GND_net ),
        .MMUART0_DTR_USBC_DATA6_MGPIO18B_IN      ( GND_net ),
        .MMUART0_RI_MGPIO21B_IN                  ( GND_net ),
        .MMUART0_RTS_USBC_DATA5_MGPIO17B_IN      ( GND_net ),
        .MMUART0_RXD_USBC_STP_MGPIO28B_IN        ( MMUART_0_RXD_PAD_Y ),
        .MMUART0_SCK_USBC_NXT_MGPIO29B_IN        ( GND_net ),
        .MMUART0_TXD_USBC_DIR_MGPIO27B_IN        ( GND_net ),
        .MMUART1_RXD_USBC_DATA3_MGPIO26B_IN      ( MMUART_1_RXD_PAD_Y ),
        .MMUART1_SCK_USBC_DATA4_MGPIO25B_IN      ( GND_net ),
        .MMUART1_TXD_USBC_DATA2_MGPIO24B_IN      ( GND_net ),
        .RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_IN     ( USB_ULPI_XCLK_PAD_Y ),
        .RGMII_MDC_RMII_MDC_IN                   ( GND_net ),
        .RGMII_MDIO_RMII_MDIO_USBB_DATA7_IN      ( USB_ULPI_DATA_7_PAD_Y ),
        .RGMII_RX_CLK_IN                         ( GND_net ),
        .RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_IN  ( USB_ULPI_DATA_2_PAD_Y ),
        .RGMII_RXD0_RMII_RXD0_USBB_DATA0_IN      ( USB_ULPI_DATA_0_PAD_Y ),
        .RGMII_RXD1_RMII_RXD1_USBB_DATA1_IN      ( USB_ULPI_DATA_1_PAD_Y ),
        .RGMII_RXD2_RMII_RX_ER_USBB_DATA3_IN     ( USB_ULPI_DATA_3_PAD_Y ),
        .RGMII_RXD3_USBB_DATA4_IN                ( USB_ULPI_DATA_4_PAD_Y ),
        .RGMII_TX_CLK_IN                         ( GND_net ),
        .RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_IN     ( USB_ULPI_NXT_PAD_Y ),
        .RGMII_TXD0_RMII_TXD0_USBB_DIR_IN        ( USB_ULPI_DIR_PAD_Y ),
        .RGMII_TXD1_RMII_TXD1_USBB_STP_IN        ( GND_net ),
        .RGMII_TXD2_USBB_DATA5_IN                ( USB_ULPI_DATA_5_PAD_Y ),
        .RGMII_TXD3_USBB_DATA6_IN                ( USB_ULPI_DATA_6_PAD_Y ),
        .SPI0_SCK_USBA_XCLK_IN                   ( SPI_0_CLK_PAD_Y ),
        .SPI0_SDI_USBA_DIR_MGPIO5A_IN            ( SPI_0_DI_PAD_Y ),
        .SPI0_SDO_USBA_STP_MGPIO6A_IN            ( GND_net ),
        .SPI0_SS0_USBA_NXT_MGPIO7A_IN            ( SPI_0_SS0_PAD_Y ),
        .SPI0_SS1_USBA_DATA5_MGPIO8A_IN          ( GND_net ),
        .SPI0_SS2_USBA_DATA6_MGPIO9A_IN          ( GND_net ),
        .SPI0_SS3_USBA_DATA7_MGPIO10A_IN         ( GND_net ),
        .SPI1_SCK_IN                             ( SPI_1_CLK_PAD_Y ),
        .SPI1_SDI_MGPIO11A_IN                    ( SPI_1_DI_PAD_Y ),
        .SPI1_SDO_MGPIO12A_IN                    ( GND_net ),
        .SPI1_SS0_MGPIO13A_IN                    ( SPI_1_SS0_PAD_Y ),
        .SPI1_SS1_MGPIO14A_IN                    ( GND_net ),
        .SPI1_SS2_MGPIO15A_IN                    ( GND_net ),
        .SPI1_SS3_MGPIO16A_IN                    ( GND_net ),
        .SPI1_SS4_MGPIO17A_IN                    ( GND_net ),
        .SPI1_SS5_MGPIO18A_IN                    ( GND_net ),
        .SPI1_SS6_MGPIO23A_IN                    ( GND_net ),
        .SPI1_SS7_MGPIO24A_IN                    ( GND_net ),
        .USBC_XCLK_IN                            ( GND_net ),
        // Outputs
        .CAN_RXBUS_MGPIO3A_H2F_A                 (  ),
        .CAN_RXBUS_MGPIO3A_H2F_B                 (  ),
        .CAN_TX_EBL_MGPIO4A_H2F_A                (  ),
        .CAN_TX_EBL_MGPIO4A_H2F_B                (  ),
        .CAN_TXBUS_MGPIO2A_H2F_A                 (  ),
        .CAN_TXBUS_MGPIO2A_H2F_B                 (  ),
        .CLK_CONFIG_APB                          (  ),
        .COMMS_INT                               (  ),
        .CONFIG_PRESET_N                         (  ),
        .EDAC_ERROR                              (  ),
        .F_FM0_RDATA                             (  ),
        .F_FM0_READYOUT                          (  ),
        .F_FM0_RESP                              (  ),
        .F_HM0_ADDR                              (  ),
        .F_HM0_ENABLE                            (  ),
        .F_HM0_SEL                               (  ),
        .F_HM0_SIZE                              (  ),
        .F_HM0_TRANS1                            (  ),
        .F_HM0_WDATA                             (  ),
        .F_HM0_WRITE                             (  ),
        .FAB_CHRGVBUS                            (  ),
        .FAB_DISCHRGVBUS                         (  ),
        .FAB_DMPULLDOWN                          (  ),
        .FAB_DPPULLDOWN                          (  ),
        .FAB_DRVVBUS                             (  ),
        .FAB_IDPULLUP                            (  ),
        .FAB_OPMODE                              (  ),
        .FAB_SUSPENDM                            (  ),
        .FAB_TERMSEL                             (  ),
        .FAB_TXVALID                             (  ),
        .FAB_VCONTROL                            (  ),
        .FAB_VCONTROLLOADM                       (  ),
        .FAB_XCVRSEL                             (  ),
        .FAB_XDATAOUT                            (  ),
        .FACC_GLMUX_SEL                          (  ),
        .FIC32_0_MASTER                          (  ),
        .FIC32_1_MASTER                          (  ),
        .FPGA_RESET_N                            (  ),
        .GTX_CLK                                 (  ),
        .H2F_INTERRUPT                           (  ),
        .H2F_NMI                                 (  ),
        .H2FCALIB                                (  ),
        .I2C0_SCL_MGPIO31B_H2F_A                 (  ),
        .I2C0_SCL_MGPIO31B_H2F_B                 (  ),
        .I2C0_SDA_MGPIO30B_H2F_A                 (  ),
        .I2C0_SDA_MGPIO30B_H2F_B                 (  ),
        .I2C1_SCL_MGPIO1A_H2F_A                  (  ),
        .I2C1_SCL_MGPIO1A_H2F_B                  (  ),
        .I2C1_SDA_MGPIO0A_H2F_A                  (  ),
        .I2C1_SDA_MGPIO0A_H2F_B                  (  ),
        .MDCF                                    (  ),
        .MDOENF                                  (  ),
        .MDOF                                    (  ),
        .MMUART0_CTS_MGPIO19B_H2F_A              (  ),
        .MMUART0_CTS_MGPIO19B_H2F_B              (  ),
        .MMUART0_DCD_MGPIO22B_H2F_A              (  ),
        .MMUART0_DCD_MGPIO22B_H2F_B              (  ),
        .MMUART0_DSR_MGPIO20B_H2F_A              (  ),
        .MMUART0_DSR_MGPIO20B_H2F_B              (  ),
        .MMUART0_DTR_MGPIO18B_H2F_A              (  ),
        .MMUART0_DTR_MGPIO18B_H2F_B              (  ),
        .MMUART0_RI_MGPIO21B_H2F_A               (  ),
        .MMUART0_RI_MGPIO21B_H2F_B               (  ),
        .MMUART0_RTS_MGPIO17B_H2F_A              (  ),
        .MMUART0_RTS_MGPIO17B_H2F_B              (  ),
        .MMUART0_RXD_MGPIO28B_H2F_A              (  ),
        .MMUART0_RXD_MGPIO28B_H2F_B              (  ),
        .MMUART0_SCK_MGPIO29B_H2F_A              (  ),
        .MMUART0_SCK_MGPIO29B_H2F_B              (  ),
        .MMUART0_TXD_MGPIO27B_H2F_A              (  ),
        .MMUART0_TXD_MGPIO27B_H2F_B              (  ),
        .MMUART1_DTR_MGPIO12B_H2F_A              (  ),
        .MMUART1_RTS_MGPIO11B_H2F_A              (  ),
        .MMUART1_RTS_MGPIO11B_H2F_B              (  ),
        .MMUART1_RXD_MGPIO26B_H2F_A              (  ),
        .MMUART1_RXD_MGPIO26B_H2F_B              (  ),
        .MMUART1_SCK_MGPIO25B_H2F_A              (  ),
        .MMUART1_SCK_MGPIO25B_H2F_B              (  ),
        .MMUART1_TXD_MGPIO24B_H2F_A              (  ),
        .MMUART1_TXD_MGPIO24B_H2F_B              (  ),
        .MPLL_LOCK                               (  ),
        .PER2_FABRIC_PADDR                       (  ),
        .PER2_FABRIC_PENABLE                     (  ),
        .PER2_FABRIC_PSEL                        (  ),
        .PER2_FABRIC_PWDATA                      (  ),
        .PER2_FABRIC_PWRITE                      (  ),
        .RTC_MATCH                               (  ),
        .SLEEPDEEP                               (  ),
        .SLEEPHOLDACK                            (  ),
        .SLEEPING                                (  ),
        .SMBALERT_NO0                            (  ),
        .SMBALERT_NO1                            (  ),
        .SMBSUS_NO0                              (  ),
        .SMBSUS_NO1                              (  ),
        .SPI0_CLK_OUT                            (  ),
        .SPI0_SDI_MGPIO5A_H2F_A                  (  ),
        .SPI0_SDI_MGPIO5A_H2F_B                  (  ),
        .SPI0_SDO_MGPIO6A_H2F_A                  (  ),
        .SPI0_SDO_MGPIO6A_H2F_B                  (  ),
        .SPI0_SS0_MGPIO7A_H2F_A                  (  ),
        .SPI0_SS0_MGPIO7A_H2F_B                  (  ),
        .SPI0_SS1_MGPIO8A_H2F_A                  (  ),
        .SPI0_SS1_MGPIO8A_H2F_B                  (  ),
        .SPI0_SS2_MGPIO9A_H2F_A                  (  ),
        .SPI0_SS2_MGPIO9A_H2F_B                  (  ),
        .SPI0_SS3_MGPIO10A_H2F_A                 (  ),
        .SPI0_SS3_MGPIO10A_H2F_B                 (  ),
        .SPI0_SS4_MGPIO19A_H2F_A                 (  ),
        .SPI0_SS5_MGPIO20A_H2F_A                 (  ),
        .SPI0_SS6_MGPIO21A_H2F_A                 (  ),
        .SPI0_SS7_MGPIO22A_H2F_A                 (  ),
        .SPI1_CLK_OUT                            (  ),
        .SPI1_SDI_MGPIO11A_H2F_A                 (  ),
        .SPI1_SDI_MGPIO11A_H2F_B                 (  ),
        .SPI1_SDO_MGPIO12A_H2F_A                 (  ),
        .SPI1_SDO_MGPIO12A_H2F_B                 (  ),
        .SPI1_SS0_MGPIO13A_H2F_A                 (  ),
        .SPI1_SS0_MGPIO13A_H2F_B                 (  ),
        .SPI1_SS1_MGPIO14A_H2F_A                 (  ),
        .SPI1_SS1_MGPIO14A_H2F_B                 (  ),
        .SPI1_SS2_MGPIO15A_H2F_A                 (  ),
        .SPI1_SS2_MGPIO15A_H2F_B                 (  ),
        .SPI1_SS3_MGPIO16A_H2F_A                 (  ),
        .SPI1_SS3_MGPIO16A_H2F_B                 (  ),
        .SPI1_SS4_MGPIO17A_H2F_A                 (  ),
        .SPI1_SS5_MGPIO18A_H2F_A                 (  ),
        .SPI1_SS6_MGPIO23A_H2F_A                 (  ),
        .SPI1_SS7_MGPIO24A_H2F_A                 (  ),
        .TCGF                                    (  ),
        .TRACECLK                                (  ),
        .TRACEDATA                               (  ),
        .TX_CLK                                  (  ),
        .TX_ENF                                  ( MAC_MII_TX_EN_net_0 ),
        .TX_ERRF                                 ( MAC_MII_TX_ER_net_0 ),
        .TXCTL_EN_RIF                            (  ),
        .TXD_RIF                                 (  ),
        .TXDF                                    ( TXDF_net_0 ),
        .TXEV                                    (  ),
        .WDOGTIMEOUT                             (  ),
        .F_ARREADY_HREADYOUT1                    (  ),
        .F_AWREADY_HREADYOUT0                    (  ),
        .F_BID                                   (  ),
        .F_BRESP_HRESP0                          (  ),
        .F_BVALID                                (  ),
        .F_RDATA_HRDATA01                        (  ),
        .F_RID                                   (  ),
        .F_RLAST                                 (  ),
        .F_RRESP_HRESP1                          (  ),
        .F_RVALID                                (  ),
        .F_WREADY                                (  ),
        .MDDR_FABRIC_PRDATA                      (  ),
        .MDDR_FABRIC_PREADY                      (  ),
        .MDDR_FABRIC_PSLVERR                     (  ),
        .CAN_RXBUS_USBA_DATA1_MGPIO3A_OUT        (  ),
        .CAN_TX_EBL_USBA_DATA2_MGPIO4A_OUT       (  ),
        .CAN_TXBUS_USBA_DATA0_MGPIO2A_OUT        (  ),
        .DRAM_ADDR                               ( DRAM_ADDR_net_0 ),
        .DRAM_BA                                 ( DRAM_BA_net_0 ),
        .DRAM_CASN                               ( MSS_ADLIB_INST_DRAM_CASN ),
        .DRAM_CKE                                ( MSS_ADLIB_INST_DRAM_CKE ),
        .DRAM_CLK                                ( MSS_ADLIB_INST_DRAM_CLK ),
        .DRAM_CSN                                ( MSS_ADLIB_INST_DRAM_CSN ),
        .DRAM_DM_RDQS_OUT                        ( DRAM_DM_RDQS_OUT_net_0 ),
        .DRAM_DQ_OUT                             ( DRAM_DQ_OUT_net_0 ),
        .DRAM_DQS_OUT                            ( DRAM_DQS_OUT_net_0 ),
        .DRAM_FIFO_WE_OUT                        ( DRAM_FIFO_WE_OUT_net_0 ),
        .DRAM_ODT                                ( MSS_ADLIB_INST_DRAM_ODT ),
        .DRAM_RASN                               ( MSS_ADLIB_INST_DRAM_RASN ),
        .DRAM_RSTN                               ( MSS_ADLIB_INST_DRAM_RSTN ),
        .DRAM_WEN                                ( MSS_ADLIB_INST_DRAM_WEN ),
        .I2C0_SCL_USBC_DATA1_MGPIO31B_OUT        ( MSS_ADLIB_INST_I2C0_SCL_USBC_DATA1_MGPIO31B_OUT ),
        .I2C0_SDA_USBC_DATA0_MGPIO30B_OUT        ( MSS_ADLIB_INST_I2C0_SDA_USBC_DATA0_MGPIO30B_OUT ),
        .I2C1_SCL_USBA_DATA4_MGPIO1A_OUT         ( MSS_ADLIB_INST_I2C1_SCL_USBA_DATA4_MGPIO1A_OUT ),
        .I2C1_SDA_USBA_DATA3_MGPIO0A_OUT         ( MSS_ADLIB_INST_I2C1_SDA_USBA_DATA3_MGPIO0A_OUT ),
        .MMUART0_CTS_USBC_DATA7_MGPIO19B_OUT     (  ),
        .MMUART0_DCD_MGPIO22B_OUT                (  ),
        .MMUART0_DSR_MGPIO20B_OUT                (  ),
        .MMUART0_DTR_USBC_DATA6_MGPIO18B_OUT     (  ),
        .MMUART0_RI_MGPIO21B_OUT                 (  ),
        .MMUART0_RTS_USBC_DATA5_MGPIO17B_OUT     (  ),
        .MMUART0_RXD_USBC_STP_MGPIO28B_OUT       (  ),
        .MMUART0_SCK_USBC_NXT_MGPIO29B_OUT       (  ),
        .MMUART0_TXD_USBC_DIR_MGPIO27B_OUT       ( MSS_ADLIB_INST_MMUART0_TXD_USBC_DIR_MGPIO27B_OUT ),
        .MMUART1_RXD_USBC_DATA3_MGPIO26B_OUT     (  ),
        .MMUART1_SCK_USBC_DATA4_MGPIO25B_OUT     (  ),
        .MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT     ( MSS_ADLIB_INST_MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT ),
        .RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OUT    (  ),
        .RGMII_MDC_RMII_MDC_OUT                  (  ),
        .RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT     ( MSS_ADLIB_INST_RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT ),
        .RGMII_RX_CLK_OUT                        (  ),
        .RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OUT ( MSS_ADLIB_INST_RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OUT ),
        .RGMII_RXD0_RMII_RXD0_USBB_DATA0_OUT     ( MSS_ADLIB_INST_RGMII_RXD0_RMII_RXD0_USBB_DATA0_OUT ),
        .RGMII_RXD1_RMII_RXD1_USBB_DATA1_OUT     ( MSS_ADLIB_INST_RGMII_RXD1_RMII_RXD1_USBB_DATA1_OUT ),
        .RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OUT    ( MSS_ADLIB_INST_RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OUT ),
        .RGMII_RXD3_USBB_DATA4_OUT               ( MSS_ADLIB_INST_RGMII_RXD3_USBB_DATA4_OUT ),
        .RGMII_TX_CLK_OUT                        (  ),
        .RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OUT    (  ),
        .RGMII_TXD0_RMII_TXD0_USBB_DIR_OUT       (  ),
        .RGMII_TXD1_RMII_TXD1_USBB_STP_OUT       ( MSS_ADLIB_INST_RGMII_TXD1_RMII_TXD1_USBB_STP_OUT ),
        .RGMII_TXD2_USBB_DATA5_OUT               ( MSS_ADLIB_INST_RGMII_TXD2_USBB_DATA5_OUT ),
        .RGMII_TXD3_USBB_DATA6_OUT               ( MSS_ADLIB_INST_RGMII_TXD3_USBB_DATA6_OUT ),
        .SPI0_SCK_USBA_XCLK_OUT                  ( MSS_ADLIB_INST_SPI0_SCK_USBA_XCLK_OUT ),
        .SPI0_SDI_USBA_DIR_MGPIO5A_OUT           (  ),
        .SPI0_SDO_USBA_STP_MGPIO6A_OUT           ( MSS_ADLIB_INST_SPI0_SDO_USBA_STP_MGPIO6A_OUT ),
        .SPI0_SS0_USBA_NXT_MGPIO7A_OUT           ( MSS_ADLIB_INST_SPI0_SS0_USBA_NXT_MGPIO7A_OUT ),
        .SPI0_SS1_USBA_DATA5_MGPIO8A_OUT         (  ),
        .SPI0_SS2_USBA_DATA6_MGPIO9A_OUT         (  ),
        .SPI0_SS3_USBA_DATA7_MGPIO10A_OUT        (  ),
        .SPI1_SCK_OUT                            ( MSS_ADLIB_INST_SPI1_SCK_OUT ),
        .SPI1_SDI_MGPIO11A_OUT                   (  ),
        .SPI1_SDO_MGPIO12A_OUT                   ( MSS_ADLIB_INST_SPI1_SDO_MGPIO12A_OUT ),
        .SPI1_SS0_MGPIO13A_OUT                   ( MSS_ADLIB_INST_SPI1_SS0_MGPIO13A_OUT ),
        .SPI1_SS1_MGPIO14A_OUT                   (  ),
        .SPI1_SS2_MGPIO15A_OUT                   (  ),
        .SPI1_SS3_MGPIO16A_OUT                   (  ),
        .SPI1_SS4_MGPIO17A_OUT                   (  ),
        .SPI1_SS5_MGPIO18A_OUT                   (  ),
        .SPI1_SS6_MGPIO23A_OUT                   (  ),
        .SPI1_SS7_MGPIO24A_OUT                   (  ),
        .USBC_XCLK_OUT                           (  ),
        .CAN_RXBUS_USBA_DATA1_MGPIO3A_OE         (  ),
        .CAN_TX_EBL_USBA_DATA2_MGPIO4A_OE        (  ),
        .CAN_TXBUS_USBA_DATA0_MGPIO2A_OE         (  ),
        .DM_OE                                   ( DM_OE_net_0 ),
        .DRAM_DQ_OE                              ( DRAM_DQ_OE_net_0 ),
        .DRAM_DQS_OE                             ( DRAM_DQS_OE_net_0 ),
        .I2C0_SCL_USBC_DATA1_MGPIO31B_OE         ( MSS_ADLIB_INST_I2C0_SCL_USBC_DATA1_MGPIO31B_OE ),
        .I2C0_SDA_USBC_DATA0_MGPIO30B_OE         ( MSS_ADLIB_INST_I2C0_SDA_USBC_DATA0_MGPIO30B_OE ),
        .I2C1_SCL_USBA_DATA4_MGPIO1A_OE          ( MSS_ADLIB_INST_I2C1_SCL_USBA_DATA4_MGPIO1A_OE ),
        .I2C1_SDA_USBA_DATA3_MGPIO0A_OE          ( MSS_ADLIB_INST_I2C1_SDA_USBA_DATA3_MGPIO0A_OE ),
        .MMUART0_CTS_USBC_DATA7_MGPIO19B_OE      (  ),
        .MMUART0_DCD_MGPIO22B_OE                 (  ),
        .MMUART0_DSR_MGPIO20B_OE                 (  ),
        .MMUART0_DTR_USBC_DATA6_MGPIO18B_OE      (  ),
        .MMUART0_RI_MGPIO21B_OE                  (  ),
        .MMUART0_RTS_USBC_DATA5_MGPIO17B_OE      (  ),
        .MMUART0_RXD_USBC_STP_MGPIO28B_OE        (  ),
        .MMUART0_SCK_USBC_NXT_MGPIO29B_OE        (  ),
        .MMUART0_TXD_USBC_DIR_MGPIO27B_OE        ( MSS_ADLIB_INST_MMUART0_TXD_USBC_DIR_MGPIO27B_OE ),
        .MMUART1_RXD_USBC_DATA3_MGPIO26B_OE      (  ),
        .MMUART1_SCK_USBC_DATA4_MGPIO25B_OE      (  ),
        .MMUART1_TXD_USBC_DATA2_MGPIO24B_OE      ( MSS_ADLIB_INST_MMUART1_TXD_USBC_DATA2_MGPIO24B_OE ),
        .RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OE     (  ),
        .RGMII_MDC_RMII_MDC_OE                   (  ),
        .RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE      ( MSS_ADLIB_INST_RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE ),
        .RGMII_RX_CLK_OE                         (  ),
        .RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OE  ( MSS_ADLIB_INST_RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OE ),
        .RGMII_RXD0_RMII_RXD0_USBB_DATA0_OE      ( MSS_ADLIB_INST_RGMII_RXD0_RMII_RXD0_USBB_DATA0_OE ),
        .RGMII_RXD1_RMII_RXD1_USBB_DATA1_OE      ( MSS_ADLIB_INST_RGMII_RXD1_RMII_RXD1_USBB_DATA1_OE ),
        .RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OE     ( MSS_ADLIB_INST_RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OE ),
        .RGMII_RXD3_USBB_DATA4_OE                ( MSS_ADLIB_INST_RGMII_RXD3_USBB_DATA4_OE ),
        .RGMII_TX_CLK_OE                         (  ),
        .RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OE     (  ),
        .RGMII_TXD0_RMII_TXD0_USBB_DIR_OE        (  ),
        .RGMII_TXD1_RMII_TXD1_USBB_STP_OE        ( MSS_ADLIB_INST_RGMII_TXD1_RMII_TXD1_USBB_STP_OE ),
        .RGMII_TXD2_USBB_DATA5_OE                ( MSS_ADLIB_INST_RGMII_TXD2_USBB_DATA5_OE ),
        .RGMII_TXD3_USBB_DATA6_OE                ( MSS_ADLIB_INST_RGMII_TXD3_USBB_DATA6_OE ),
        .SPI0_SCK_USBA_XCLK_OE                   ( MSS_ADLIB_INST_SPI0_SCK_USBA_XCLK_OE ),
        .SPI0_SDI_USBA_DIR_MGPIO5A_OE            (  ),
        .SPI0_SDO_USBA_STP_MGPIO6A_OE            ( MSS_ADLIB_INST_SPI0_SDO_USBA_STP_MGPIO6A_OE ),
        .SPI0_SS0_USBA_NXT_MGPIO7A_OE            ( MSS_ADLIB_INST_SPI0_SS0_USBA_NXT_MGPIO7A_OE ),
        .SPI0_SS1_USBA_DATA5_MGPIO8A_OE          (  ),
        .SPI0_SS2_USBA_DATA6_MGPIO9A_OE          (  ),
        .SPI0_SS3_USBA_DATA7_MGPIO10A_OE         (  ),
        .SPI1_SCK_OE                             ( MSS_ADLIB_INST_SPI1_SCK_OE ),
        .SPI1_SDI_MGPIO11A_OE                    (  ),
        .SPI1_SDO_MGPIO12A_OE                    ( MSS_ADLIB_INST_SPI1_SDO_MGPIO12A_OE ),
        .SPI1_SS0_MGPIO13A_OE                    ( MSS_ADLIB_INST_SPI1_SS0_MGPIO13A_OE ),
        .SPI1_SS1_MGPIO14A_OE                    (  ),
        .SPI1_SS2_MGPIO15A_OE                    (  ),
        .SPI1_SS3_MGPIO16A_OE                    (  ),
        .SPI1_SS4_MGPIO17A_OE                    (  ),
        .SPI1_SS5_MGPIO18A_OE                    (  ),
        .SPI1_SS6_MGPIO23A_OE                    (  ),
        .SPI1_SS7_MGPIO24A_OE                    (  ),
        .USBC_XCLK_OE                            (  ) 
        );

//--------BIBUF
BIBUF SPI_0_CLK_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_SPI0_SCK_USBA_XCLK_OUT ),
        .E   ( MSS_ADLIB_INST_SPI0_SCK_USBA_XCLK_OE ),
        // Outputs
        .Y   ( SPI_0_CLK_PAD_Y ),
        // Inouts
        .PAD ( SPI_0_CLK ) 
        );

//--------INBUF
INBUF SPI_0_DI_PAD(
        // Inputs
        .PAD ( SPI_0_DI ),
        // Outputs
        .Y   ( SPI_0_DI_PAD_Y ) 
        );

//--------TRIBUFF
TRIBUFF SPI_0_DO_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_SPI0_SDO_USBA_STP_MGPIO6A_OUT ),
        .E   ( MSS_ADLIB_INST_SPI0_SDO_USBA_STP_MGPIO6A_OE ),
        // Outputs
        .PAD ( SPI_0_DO_net_0 ) 
        );

//--------BIBUF
BIBUF SPI_0_SS0_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_SPI0_SS0_USBA_NXT_MGPIO7A_OUT ),
        .E   ( MSS_ADLIB_INST_SPI0_SS0_USBA_NXT_MGPIO7A_OE ),
        // Outputs
        .Y   ( SPI_0_SS0_PAD_Y ),
        // Inouts
        .PAD ( SPI_0_SS0 ) 
        );

//--------BIBUF
BIBUF SPI_1_CLK_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_SPI1_SCK_OUT ),
        .E   ( MSS_ADLIB_INST_SPI1_SCK_OE ),
        // Outputs
        .Y   ( SPI_1_CLK_PAD_Y ),
        // Inouts
        .PAD ( SPI_1_CLK ) 
        );

//--------INBUF
INBUF SPI_1_DI_PAD(
        // Inputs
        .PAD ( SPI_1_DI ),
        // Outputs
        .Y   ( SPI_1_DI_PAD_Y ) 
        );

//--------TRIBUFF
TRIBUFF SPI_1_DO_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_SPI1_SDO_MGPIO12A_OUT ),
        .E   ( MSS_ADLIB_INST_SPI1_SDO_MGPIO12A_OE ),
        // Outputs
        .PAD ( SPI_1_DO_net_0 ) 
        );

//--------BIBUF
BIBUF SPI_1_SS0_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_SPI1_SS0_MGPIO13A_OUT ),
        .E   ( MSS_ADLIB_INST_SPI1_SS0_MGPIO13A_OE ),
        // Outputs
        .Y   ( SPI_1_SS0_PAD_Y ),
        // Inouts
        .PAD ( SPI_1_SS0 ) 
        );

//--------BIBUF
BIBUF USB_ULPI_DATA_0_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_RGMII_RXD0_RMII_RXD0_USBB_DATA0_OUT ),
        .E   ( MSS_ADLIB_INST_RGMII_RXD0_RMII_RXD0_USBB_DATA0_OE ),
        // Outputs
        .Y   ( USB_ULPI_DATA_0_PAD_Y ),
        // Inouts
        .PAD ( USB_ULPI_DATA[0:0] ) 
        );

//--------BIBUF
BIBUF USB_ULPI_DATA_1_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_RGMII_RXD1_RMII_RXD1_USBB_DATA1_OUT ),
        .E   ( MSS_ADLIB_INST_RGMII_RXD1_RMII_RXD1_USBB_DATA1_OE ),
        // Outputs
        .Y   ( USB_ULPI_DATA_1_PAD_Y ),
        // Inouts
        .PAD ( USB_ULPI_DATA[1:1] ) 
        );

//--------BIBUF
BIBUF USB_ULPI_DATA_2_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OUT ),
        .E   ( MSS_ADLIB_INST_RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OE ),
        // Outputs
        .Y   ( USB_ULPI_DATA_2_PAD_Y ),
        // Inouts
        .PAD ( USB_ULPI_DATA[2:2] ) 
        );

//--------BIBUF
BIBUF USB_ULPI_DATA_3_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OUT ),
        .E   ( MSS_ADLIB_INST_RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OE ),
        // Outputs
        .Y   ( USB_ULPI_DATA_3_PAD_Y ),
        // Inouts
        .PAD ( USB_ULPI_DATA[3:3] ) 
        );

//--------BIBUF
BIBUF USB_ULPI_DATA_4_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_RGMII_RXD3_USBB_DATA4_OUT ),
        .E   ( MSS_ADLIB_INST_RGMII_RXD3_USBB_DATA4_OE ),
        // Outputs
        .Y   ( USB_ULPI_DATA_4_PAD_Y ),
        // Inouts
        .PAD ( USB_ULPI_DATA[4:4] ) 
        );

//--------BIBUF
BIBUF USB_ULPI_DATA_5_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_RGMII_TXD2_USBB_DATA5_OUT ),
        .E   ( MSS_ADLIB_INST_RGMII_TXD2_USBB_DATA5_OE ),
        // Outputs
        .Y   ( USB_ULPI_DATA_5_PAD_Y ),
        // Inouts
        .PAD ( USB_ULPI_DATA[5:5] ) 
        );

//--------BIBUF
BIBUF USB_ULPI_DATA_6_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_RGMII_TXD3_USBB_DATA6_OUT ),
        .E   ( MSS_ADLIB_INST_RGMII_TXD3_USBB_DATA6_OE ),
        // Outputs
        .Y   ( USB_ULPI_DATA_6_PAD_Y ),
        // Inouts
        .PAD ( USB_ULPI_DATA[6:6] ) 
        );

//--------BIBUF
BIBUF USB_ULPI_DATA_7_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT ),
        .E   ( MSS_ADLIB_INST_RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE ),
        // Outputs
        .Y   ( USB_ULPI_DATA_7_PAD_Y ),
        // Inouts
        .PAD ( USB_ULPI_DATA[7:7] ) 
        );

//--------INBUF
INBUF USB_ULPI_DIR_PAD(
        // Inputs
        .PAD ( USB_ULPI_DIR ),
        // Outputs
        .Y   ( USB_ULPI_DIR_PAD_Y ) 
        );

//--------INBUF
INBUF USB_ULPI_NXT_PAD(
        // Inputs
        .PAD ( USB_ULPI_NXT ),
        // Outputs
        .Y   ( USB_ULPI_NXT_PAD_Y ) 
        );

//--------TRIBUFF
TRIBUFF USB_ULPI_STP_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_RGMII_TXD1_RMII_TXD1_USBB_STP_OUT ),
        .E   ( MSS_ADLIB_INST_RGMII_TXD1_RMII_TXD1_USBB_STP_OE ),
        // Outputs
        .PAD ( USB_ULPI_STP_net_0 ) 
        );

//--------INBUF
INBUF USB_ULPI_XCLK_PAD(
        // Inputs
        .PAD ( USB_ULPI_XCLK ),
        // Outputs
        .Y   ( USB_ULPI_XCLK_PAD_Y ) 
        );


endmodule
