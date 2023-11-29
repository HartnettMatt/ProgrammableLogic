`timescale 1 ns/100 ps
// Version: v12.6 12.900.20.24
// File used only for Simulation


module sdf_IOPAD_TRI(
       PAD,
       D,
       E
    );
output PAD;
input  D;
input  E;

    wire NET_OIN_VDD, NET_EIN_VDD;
    
    IOPAD_TRI_VDDI U_VCCI (.OIN_VDD(NET_OIN_VDD), .EIN_VDD(NET_EIN_VDD)
        , .PAD_P(PAD));
    IOPAD_VDD U_VCCA (.OIN_P(D), .EIN_P(E), .IOUT_VDD(), .OIN_VDD(
        NET_OIN_VDD), .EIN_VDD(NET_EIN_VDD), .IOUT_IN());
    
endmodule


module sdf_IOPAD_IN(
       PAD,
       Y
    );
input  PAD;
output Y;

    wire NET_IOUT_VDD, NET_IOUT_IN, ADLIB_GND;
    wire GND_power_net1;
    assign ADLIB_GND = GND_power_net1;
    
    IOPAD_IN_VDDI U_VCCI (.PAD_P(PAD), .IOUT_VDD(NET_IOUT_VDD));
    IOPAD_DELAY U_DELAY (.IOUT_IN(NET_IOUT_IN), .IOUT_P(Y));
    IOPAD_VDD U_VCCA (.OIN_P(ADLIB_GND), .EIN_P(ADLIB_GND), .IOUT_VDD(
        NET_IOUT_VDD), .OIN_VDD(), .EIN_VDD(), .IOUT_IN(NET_IOUT_IN));
    GND GND_power_inst1 (.Y(GND_power_net1));
    
endmodule


module CDC3FF(
       Aclk,
       Bclk,
       reset,
       Dout
    );
input  Aclk;
input  Bclk;
input  reset;
output Dout;

    wire data_Z, VCC, GND, FF1_d_Z, FF2_d_Z, Aclk_c, 
        \Bclk_ibuf_RNI1GRC/U0_YNn , reset_c, Dout_c, data_i, 
        ff_to_start_net, Bclk_ibuf_Z, \Bclk_ibuf/U0/YIN , 
        \reset_ibuf/U0/YIN1 , \reset_ibuf/U0/YIN , 
        \Dout_obuf/U0/DOUT1 , \Dout_obuf/U0/DOUT , 
        \Dout_obuf/U0/EOUT1 , \Dout_obuf/U0/EOUT , \Aclk_ibuf/U0/YIN1 , 
        \Aclk_ibuf/U0/YIN , Bclk_c, AFLSDF_VCC, AFLSDF_GND, 
        AFLSDF_INV_0_net_1, AFLSDF_INV_1_net_1, AFLSDF_INV_2_net_1, 
        AFLSDF_INV_3_net_1, AFLSDF_INV_4_net_1;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOTRI_OB_EB \Dout_obuf/U0/U_IOTRI  (.D(Dout_c), .E(VCC), .DOUT(
        \Dout_obuf/U0/DOUT1 ), .EOUT(\Dout_obuf/U0/EOUT1 ));
    IOIN_IB \Aclk_ibuf/U0/U_IOIN  (.YIN(\Aclk_ibuf/U0/YIN ), .E(GND), 
        .Y(Aclk_c));
    IOINFF_BYPASS \reset_ibuf/U0/U_IOINFF  (.A(\reset_ibuf/U0/YIN1 ), 
        .Y(\reset_ibuf/U0/YIN ));
    SLE FF2_d (.D(FF1_d_Z), .CLK(Bclk_c), .EN(VCC), .ALn(
        AFLSDF_INV_0_net_1), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(FF2_d_Z));
    SLE FF1_d (.D(data_Z), .CLK(Bclk_c), .EN(VCC), .ALn(
        AFLSDF_INV_1_net_1), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(FF1_d_Z));
    sdf_IOPAD_TRI \Dout_obuf/U0/U_IOPAD  (.PAD(Dout), .D(
        \Dout_obuf/U0/DOUT ), .E(\Dout_obuf/U0/EOUT ));
    GB_NG Bclk_ibuf_RNI1GRC (.An(AFLSDF_INV_2_net_1), .ENn(GND), .YNn(
        \Bclk_ibuf_RNI1GRC/U0_YNn ), .YSn());
    INV_BA AFLSDF_INV_1 (.A(reset_c), .Y(AFLSDF_INV_1_net_1));
    IP_INTERFACE ip_interface_inst (.A(VCC), .B(ff_to_start_net), .C(
        VCC), .IPA(), .IPB(), .IPC());
    INV_BA AFLSDF_INV_4 (.A(reset_c), .Y(AFLSDF_INV_4_net_1));
    SLE data (.D(data_i), .CLK(Aclk_c), .EN(VCC), .ALn(
        AFLSDF_INV_3_net_1), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(data_Z));
    CFG1 #( .INIT(2'h1) )  data_RNO (.A(data_Z), .Y(data_i));
    INV_BA AFLSDF_INV_3 (.A(reset_c), .Y(AFLSDF_INV_3_net_1));
    INV_BA AFLSDF_INV_0 (.A(reset_c), .Y(AFLSDF_INV_0_net_1));
    INV_BA AFLSDF_INV_2 (.A(Bclk_ibuf_Z), .Y(AFLSDF_INV_2_net_1));
    IOINFF_BYPASS \Aclk_ibuf/U0/U_IOINFF  (.A(\Aclk_ibuf/U0/YIN1 ), .Y(
        \Aclk_ibuf/U0/YIN ));
    IOOUTFF_BYPASS \Dout_obuf/U0/U_IOOUTFF  (.A(\Dout_obuf/U0/DOUT1 ), 
        .Y(\Dout_obuf/U0/DOUT ));
    sdf_IOPAD_IN \Bclk_ibuf/U0/U_IOPAD  (.PAD(Bclk), .Y(Bclk_ibuf_Z));
    IOINFF_BYPASS \Bclk_ibuf/U0/U_IOINFF  (.A(Bclk_ibuf_Z), .Y(
        \Bclk_ibuf/U0/YIN ));
    sdf_IOPAD_IN \reset_ibuf/U0/U_IOPAD  (.PAD(reset), .Y(
        \reset_ibuf/U0/YIN1 ));
    SLE Dout_Z (.D(FF2_d_Z), .CLK(Bclk_c), .EN(VCC), .ALn(
        AFLSDF_INV_4_net_1), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), 
        .Q(Dout_c));
    RGB_NG \Bclk_ibuf_RNI1GRC/U0_RGB1  (.An(\Bclk_ibuf_RNI1GRC/U0_YNn )
        , .ENn(GND), .YL(Bclk_c), .YR());
    IOENFF_BYPASS \Dout_obuf/U0/U_IOENFF  (.A(\Dout_obuf/U0/EOUT1 ), 
        .Y(\Dout_obuf/U0/EOUT ));
    FLASH_FREEZE \flash_freeze_inst/INST_FLASH_FREEZE_IP  (
        .FF_TO_START(ff_to_start_net), .FF_DONE());
    IOIN_IB \reset_ibuf/U0/U_IOIN  (.YIN(\reset_ibuf/U0/YIN ), .E(GND), 
        .Y(reset_c));
    sdf_IOPAD_IN \Aclk_ibuf/U0/U_IOPAD  (.PAD(Aclk), .Y(
        \Aclk_ibuf/U0/YIN1 ));
    IOIN_IB \Bclk_ibuf/U0/U_IOIN  (.YIN(\Bclk_ibuf/U0/YIN ), .E(GND), 
        .Y());
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
