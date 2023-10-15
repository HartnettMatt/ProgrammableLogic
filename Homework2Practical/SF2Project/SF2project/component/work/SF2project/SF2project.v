//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Oct 14 18:34:45 2023
// Version: v12.6 12.900.20.24
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// SF2project
module SF2project(
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
wire          I2C_0_SCL;
wire          I2C_0_SDA;
wire          I2C_1_SCL;
wire          I2C_1_SDA;
wire          MAC_MII_COL;
wire          MAC_MII_CRS;
wire          MAC_MII_RX_CLK;
wire          MAC_MII_RX_DV;
wire          MAC_MII_RX_ER;
wire   [3:0]  MAC_MII_RXD;
wire          MAC_MII_TX_CLK;
wire          MAC_MII_TX_EN_net_0;
wire          MAC_MII_TX_ER_net_0;
wire   [3:0]  MAC_MII_TXD_net_0;
wire          MCCC_CLK_BASE;
wire   [15:0] MDDR_ADDR_net_0;
wire   [2:0]  MDDR_BA_net_0;
wire          MDDR_CAS_N_net_0;
wire          MDDR_CKE_net_0;
wire          MDDR_CLK_net_0;
wire          MDDR_CLK_N_net_0;
wire          MDDR_CS_N_net_0;
wire   [1:0]  MDDR_DM_RDQS;
wire   [15:0] MDDR_DQ;
wire   [1:0]  MDDR_DQS;
wire   [1:0]  MDDR_DQS_N;
wire          MDDR_DQS_TMATCH_0_IN;
wire          MDDR_DQS_TMATCH_0_OUT_net_0;
wire          MDDR_ODT_net_0;
wire          MDDR_RAS_N_net_0;
wire          MDDR_RESET_N_net_0;
wire          MDDR_WE_N_net_0;
wire          MMUART_0_RXD;
wire          MMUART_0_TXD_net_0;
wire          MMUART_1_RXD;
wire          MMUART_1_TXD_net_0;
wire          SPI_0_CLK;
wire          SPI_0_DI;
wire          SPI_0_DO_net_0;
wire          SPI_0_SS0;
wire          SPI_1_CLK;
wire          SPI_1_DI;
wire          SPI_1_DO_net_0;
wire          SPI_1_SS0;
wire   [7:0]  USB_ULPI_DATA;
wire          USB_ULPI_DIR;
wire          USB_ULPI_NXT;
wire          USB_ULPI_STP_net_0;
wire          USB_ULPI_XCLK;
wire          SPI_0_DO_net_1;
wire          SPI_1_DO_net_1;
wire          MMUART_1_TXD_net_1;
wire          MMUART_0_TXD_net_1;
wire          USB_ULPI_STP_net_1;
wire          MDDR_DQS_TMATCH_0_OUT_net_1;
wire          MDDR_CAS_N_net_1;
wire          MDDR_CLK_net_1;
wire          MDDR_CLK_N_net_1;
wire          MDDR_CKE_net_1;
wire          MDDR_CS_N_net_1;
wire          MDDR_ODT_net_1;
wire          MDDR_RAS_N_net_1;
wire          MDDR_RESET_N_net_1;
wire          MDDR_WE_N_net_1;
wire   [15:0] MDDR_ADDR_net_1;
wire   [2:0]  MDDR_BA_net_1;
wire   [3:0]  MAC_MII_TXD_net_1;
wire          MAC_MII_TX_EN_net_1;
wire          MAC_MII_TX_ER_net_1;
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
assign MDDR_ADDR_net_1             = MDDR_ADDR_net_0;
assign MDDR_ADDR[15:0]             = MDDR_ADDR_net_1;
assign MDDR_BA_net_1               = MDDR_BA_net_0;
assign MDDR_BA[2:0]                = MDDR_BA_net_1;
assign MAC_MII_TXD_net_1           = MAC_MII_TXD_net_0;
assign MAC_MII_TXD[3:0]            = MAC_MII_TXD_net_1;
assign MAC_MII_TX_EN_net_1         = MAC_MII_TX_EN_net_0;
assign MAC_MII_TX_EN               = MAC_MII_TX_EN_net_1;
assign MAC_MII_TX_ER_net_1         = MAC_MII_TX_ER_net_0;
assign MAC_MII_TX_ER               = MAC_MII_TX_ER_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------SF2project_MSS
SF2project_MSS SF2project_MSS_0(
        // Inputs
        .SPI_0_DI              ( SPI_0_DI ),
        .SPI_1_DI              ( SPI_1_DI ),
        .MCCC_CLK_BASE         ( MCCC_CLK_BASE ),
        .MMUART_1_RXD          ( MMUART_1_RXD ),
        .MMUART_0_RXD          ( MMUART_0_RXD ),
        .MAC_MII_RX_ER         ( MAC_MII_RX_ER ),
        .MAC_MII_RX_DV         ( MAC_MII_RX_DV ),
        .MAC_MII_CRS           ( MAC_MII_CRS ),
        .MAC_MII_COL           ( MAC_MII_COL ),
        .MAC_MII_RX_CLK        ( MAC_MII_RX_CLK ),
        .MAC_MII_TX_CLK        ( MAC_MII_TX_CLK ),
        .USB_ULPI_DIR          ( USB_ULPI_DIR ),
        .USB_ULPI_NXT          ( USB_ULPI_NXT ),
        .MDDR_DQS_TMATCH_0_IN  ( MDDR_DQS_TMATCH_0_IN ),
        .USB_ULPI_XCLK         ( USB_ULPI_XCLK ),
        .MAC_MII_RXD           ( MAC_MII_RXD ),
        // Outputs
        .SPI_0_DO              ( SPI_0_DO_net_0 ),
        .SPI_1_DO              ( SPI_1_DO_net_0 ),
        .MMUART_1_TXD          ( MMUART_1_TXD_net_0 ),
        .MMUART_0_TXD          ( MMUART_0_TXD_net_0 ),
        .MAC_MII_TX_EN         ( MAC_MII_TX_EN_net_0 ),
        .MAC_MII_TX_ER         ( MAC_MII_TX_ER_net_0 ),
        .USB_ULPI_STP          ( USB_ULPI_STP_net_0 ),
        .MDDR_DQS_TMATCH_0_OUT ( MDDR_DQS_TMATCH_0_OUT_net_0 ),
        .MDDR_CAS_N            ( MDDR_CAS_N_net_0 ),
        .MDDR_CLK              ( MDDR_CLK_net_0 ),
        .MDDR_CLK_N            ( MDDR_CLK_N_net_0 ),
        .MDDR_CKE              ( MDDR_CKE_net_0 ),
        .MDDR_CS_N             ( MDDR_CS_N_net_0 ),
        .MDDR_ODT              ( MDDR_ODT_net_0 ),
        .MDDR_RAS_N            ( MDDR_RAS_N_net_0 ),
        .MDDR_RESET_N          ( MDDR_RESET_N_net_0 ),
        .MDDR_WE_N             ( MDDR_WE_N_net_0 ),
        .MAC_MII_TXD           ( MAC_MII_TXD_net_0 ),
        .MDDR_ADDR             ( MDDR_ADDR_net_0 ),
        .MDDR_BA               ( MDDR_BA_net_0 ),
        // Inouts
        .I2C_0_SDA             ( I2C_0_SDA ),
        .I2C_0_SCL             ( I2C_0_SCL ),
        .I2C_1_SDA             ( I2C_1_SDA ),
        .I2C_1_SCL             ( I2C_1_SCL ),
        .SPI_0_CLK             ( SPI_0_CLK ),
        .SPI_0_SS0             ( SPI_0_SS0 ),
        .SPI_1_CLK             ( SPI_1_CLK ),
        .SPI_1_SS0             ( SPI_1_SS0 ),
        .USB_ULPI_DATA         ( USB_ULPI_DATA ),
        .MDDR_DM_RDQS          ( MDDR_DM_RDQS ),
        .MDDR_DQ               ( MDDR_DQ ),
        .MDDR_DQS              ( MDDR_DQS ),
        .MDDR_DQS_N            ( MDDR_DQS_N ) 
        );


endmodule
