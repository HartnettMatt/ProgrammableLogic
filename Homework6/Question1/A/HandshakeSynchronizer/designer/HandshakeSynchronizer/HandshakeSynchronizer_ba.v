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


module HandshakeSynchronizer(
       clkA,
       clkB,
       reset,
       enable,
       count,
       Dout
    );
input  clkA;
input  clkB;
input  reset;
input  enable;
output [7:0] count;
output [7:0] Dout;

    wire \transfer[7] , \transfer[6] , \transfer[5] , \transfer[4] , 
        \transfer[3] , \transfer[2] , \transfer[1] , \transfer[0] , 
        \sink_out[7] , \sink_out[6] , \sink_out[5] , \sink_out[4] , 
        \sink_out[3] , \sink_out[2] , \sink_out[1] , \sink_out[0] , 
        \count_c[7] , \count_c[6] , \count_c[5] , \count_c[4] , 
        \count_c[3] , \count_c[2] , \count_c[1] , \count_c[0] , 
        \Dout_c[7] , \Dout_c[6] , \Dout_c[5] , \Dout_c[4] , 
        \Dout_c[3] , \Dout_c[2] , \Dout_c[1] , \Dout_c[0] , 
        \count_s[6] , \count_s[5] , \count_s[4] , \count_s[3] , 
        \count_s[2] , \count_s[1] , \count_s[0] , \count_cry_Z[6] , 
        \count_cry_Z[5] , \count_cry_Z[4] , \count_cry_Z[3] , 
        \count_cry_Z[2] , \count_cry_Z[1] , \count_s_Z[7] , req_source, 
        \U0.ack , \U1.req , ack_sink, transfer_enable, req_sync_Z, 
        ack_sync_Z, Dout4_Z, counte_c, count_s_9_FCO, 
        \U0/data_out_5_Z[7] , \U0/data_out_5_Z[6] , 
        \U0/data_out_5_Z[5] , \U0/data_out_5_Z[4] , 
        \U0/data_out_5_Z[3] , \U0/data_out_5_Z[2] , 
        \U0/data_out_5_Z[1] , \U0/data_out_5_Z[0] , \U0/state_Z[1] , 
        \U0/state_Z[0] , \U0/state_ns[1] , \U0/state_ns[0] , 
        \U0/N_22_i , \U0/un1_state_3_0_Z , \U0/data_out7_0_a2_Z , 
        \U1/data_out_4_Z[7] , \U1/data_out_4_Z[6] , 
        \U1/data_out_4_Z[5] , \U1/data_out_4_Z[4] , 
        \U1/data_out_4_Z[3] , \U1/data_out_4_Z[2] , 
        \U1/data_out_4_Z[1] , \U1/data_out_4_Z[0] , \U1/state_Z[1] , 
        \U1/state_Z[0] , \U1/state_ns[1] , \U1/state_ns[0] , 
        \U1/state_4_d , \U1/un1_ack_0_sqmuxa_1_0_Z , \U1/N_21_i_Z , 
        \U1/N_24_i , ff_to_start_net, clkB_ibuf_Z, \clkB_ibuf/U0/YIN , 
        \enable_ibuf/U0/YIN1 , \enable_ibuf/U0/YIN , clkA_ibuf_Z, 
        \clkA_ibuf/U0/YIN , \Dout_obuf[0]/U0/DOUT1 , 
        \Dout_obuf[0]/U0/DOUT , \Dout_obuf[0]/U0/EOUT1 , 
        \Dout_obuf[0]/U0/EOUT , \count_obuf[3]/U0/DOUT1 , 
        \count_obuf[3]/U0/DOUT , \count_obuf[3]/U0/EOUT1 , 
        \count_obuf[3]/U0/EOUT , \Dout_obuf[7]/U0/DOUT1 , 
        \Dout_obuf[7]/U0/DOUT , \Dout_obuf[7]/U0/EOUT1 , 
        \Dout_obuf[7]/U0/EOUT , \Dout_obuf[5]/U0/DOUT1 , 
        \Dout_obuf[5]/U0/DOUT , \Dout_obuf[5]/U0/EOUT1 , 
        \Dout_obuf[5]/U0/EOUT , \count_obuf[2]/U0/DOUT1 , 
        \count_obuf[2]/U0/DOUT , \count_obuf[2]/U0/EOUT1 , 
        \count_obuf[2]/U0/EOUT , \count_obuf[0]/U0/DOUT1 , 
        \count_obuf[0]/U0/DOUT , \count_obuf[0]/U0/EOUT1 , 
        \count_obuf[0]/U0/EOUT , \Dout_obuf[6]/U0/DOUT1 , 
        \Dout_obuf[6]/U0/DOUT , \Dout_obuf[6]/U0/EOUT1 , 
        \Dout_obuf[6]/U0/EOUT , \Dout_obuf[2]/U0/DOUT1 , 
        \Dout_obuf[2]/U0/DOUT , \Dout_obuf[2]/U0/EOUT1 , 
        \Dout_obuf[2]/U0/EOUT , \count_obuf[7]/U0/DOUT1 , 
        \count_obuf[7]/U0/DOUT , \count_obuf[7]/U0/EOUT1 , 
        \count_obuf[7]/U0/EOUT , \Dout_obuf[4]/U0/DOUT1 , 
        \Dout_obuf[4]/U0/DOUT , \Dout_obuf[4]/U0/EOUT1 , 
        \Dout_obuf[4]/U0/EOUT , \count_obuf[6]/U0/DOUT1 , 
        \count_obuf[6]/U0/DOUT , \count_obuf[6]/U0/EOUT1 , 
        \count_obuf[6]/U0/EOUT , \Dout_obuf[1]/U0/DOUT1 , 
        \Dout_obuf[1]/U0/DOUT , \Dout_obuf[1]/U0/EOUT1 , 
        \Dout_obuf[1]/U0/EOUT , \count_obuf[1]/U0/DOUT1 , 
        \count_obuf[1]/U0/DOUT , \count_obuf[1]/U0/EOUT1 , 
        \count_obuf[1]/U0/EOUT , \count_obuf[5]/U0/DOUT1 , 
        \count_obuf[5]/U0/DOUT , \count_obuf[5]/U0/EOUT1 , 
        \count_obuf[5]/U0/EOUT , \count_obuf[4]/U0/DOUT1 , 
        \count_obuf[4]/U0/DOUT , \count_obuf[4]/U0/EOUT1 , 
        \count_obuf[4]/U0/EOUT , reset_ibuf_Z, \reset_ibuf/U0/YIN , 
        \Dout_obuf[3]/U0/DOUT1 , \Dout_obuf[3]/U0/DOUT , 
        \Dout_obuf[3]/U0/EOUT1 , \Dout_obuf[3]/U0/EOUT , clkA_c, 
        clkB_c, reset_c, \clkB_ibuf_RNI14F7/U0_RGB1_RGB0_rgbl_net_1 , 
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB1_rgbl_net_1 , 
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB2_rgbl_net_1 , 
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB3_rgbl_net_1 , 
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB4_rgbl_net_1 , 
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB5_rgbl_net_1 , 
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB6_rgbl_net_1 , 
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB7_rgbl_net_1 , 
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB0_rgbl_net_1 , 
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB1_rgbl_net_1 , 
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB2_rgbl_net_1 , 
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 , 
        \reset_ibuf_RNI8255/U0_RGB1_RGB1_rgbl_net_1 , 
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 , 
        \reset_ibuf_RNI8255/U0_RGB1_RGB3_rgbl_net_1 , 
        \reset_ibuf_RNI8255/U0_RGB1_RGB4_rgbl_net_1 , 
        \reset_ibuf_RNI8255/U0_RGB1_RGB5_rgbl_net_1 , 
        \reset_ibuf_RNI8255/U0_RGB1_RGB6_rgbl_net_1 , 
        \reset_ibuf_RNI8255/U0_RGB1_RGB7_rgbl_net_1 , 
        \clkA_ibuf_RNI0V4D/U0_YNn_GSouth , 
        \clkB_ibuf_RNI14F7/U0_YNn_GSouth , 
        \reset_ibuf_RNI8255/U0_YNn_GSouth , ADLIB_GND0, ADLIB_VCC1, 
        NET_CC_CONFIG2, NET_CC_CONFIG3, NET_CC_CONFIG4, NET_CC_CONFIG5, 
        NET_CC_CONFIG6, NET_CC_CONFIG7, NET_CC_CONFIG8, NET_CC_CONFIG9, 
        NET_CC_CONFIG10, NET_CC_CONFIG11, NET_CC_CONFIG12, 
        NET_CC_CONFIG13, NET_CC_CONFIG14, NET_CC_CONFIG15, 
        NET_CC_CONFIG16, NET_CC_CONFIG17, NET_CC_CONFIG18, 
        NET_CC_CONFIG19, NET_CC_CONFIG20, NET_CC_CONFIG21, 
        NET_CC_CONFIG22, NET_CC_CONFIG23, NET_CC_CONFIG24, 
        NET_CC_CONFIG25, AFLSDF_VCC, AFLSDF_GND, AFLSDF_INV_0_net_1, 
        AFLSDF_INV_1_net_1, AFLSDF_INV_2_net_1, AFLSDF_INV_3_net_1, 
        AFLSDF_INV_4_net_1, AFLSDF_INV_5_net_1, AFLSDF_INV_6_net_1, 
        AFLSDF_INV_7_net_1, AFLSDF_INV_8_net_1, AFLSDF_INV_9_net_1, 
        AFLSDF_INV_10_net_1, AFLSDF_INV_11_net_1, AFLSDF_INV_12_net_1, 
        AFLSDF_INV_13_net_1, AFLSDF_INV_14_net_1, AFLSDF_INV_15_net_1, 
        AFLSDF_INV_16_net_1, AFLSDF_INV_17_net_1, AFLSDF_INV_18_net_1, 
        AFLSDF_INV_19_net_1, AFLSDF_INV_20_net_1, AFLSDF_INV_21_net_1, 
        AFLSDF_INV_22_net_1, AFLSDF_INV_23_net_1, AFLSDF_INV_24_net_1, 
        AFLSDF_INV_25_net_1, AFLSDF_INV_26_net_1, AFLSDF_INV_27_net_1, 
        AFLSDF_INV_28_net_1, AFLSDF_INV_29_net_1, AFLSDF_INV_30_net_1, 
        AFLSDF_INV_31_net_1, AFLSDF_INV_32_net_1, AFLSDF_INV_33_net_1, 
        AFLSDF_INV_34_net_1, AFLSDF_INV_35_net_1, AFLSDF_INV_36_net_1, 
        AFLSDF_INV_37_net_1, AFLSDF_INV_38_net_1, AFLSDF_INV_39_net_1, 
        AFLSDF_INV_40_net_1, AFLSDF_INV_41_net_1, AFLSDF_INV_42_net_1, 
        AFLSDF_INV_43_net_1, AFLSDF_INV_44_net_1, AFLSDF_INV_45_net_1, 
        AFLSDF_INV_46_net_1, AFLSDF_INV_47_net_1, AFLSDF_INV_48_net_1, 
        AFLSDF_INV_49_net_1, AFLSDF_INV_50_net_1, AFLSDF_INV_51_net_1, 
        AFLSDF_INV_52_net_1, AFLSDF_INV_53_net_1;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign ADLIB_GND0 = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign ADLIB_VCC1 = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOENFF_BYPASS \count_obuf[0]/U0/U_IOENFF  (.A(
        \count_obuf[0]/U0/EOUT1 ), .Y(\count_obuf[0]/U0/EOUT ));
    IOTRI_OB_EB \count_obuf[7]/U0/U_IOTRI  (.D(\count_c[7] ), .E(
        ADLIB_VCC1), .DOUT(\count_obuf[7]/U0/DOUT1 ), .EOUT(
        \count_obuf[7]/U0/EOUT1 ));
    IOTRI_OB_EB \Dout_obuf[5]/U0/U_IOTRI  (.D(\Dout_c[5] ), .E(
        ADLIB_VCC1), .DOUT(\Dout_obuf[5]/U0/DOUT1 ), .EOUT(
        \Dout_obuf[5]/U0/EOUT1 ));
    SLE \count_Z[1]  (.D(\count_s[1] ), .CLK(clkA_c), .EN(counte_c), 
        .ALn(AFLSDF_INV_0_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\count_c[1] ));
    INV_BA AFLSDF_INV_20 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_20_net_1));
    SLE \U0/state[1]  (.D(\U0/state_ns[1] ), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB1_rgbl_net_1 ), .EN(ADLIB_VCC1), 
        .ALn(AFLSDF_INV_1_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\U0/state_Z[1] ));
    SLE \U0/data_out[0]  (.D(\U0/data_out_5_Z[0] ), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB2_rgbl_net_1 ), .EN(\U0/N_22_i ), 
        .ALn(AFLSDF_INV_2_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\transfer[0] ));
    sdf_IOPAD_TRI \count_obuf[6]/U0/U_IOPAD  (.PAD(count[6]), .D(
        \count_obuf[6]/U0/DOUT ), .E(\count_obuf[6]/U0/EOUT ));
    SLE \U1/data_out[0]  (.D(\U1/data_out_4_Z[0] ), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB2_rgbl_net_1 ), .EN(
        \U1/state_4_d ), .ALn(AFLSDF_INV_3_net_1), .ADn(ADLIB_VCC1), 
        .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(
        \sink_out[0] ));
    CFG2 #( .INIT(4'h8) )  \U0/data_out_5[0]  (.A(
        \U0/data_out7_0_a2_Z ), .B(\count_c[0] ), .Y(
        \U0/data_out_5_Z[0] ));
    INV_BA AFLSDF_INV_37 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .Y(
        AFLSDF_INV_37_net_1));
    SLE ack_source (.D(ack_sync_Z), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB0_rgbl_net_1 ), .EN(ADLIB_VCC1), 
        .ALn(AFLSDF_INV_4_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\U0.ack ));
    SLE \U1/transfer_enable  (.D(\U1/N_21_i_Z ), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB0_rgbl_net_1 ), .EN(\U1/N_24_i ), 
        .ALn(AFLSDF_INV_5_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(transfer_enable));
    IOENFF_BYPASS \Dout_obuf[5]/U0/U_IOENFF  (.A(
        \Dout_obuf[5]/U0/EOUT1 ), .Y(\Dout_obuf[5]/U0/EOUT ));
    IOTRI_OB_EB \count_obuf[5]/U0/U_IOTRI  (.D(\count_c[5] ), .E(
        ADLIB_VCC1), .DOUT(\count_obuf[5]/U0/DOUT1 ), .EOUT(
        \count_obuf[5]/U0/EOUT1 ));
    IOTRI_OB_EB \Dout_obuf[3]/U0/U_IOTRI  (.D(\Dout_c[3] ), .E(
        ADLIB_VCC1), .DOUT(\Dout_obuf[3]/U0/DOUT1 ), .EOUT(
        \Dout_obuf[3]/U0/EOUT1 ));
    INV_BA AFLSDF_INV_53 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_53_net_1));
    INV_BA AFLSDF_INV_10 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .Y(
        AFLSDF_INV_10_net_1));
    CFG2 #( .INIT(4'h8) )  \U1/data_out_4[0]  (.A(\transfer[0] ), .B(
        \U1/N_21_i_Z ), .Y(\U1/data_out_4_Z[0] ));
    RGB_NG \clkB_ibuf_RNI14F7/U0_RGB1_RGB0  (.An(
        \clkB_ibuf_RNI14F7/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB0_rgbl_net_1 ), .YR());
    INV_BA AFLSDF_INV_47 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB3_rgbl_net_1 ), .Y(
        AFLSDF_INV_47_net_1));
    sdf_IOPAD_IN \clkB_ibuf/U0/U_IOPAD  (.PAD(clkB), .Y(clkB_ibuf_Z));
    CFG2 #( .INIT(4'h8) )  \U1/data_out_4[4]  (.A(\transfer[4] ), .B(
        \U1/N_21_i_Z ), .Y(\U1/data_out_4_Z[4] ));
    ARI1_CC #( .INIT(20'h4AA00) )  \count_cry[2]  (.A(ADLIB_VCC1), .B(
        \count_c[2] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(
        \count_cry_Z[1] ), .S(\count_s[2] ), .Y(), .FCO(
        \count_cry_Z[2] ), .CC(NET_CC_CONFIG10), .P(NET_CC_CONFIG8), 
        .UB(NET_CC_CONFIG9));
    IOOUTFF_BYPASS \Dout_obuf[0]/U0/U_IOOUTFF  (.A(
        \Dout_obuf[0]/U0/DOUT1 ), .Y(\Dout_obuf[0]/U0/DOUT ));
    sdf_IOPAD_IN \enable_ibuf/U0/U_IOPAD  (.PAD(enable), .Y(
        \enable_ibuf/U0/YIN1 ));
    CFG2 #( .INIT(4'h8) )  \U0/data_out_5[4]  (.A(
        \U0/data_out7_0_a2_Z ), .B(\count_c[4] ), .Y(
        \U0/data_out_5_Z[4] ));
    sdf_IOPAD_IN \reset_ibuf/U0/U_IOPAD  (.PAD(reset), .Y(reset_ibuf_Z)
        );
    IOOUTFF_BYPASS \Dout_obuf[6]/U0/U_IOOUTFF  (.A(
        \Dout_obuf[6]/U0/DOUT1 ), .Y(\Dout_obuf[6]/U0/DOUT ));
    SLE \U0/data_out[2]  (.D(\U0/data_out_5_Z[2] ), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB2_rgbl_net_1 ), .EN(\U0/N_22_i ), 
        .ALn(AFLSDF_INV_6_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\transfer[2] ));
    SLE \U1/data_out[2]  (.D(\U1/data_out_4_Z[2] ), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB2_rgbl_net_1 ), .EN(
        \U1/state_4_d ), .ALn(AFLSDF_INV_7_net_1), .ADn(ADLIB_VCC1), 
        .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(
        \sink_out[2] ));
    IOTRI_OB_EB \count_obuf[4]/U0/U_IOTRI  (.D(\count_c[4] ), .E(
        ADLIB_VCC1), .DOUT(\count_obuf[4]/U0/DOUT1 ), .EOUT(
        \count_obuf[4]/U0/EOUT1 ));
    CFG4 #( .INIT(16'hF3F7) )  \U1/un1_ack_0_sqmuxa_1_0  (.A(
        \U1/state_Z[1] ), .B(\U1.req ), .C(\U1/state_Z[0] ), .D(
        counte_c), .Y(\U1/un1_ack_0_sqmuxa_1_0_Z ));
    RGB_NG \clkA_ibuf_RNI0V4D/U0_RGB1_RGB0  (.An(
        \clkA_ibuf_RNI0V4D/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB0_rgbl_net_1 ), .YR());
    CFG2 #( .INIT(4'h8) )  \U0/data_out_5[5]  (.A(
        \U0/data_out7_0_a2_Z ), .B(\count_c[5] ), .Y(
        \U0/data_out_5_Z[5] ));
    CFG2 #( .INIT(4'h8) )  \U1/N_21_i  (.A(counte_c), .B(\U1.req ), .Y(
        \U1/N_21_i_Z ));
    IOOEFF \Dout_Z[6]  (.Dn(AFLSDF_INV_8_net_1), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB4_rgbl_net_1 ), .EN(Dout4_Z), 
        .ALn(AFLSDF_INV_9_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .SDR(ADLIB_VCC1), .Q(
        \Dout_c[6] ));
    INV_BA AFLSDF_INV_5 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .Y(
        AFLSDF_INV_5_net_1));
    INV_BA AFLSDF_INV_27 (.A(reset_c), .Y(AFLSDF_INV_27_net_1));
    INV_BA AFLSDF_INV_0 (.A(reset_c), .Y(AFLSDF_INV_0_net_1));
    CFG2 #( .INIT(4'h8) )  \U1/data_out_4[3]  (.A(\transfer[3] ), .B(
        \U1/N_21_i_Z ), .Y(\U1/data_out_4_Z[3] ));
    SLE \U1/state[1]  (.D(\U1/state_ns[1] ), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB0_rgbl_net_1 ), .EN(ADLIB_VCC1), 
        .ALn(AFLSDF_INV_10_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\U1/state_Z[1] ));
    INV_BA AFLSDF_INV_32 (.A(reset_c), .Y(AFLSDF_INV_32_net_1));
    IOENFF_BYPASS \count_obuf[4]/U0/U_IOENFF  (.A(
        \count_obuf[4]/U0/EOUT1 ), .Y(\count_obuf[4]/U0/EOUT ));
    sdf_IOPAD_IN \clkA_ibuf/U0/U_IOPAD  (.PAD(clkA), .Y(clkA_ibuf_Z));
    sdf_IOPAD_TRI \count_obuf[5]/U0/U_IOPAD  (.PAD(count[5]), .D(
        \count_obuf[5]/U0/DOUT ), .E(\count_obuf[5]/U0/EOUT ));
    IOOUTFF_BYPASS \count_obuf[0]/U0/U_IOOUTFF  (.A(
        \count_obuf[0]/U0/DOUT1 ), .Y(\count_obuf[0]/U0/DOUT ));
    CFG4 #( .INIT(16'h0010) )  \U0/state_ns_1_0_.m3  (.A(
        \U0/state_Z[0] ), .B(\U0/state_Z[1] ), .C(counte_c), .D(
        \U0.ack ), .Y(\U0/state_ns[0] ));
    IOOUTFF_BYPASS \Dout_obuf[2]/U0/U_IOOUTFF  (.A(
        \Dout_obuf[2]/U0/DOUT1 ), .Y(\Dout_obuf[2]/U0/DOUT ));
    IOENFF_BYPASS \count_obuf[7]/U0/U_IOENFF  (.A(
        \count_obuf[7]/U0/EOUT1 ), .Y(\count_obuf[7]/U0/EOUT ));
    IOENFF_BYPASS \count_obuf[3]/U0/U_IOENFF  (.A(
        \count_obuf[3]/U0/EOUT1 ), .Y(\count_obuf[3]/U0/EOUT ));
    CFG2 #( .INIT(4'h2) )  \U0/data_out7_0_a2  (.A(counte_c), .B(
        \U0.ack ), .Y(\U0/data_out7_0_a2_Z ));
    INV_BA AFLSDF_INV_42 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB1_rgbl_net_1 ), .Y(
        AFLSDF_INV_42_net_1));
    INV_BA AFLSDF_INV_17 (.A(reset_c), .Y(AFLSDF_INV_17_net_1));
    sdf_IOPAD_TRI \count_obuf[7]/U0/U_IOPAD  (.PAD(count[7]), .D(
        \count_obuf[7]/U0/DOUT ), .E(\count_obuf[7]/U0/EOUT ));
    ARI1_CC #( .INIT(20'h4AA00) )  \count_cry[6]  (.A(ADLIB_VCC1), .B(
        \count_c[6] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(
        \count_cry_Z[5] ), .S(\count_s[6] ), .Y(), .FCO(
        \count_cry_Z[6] ), .CC(NET_CC_CONFIG22), .P(NET_CC_CONFIG20), 
        .UB(NET_CC_CONFIG21));
    SLE \U0/req  (.D(\U0/state_Z[0] ), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB0_rgbl_net_1 ), .EN(
        \U0/un1_state_3_0_Z ), .ALn(AFLSDF_INV_11_net_1), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(req_source));
    sdf_IOPAD_TRI \count_obuf[4]/U0/U_IOPAD  (.PAD(count[4]), .D(
        \count_obuf[4]/U0/DOUT ), .E(\count_obuf[4]/U0/EOUT ));
    RGB_NG \clkB_ibuf_RNI14F7/U0_RGB1_RGB2  (.An(
        \clkB_ibuf_RNI14F7/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB2_rgbl_net_1 ), .YR());
    INV_BA AFLSDF_INV_36 (.A(reset_c), .Y(AFLSDF_INV_36_net_1));
    IOTRI_OB_EB \Dout_obuf[4]/U0/U_IOTRI  (.D(\Dout_c[4] ), .E(
        ADLIB_VCC1), .DOUT(\Dout_obuf[4]/U0/DOUT1 ), .EOUT(
        \Dout_obuf[4]/U0/EOUT1 ));
    IOTRI_OB_EB \Dout_obuf[6]/U0/U_IOTRI  (.D(\Dout_c[6] ), .E(
        ADLIB_VCC1), .DOUT(\Dout_obuf[6]/U0/DOUT1 ), .EOUT(
        \Dout_obuf[6]/U0/EOUT1 ));
    IOENFF_BYPASS \count_obuf[1]/U0/U_IOENFF  (.A(
        \count_obuf[1]/U0/EOUT1 ), .Y(\count_obuf[1]/U0/EOUT ));
    GB_NG clkA_ibuf_RNI0V4D (.An(AFLSDF_INV_12_net_1), .ENn(ADLIB_GND0)
        , .YNn(), .YSn(\clkA_ibuf_RNI0V4D/U0_YNn_GSouth ));
    CFG3 #( .INIT(8'h46) )  \U0/state_ns_1_0_.m4  (.A(\U0/state_Z[1] ), 
        .B(\U0/state_Z[0] ), .C(\U0.ack ), .Y(\U0/state_ns[1] ));
    IOIN_IB \reset_ibuf/U0/U_IOIN  (.YIN(\reset_ibuf/U0/YIN ), .E(
        ADLIB_GND0), .Y());
    IOENFF_BYPASS \Dout_obuf[3]/U0/U_IOENFF  (.A(
        \Dout_obuf[3]/U0/EOUT1 ), .Y(\Dout_obuf[3]/U0/EOUT ));
    IOOUTFF_BYPASS \count_obuf[1]/U0/U_IOOUTFF  (.A(
        \count_obuf[1]/U0/DOUT1 ), .Y(\count_obuf[1]/U0/DOUT ));
    ARI1_CC #( .INIT(20'h4AA00) )  \count_cry[5]  (.A(ADLIB_VCC1), .B(
        \count_c[5] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(
        \count_cry_Z[4] ), .S(\count_s[5] ), .Y(), .FCO(
        \count_cry_Z[5] ), .CC(NET_CC_CONFIG19), .P(NET_CC_CONFIG17), 
        .UB(NET_CC_CONFIG18));
    RGB_NG \clkB_ibuf_RNI14F7/U0_RGB1  (.An(
        \clkB_ibuf_RNI14F7/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        clkB_c), .YR());
    CFG2 #( .INIT(4'h8) )  \U1/data_out_4[1]  (.A(\transfer[1] ), .B(
        \U1/N_21_i_Z ), .Y(\U1/data_out_4_Z[1] ));
    sdf_IOPAD_TRI \count_obuf[1]/U0/U_IOPAD  (.PAD(count[1]), .D(
        \count_obuf[1]/U0/DOUT ), .E(\count_obuf[1]/U0/EOUT ));
    GB_NG clkB_ibuf_RNI14F7 (.An(AFLSDF_INV_13_net_1), .ENn(ADLIB_GND0)
        , .YNn(), .YSn(\clkB_ibuf_RNI14F7/U0_YNn_GSouth ));
    INV_BA AFLSDF_INV_46 (.A(\sink_out[2] ), .Y(AFLSDF_INV_46_net_1));
    ARI1_CC #( .INIT(20'h4AA00) )  \count_s[7]  (.A(ADLIB_VCC1), .B(
        \count_c[7] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(
        \count_cry_Z[6] ), .S(\count_s_Z[7] ), .Y(), .FCO(), .CC(
        NET_CC_CONFIG25), .P(NET_CC_CONFIG23), .UB(NET_CC_CONFIG24));
    ARI1_CC #( .INIT(20'h4AA00) )  count_s_9 (.A(ADLIB_VCC1), .B(
        \count_c[0] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(ADLIB_VCC1)
        , .S(), .Y(), .FCO(count_s_9_FCO), .CC(NET_CC_CONFIG4), .P(
        NET_CC_CONFIG2), .UB(NET_CC_CONFIG3));
    IOENFF_BYPASS \Dout_obuf[6]/U0/U_IOENFF  (.A(
        \Dout_obuf[6]/U0/EOUT1 ), .Y(\Dout_obuf[6]/U0/EOUT ));
    RGB_NG \clkA_ibuf_RNI0V4D/U0_RGB1_RGB2  (.An(
        \clkA_ibuf_RNI0V4D/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB2_rgbl_net_1 ), .YR());
    INV_BA AFLSDF_INV_22 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB6_rgbl_net_1 ), .Y(
        AFLSDF_INV_22_net_1));
    IOINFF_BYPASS \enable_ibuf/U0/U_IOINFF  (.A(\enable_ibuf/U0/YIN1 ), 
        .Y(\enable_ibuf/U0/YIN ));
    INV_BA AFLSDF_INV_31 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_31_net_1));
    RGB_NG \reset_ibuf_RNI8255/U0_RGB1_RGB4  (.An(
        \reset_ibuf_RNI8255/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \reset_ibuf_RNI8255/U0_RGB1_RGB4_rgbl_net_1 ), .YR());
    IOOUTFF_BYPASS \Dout_obuf[4]/U0/U_IOOUTFF  (.A(
        \Dout_obuf[4]/U0/DOUT1 ), .Y(\Dout_obuf[4]/U0/DOUT ));
    CFG2 #( .INIT(4'h8) )  \U1/data_out_4[6]  (.A(\transfer[6] ), .B(
        \U1/N_21_i_Z ), .Y(\U1/data_out_4_Z[6] ));
    CFG2 #( .INIT(4'h8) )  \U1/data_out_4[7]  (.A(\transfer[7] ), .B(
        \U1/N_21_i_Z ), .Y(\U1/data_out_4_Z[7] ));
    IOENFF_BYPASS \Dout_obuf[2]/U0/U_IOENFF  (.A(
        \Dout_obuf[2]/U0/EOUT1 ), .Y(\Dout_obuf[2]/U0/EOUT ));
    CFG3 #( .INIT(8'hEC) )  \U0/un1_state_3_0  (.A(\U0/state_Z[1] ), 
        .B(\U0/state_Z[0] ), .C(\U0.ack ), .Y(\U0/un1_state_3_0_Z ));
    IOOEFF \Dout_Z[1]  (.Dn(AFLSDF_INV_14_net_1), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB7_rgbl_net_1 ), .EN(Dout4_Z), 
        .ALn(AFLSDF_INV_15_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .SDR(ADLIB_VCC1), .Q(
        \Dout_c[1] ));
    IOTRI_OB_EB \Dout_obuf[2]/U0/U_IOTRI  (.D(\Dout_c[2] ), .E(
        ADLIB_VCC1), .DOUT(\Dout_obuf[2]/U0/DOUT1 ), .EOUT(
        \Dout_obuf[2]/U0/EOUT1 ));
    INV_BA AFLSDF_INV_41 (.A(\sink_out[5] ), .Y(AFLSDF_INV_41_net_1));
    INV_BA AFLSDF_INV_12 (.A(clkA_ibuf_Z), .Y(AFLSDF_INV_12_net_1));
    INV_BA AFLSDF_INV_26 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .Y(
        AFLSDF_INV_26_net_1));
    IOINFF_BYPASS \reset_ibuf/U0/U_IOINFF  (.A(reset_ibuf_Z), .Y(
        \reset_ibuf/U0/YIN ));
    INV_BA AFLSDF_INV_39 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB1_rgbl_net_1 ), .Y(
        AFLSDF_INV_39_net_1));
    RGB_NG \reset_ibuf_RNI8255/U0_RGB1_RGB3  (.An(
        \reset_ibuf_RNI8255/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \reset_ibuf_RNI8255/U0_RGB1_RGB3_rgbl_net_1 ), .YR());
    SLE \count_Z[2]  (.D(\count_s[2] ), .CLK(clkA_c), .EN(counte_c), 
        .ALn(AFLSDF_INV_16_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\count_c[2] ));
    INV_BA AFLSDF_INV_8 (.A(\sink_out[6] ), .Y(AFLSDF_INV_8_net_1));
    CFG1 #( .INIT(2'h1) )  \count_RNO[0]  (.A(\count_c[0] ), .Y(
        \count_s[0] ));
    SLE \count_Z[4]  (.D(\count_s[4] ), .CLK(clkA_c), .EN(counte_c), 
        .ALn(AFLSDF_INV_17_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\count_c[4] ));
    IOIN_IB \enable_ibuf/U0/U_IOIN  (.YIN(\enable_ibuf/U0/YIN ), .E(
        ADLIB_GND0), .Y(counte_c));
    CFG2 #( .INIT(4'h8) )  \U1/data_out_4[2]  (.A(\transfer[2] ), .B(
        \U1/N_21_i_Z ), .Y(\U1/data_out_4_Z[2] ));
    CFG2 #( .INIT(4'h8) )  \U0/data_out_5[1]  (.A(
        \U0/data_out7_0_a2_Z ), .B(\count_c[1] ), .Y(
        \U0/data_out_5_Z[1] ));
    IOENFF_BYPASS \Dout_obuf[7]/U0/U_IOENFF  (.A(
        \Dout_obuf[7]/U0/EOUT1 ), .Y(\Dout_obuf[7]/U0/EOUT ));
    IOINFF_BYPASS \clkB_ibuf/U0/U_IOINFF  (.A(clkB_ibuf_Z), .Y(
        \clkB_ibuf/U0/YIN ));
    GB_NG reset_ibuf_RNI8255 (.An(AFLSDF_INV_18_net_1), .ENn(
        ADLIB_GND0), .YNn(), .YSn(\reset_ibuf_RNI8255/U0_YNn_GSouth ));
    RGB_NG \reset_ibuf_RNI8255/U0_RGB1_RGB1  (.An(
        \reset_ibuf_RNI8255/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \reset_ibuf_RNI8255/U0_RGB1_RGB1_rgbl_net_1 ), .YR());
    SLE \U0/data_out[3]  (.D(\U0/data_out_5_Z[3] ), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB2_rgbl_net_1 ), .EN(\U0/N_22_i ), 
        .ALn(AFLSDF_INV_19_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\transfer[3] ));
    SLE \U1/data_out[3]  (.D(\U1/data_out_4_Z[3] ), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB2_rgbl_net_1 ), .EN(
        \U1/state_4_d ), .ALn(AFLSDF_INV_20_net_1), .ADn(ADLIB_VCC1), 
        .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(
        \sink_out[3] ));
    CFG4 #( .INIT(16'h0400) )  \U1/state_ns_1_0_.m3  (.A(
        \U1/state_Z[1] ), .B(\U1.req ), .C(\U1/state_Z[0] ), .D(
        counte_c), .Y(\U1/state_ns[0] ));
    IOOUTFF_BYPASS \Dout_obuf[5]/U0/U_IOOUTFF  (.A(
        \Dout_obuf[5]/U0/DOUT1 ), .Y(\Dout_obuf[5]/U0/DOUT ));
    INV_BA AFLSDF_INV_9 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB4_rgbl_net_1 ), .Y(
        AFLSDF_INV_9_net_1));
    INV_BA AFLSDF_INV_16 (.A(reset_c), .Y(AFLSDF_INV_16_net_1));
    INV_BA AFLSDF_INV_49 (.A(\sink_out[4] ), .Y(AFLSDF_INV_49_net_1));
    INV_BA AFLSDF_INV_33 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_33_net_1));
    CFG2 #( .INIT(4'h8) )  \U0/data_out_5[6]  (.A(
        \U0/data_out7_0_a2_Z ), .B(\count_c[6] ), .Y(
        \U0/data_out_5_Z[6] ));
    IOOEFF \Dout_Z[3]  (.Dn(AFLSDF_INV_21_net_1), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB6_rgbl_net_1 ), .EN(Dout4_Z), 
        .ALn(AFLSDF_INV_22_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .SDR(ADLIB_VCC1), .Q(
        \Dout_c[3] ));
    IOOUTFF_BYPASS \Dout_obuf[3]/U0/U_IOOUTFF  (.A(
        \Dout_obuf[3]/U0/DOUT1 ), .Y(\Dout_obuf[3]/U0/DOUT ));
    INV_BA AFLSDF_INV_21 (.A(\sink_out[3] ), .Y(AFLSDF_INV_21_net_1));
    INV_BA AFLSDF_INV_50 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_50_net_1));
    RGB_NG \clkB_ibuf_RNI14F7/U0_RGB1_RGB6  (.An(
        \clkB_ibuf_RNI14F7/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB6_rgbl_net_1 ), .YR());
    IOTRI_OB_EB \count_obuf[2]/U0/U_IOTRI  (.D(\count_c[2] ), .E(
        ADLIB_VCC1), .DOUT(\count_obuf[2]/U0/DOUT1 ), .EOUT(
        \count_obuf[2]/U0/EOUT1 ));
    RGB_NG \clkB_ibuf_RNI14F7/U0_RGB1_RGB5  (.An(
        \clkB_ibuf_RNI14F7/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB5_rgbl_net_1 ), .YR());
    IOINFF_BYPASS \clkA_ibuf/U0/U_IOINFF  (.A(clkA_ibuf_Z), .Y(
        \clkA_ibuf/U0/YIN ));
    sdf_IOPAD_TRI \Dout_obuf[2]/U0/U_IOPAD  (.PAD(Dout[2]), .D(
        \Dout_obuf[2]/U0/DOUT ), .E(\Dout_obuf[2]/U0/EOUT ));
    IOENFF_BYPASS \count_obuf[6]/U0/U_IOENFF  (.A(
        \count_obuf[6]/U0/EOUT1 ), .Y(\count_obuf[6]/U0/EOUT ));
    IOOEFF \Dout_Z[7]  (.Dn(AFLSDF_INV_23_net_1), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB5_rgbl_net_1 ), .EN(Dout4_Z), 
        .ALn(AFLSDF_INV_24_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .SDR(ADLIB_VCC1), .Q(
        \Dout_c[7] ));
    CFG2 #( .INIT(4'h8) )  \U0/data_out_5[2]  (.A(
        \U0/data_out7_0_a2_Z ), .B(\count_c[2] ), .Y(
        \U0/data_out_5_Z[2] ));
    CFG3 #( .INIT(8'h62) )  \U1/state_ns_1_0_.m4  (.A(\U1/state_Z[0] ), 
        .B(\U1/state_Z[1] ), .C(\U1.req ), .Y(\U1/state_ns[1] ));
    INV_BA AFLSDF_INV_35 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB7_rgbl_net_1 ), .Y(
        AFLSDF_INV_35_net_1));
    INV_BA AFLSDF_INV_6 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_6_net_1));
    IP_INTERFACE ip_interface_inst (.A(ADLIB_VCC1), .B(ff_to_start_net)
        , .C(ADLIB_VCC1), .IPA(), .IPB(), .IPC());
    INV_BA AFLSDF_INV_43 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_43_net_1));
    SLE \U0/data_out[5]  (.D(\U0/data_out_5_Z[5] ), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB0_rgbl_net_1 ), .EN(\U0/N_22_i ), 
        .ALn(AFLSDF_INV_25_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\transfer[5] ));
    IOENFF_BYPASS \count_obuf[5]/U0/U_IOENFF  (.A(
        \count_obuf[5]/U0/EOUT1 ), .Y(\count_obuf[5]/U0/EOUT ));
    SLE \U1/data_out[5]  (.D(\U1/data_out_4_Z[5] ), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB0_rgbl_net_1 ), .EN(
        \U1/state_4_d ), .ALn(AFLSDF_INV_26_net_1), .ADn(ADLIB_VCC1), 
        .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(
        \sink_out[5] ));
    IOOUTFF_BYPASS \Dout_obuf[7]/U0/U_IOOUTFF  (.A(
        \Dout_obuf[7]/U0/DOUT1 ), .Y(\Dout_obuf[7]/U0/DOUT ));
    INV_BA AFLSDF_INV_11 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .Y(
        AFLSDF_INV_11_net_1));
    SLE \count_Z[6]  (.D(\count_s[6] ), .CLK(clkA_c), .EN(counte_c), 
        .ALn(AFLSDF_INV_27_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\count_c[6] ));
    SLE ack_sync (.D(ack_sink), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB0_rgbl_net_1 ), .EN(ADLIB_VCC1), 
        .ALn(AFLSDF_INV_28_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(ack_sync_Z));
    INV_BA AFLSDF_INV_29 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .Y(
        AFLSDF_INV_29_net_1));
    IOENFF_BYPASS \Dout_obuf[4]/U0/U_IOENFF  (.A(
        \Dout_obuf[4]/U0/EOUT1 ), .Y(\Dout_obuf[4]/U0/EOUT ));
    INV_BA AFLSDF_INV_45 (.A(reset_c), .Y(AFLSDF_INV_45_net_1));
    SLE \U1/state[0]  (.D(\U1/state_ns[0] ), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB0_rgbl_net_1 ), .EN(ADLIB_VCC1), 
        .ALn(AFLSDF_INV_29_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\U1/state_Z[0] ));
    SLE \U1/ack  (.D(\U1/state_Z[0] ), .CLK(clkB_c), .EN(
        \U1/un1_ack_0_sqmuxa_1_0_Z ), .ALn(AFLSDF_INV_30_net_1), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(ack_sink));
    INV_BA AFLSDF_INV_3 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_3_net_1));
    IOTRI_OB_EB \count_obuf[0]/U0/U_IOTRI  (.D(\count_c[0] ), .E(
        ADLIB_VCC1), .DOUT(\count_obuf[0]/U0/DOUT1 ), .EOUT(
        \count_obuf[0]/U0/EOUT1 ));
    RGB_NG \clkA_ibuf_RNI0V4D/U0_RGB1  (.An(
        \clkA_ibuf_RNI0V4D/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        clkA_c), .YR());
    INV_BA AFLSDF_INV_7 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_7_net_1));
    SLE \U0/data_out[4]  (.D(\U0/data_out_5_Z[4] ), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB2_rgbl_net_1 ), .EN(\U0/N_22_i ), 
        .ALn(AFLSDF_INV_31_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\transfer[4] ));
    IOENFF_BYPASS \Dout_obuf[1]/U0/U_IOENFF  (.A(
        \Dout_obuf[1]/U0/EOUT1 ), .Y(\Dout_obuf[1]/U0/EOUT ));
    SLE \count_Z[5]  (.D(\count_s[5] ), .CLK(clkA_c), .EN(counte_c), 
        .ALn(AFLSDF_INV_32_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\count_c[5] ));
    IOOUTFF_BYPASS \count_obuf[2]/U0/U_IOOUTFF  (.A(
        \count_obuf[2]/U0/DOUT1 ), .Y(\count_obuf[2]/U0/DOUT ));
    IOTRI_OB_EB \count_obuf[1]/U0/U_IOTRI  (.D(\count_c[1] ), .E(
        ADLIB_VCC1), .DOUT(\count_obuf[1]/U0/DOUT1 ), .EOUT(
        \count_obuf[1]/U0/EOUT1 ));
    IOIN_IB \clkA_ibuf/U0/U_IOIN  (.YIN(\clkA_ibuf/U0/YIN ), .E(
        ADLIB_GND0), .Y());
    SLE \U1/data_out[4]  (.D(\U1/data_out_4_Z[4] ), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB2_rgbl_net_1 ), .EN(
        \U1/state_4_d ), .ALn(AFLSDF_INV_33_net_1), .ADn(ADLIB_VCC1), 
        .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(
        \sink_out[4] ));
    RGB_NG \clkB_ibuf_RNI14F7/U0_RGB1_RGB7  (.An(
        \clkB_ibuf_RNI14F7/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB7_rgbl_net_1 ), .YR());
    CFG3 #( .INIT(8'h31) )  \U0/state_RNIOOF31[1]  (.A(\U0/state_Z[1] )
        , .B(\U0/state_Z[0] ), .C(\U0.ack ), .Y(\U0/N_22_i ));
    RGB_NG \reset_ibuf_RNI8255/U0_RGB1_RGB0  (.An(
        \reset_ibuf_RNI8255/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .YR());
    IOOEFF \Dout_Z[0]  (.Dn(AFLSDF_INV_34_net_1), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB7_rgbl_net_1 ), .EN(Dout4_Z), 
        .ALn(AFLSDF_INV_35_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .SDR(ADLIB_VCC1), .Q(
        \Dout_c[0] ));
    IOOUTFF_BYPASS \count_obuf[7]/U0/U_IOOUTFF  (.A(
        \count_obuf[7]/U0/DOUT1 ), .Y(\count_obuf[7]/U0/DOUT ));
    CFG2 #( .INIT(4'h8) )  \U1/data_out_4[5]  (.A(\transfer[5] ), .B(
        \U1/N_21_i_Z ), .Y(\U1/data_out_4_Z[5] ));
    INV_BA AFLSDF_INV_23 (.A(\sink_out[7] ), .Y(AFLSDF_INV_23_net_1));
    SLE \count_Z[3]  (.D(\count_s[3] ), .CLK(clkA_c), .EN(counte_c), 
        .ALn(AFLSDF_INV_36_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\count_c[3] ));
    INV_BA AFLSDF_INV_19 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_19_net_1));
    SLE \U0/data_out[1]  (.D(\U0/data_out_5_Z[1] ), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB0_rgbl_net_1 ), .EN(\U0/N_22_i ), 
        .ALn(AFLSDF_INV_37_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\transfer[1] ));
    SLE \U1/data_out[1]  (.D(\U1/data_out_4_Z[1] ), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB0_rgbl_net_1 ), .EN(
        \U1/state_4_d ), .ALn(AFLSDF_INV_38_net_1), .ADn(ADLIB_VCC1), 
        .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(
        \sink_out[1] ));
    INV_BA AFLSDF_INV_4 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .Y(
        AFLSDF_INV_4_net_1));
    SLE \U0/state[0]  (.D(\U0/state_ns[0] ), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB1_rgbl_net_1 ), .EN(ADLIB_VCC1), 
        .ALn(AFLSDF_INV_39_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\U0/state_Z[0] ));
    SLE req_sync (.D(req_source), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB0_rgbl_net_1 ), .EN(ADLIB_VCC1), 
        .ALn(AFLSDF_INV_40_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(req_sync_Z));
    sdf_IOPAD_TRI \Dout_obuf[1]/U0/U_IOPAD  (.PAD(Dout[1]), .D(
        \Dout_obuf[1]/U0/DOUT ), .E(\Dout_obuf[1]/U0/EOUT ));
    CFG2 #( .INIT(4'h8) )  \U0/data_out_5[7]  (.A(
        \U0/data_out7_0_a2_Z ), .B(\count_c[7] ), .Y(
        \U0/data_out_5_Z[7] ));
    ARI1_CC #( .INIT(20'h4AA00) )  \count_cry[4]  (.A(ADLIB_VCC1), .B(
        \count_c[4] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(
        \count_cry_Z[3] ), .S(\count_s[4] ), .Y(), .FCO(
        \count_cry_Z[4] ), .CC(NET_CC_CONFIG16), .P(NET_CC_CONFIG14), 
        .UB(NET_CC_CONFIG15));
    INV_BA AFLSDF_INV_34 (.A(\sink_out[0] ), .Y(AFLSDF_INV_34_net_1));
    INV_BA AFLSDF_INV_25 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .Y(
        AFLSDF_INV_25_net_1));
    IOENFF_BYPASS \count_obuf[2]/U0/U_IOENFF  (.A(
        \count_obuf[2]/U0/EOUT1 ), .Y(\count_obuf[2]/U0/EOUT ));
    IOOEFF \Dout_Z[5]  (.Dn(AFLSDF_INV_41_net_1), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB1_rgbl_net_1 ), .EN(Dout4_Z), 
        .ALn(AFLSDF_INV_42_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .SDR(ADLIB_VCC1), .Q(
        \Dout_c[5] ));
    sdf_IOPAD_TRI \Dout_obuf[0]/U0/U_IOPAD  (.PAD(Dout[0]), .D(
        \Dout_obuf[0]/U0/DOUT ), .E(\Dout_obuf[0]/U0/EOUT ));
    sdf_IOPAD_TRI \count_obuf[0]/U0/U_IOPAD  (.PAD(count[0]), .D(
        \count_obuf[0]/U0/DOUT ), .E(\count_obuf[0]/U0/EOUT ));
    INV_BA AFLSDF_INV_13 (.A(clkB_ibuf_Z), .Y(AFLSDF_INV_13_net_1));
    CFG2 #( .INIT(4'h8) )  Dout4 (.A(counte_c), .B(transfer_enable), 
        .Y(Dout4_Z));
    IOOUTFF_BYPASS \count_obuf[5]/U0/U_IOOUTFF  (.A(
        \count_obuf[5]/U0/DOUT1 ), .Y(\count_obuf[5]/U0/DOUT ));
    INV_BA AFLSDF_INV_38 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .Y(
        AFLSDF_INV_38_net_1));
    INV_BA AFLSDF_INV_44 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_44_net_1));
    IOOUTFF_BYPASS \count_obuf[3]/U0/U_IOOUTFF  (.A(
        \count_obuf[3]/U0/DOUT1 ), .Y(\count_obuf[3]/U0/DOUT ));
    sdf_IOPAD_TRI \Dout_obuf[7]/U0/U_IOPAD  (.PAD(Dout[7]), .D(
        \Dout_obuf[7]/U0/DOUT ), .E(\Dout_obuf[7]/U0/EOUT ));
    sdf_IOPAD_TRI \Dout_obuf[5]/U0/U_IOPAD  (.PAD(Dout[5]), .D(
        \Dout_obuf[5]/U0/DOUT ), .E(\Dout_obuf[5]/U0/EOUT ));
    RGB_NG \clkB_ibuf_RNI14F7/U0_RGB1_RGB1  (.An(
        \clkB_ibuf_RNI14F7/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB1_rgbl_net_1 ), .YR());
    CFG3 #( .INIT(8'h15) )  \U1/transfer_enable_RNO  (.A(
        \U1/state_Z[0] ), .B(\U1/state_Z[1] ), .C(\U1.req ), .Y(
        \U1/N_24_i ));
    sdf_IOPAD_TRI \count_obuf[2]/U0/U_IOPAD  (.PAD(count[2]), .D(
        \count_obuf[2]/U0/DOUT ), .E(\count_obuf[2]/U0/EOUT ));
    INV_BA AFLSDF_INV_15 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB7_rgbl_net_1 ), .Y(
        AFLSDF_INV_15_net_1));
    INV_BA AFLSDF_INV_2 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_2_net_1));
    IOOUTFF_BYPASS \Dout_obuf[1]/U0/U_IOOUTFF  (.A(
        \Dout_obuf[1]/U0/DOUT1 ), .Y(\Dout_obuf[1]/U0/DOUT ));
    IOTRI_OB_EB \Dout_obuf[1]/U0/U_IOTRI  (.D(\Dout_c[1] ), .E(
        ADLIB_VCC1), .DOUT(\Dout_obuf[1]/U0/DOUT1 ), .EOUT(
        \Dout_obuf[1]/U0/EOUT1 ));
    SLE \U0/data_out[6]  (.D(\U0/data_out_5_Z[6] ), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB2_rgbl_net_1 ), .EN(\U0/N_22_i ), 
        .ALn(AFLSDF_INV_43_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\transfer[6] ));
    sdf_IOPAD_TRI \Dout_obuf[4]/U0/U_IOPAD  (.PAD(Dout[4]), .D(
        \Dout_obuf[4]/U0/DOUT ), .E(\Dout_obuf[4]/U0/EOUT ));
    IOIN_IB \clkB_ibuf/U0/U_IOIN  (.YIN(\clkB_ibuf/U0/YIN ), .E(
        ADLIB_GND0), .Y());
    SLE \U1/data_out[6]  (.D(\U1/data_out_4_Z[6] ), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB2_rgbl_net_1 ), .EN(
        \U1/state_4_d ), .ALn(AFLSDF_INV_44_net_1), .ADn(ADLIB_VCC1), 
        .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(
        \sink_out[6] ));
    IOENFF_BYPASS \Dout_obuf[0]/U0/U_IOENFF  (.A(
        \Dout_obuf[0]/U0/EOUT1 ), .Y(\Dout_obuf[0]/U0/EOUT ));
    INV_BA AFLSDF_INV_48 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB1_rgbl_net_1 ), .Y(
        AFLSDF_INV_48_net_1));
    IOTRI_OB_EB \Dout_obuf[0]/U0/U_IOTRI  (.D(\Dout_c[0] ), .E(
        ADLIB_VCC1), .DOUT(\Dout_obuf[0]/U0/DOUT1 ), .EOUT(
        \Dout_obuf[0]/U0/EOUT1 ));
    RGB_NG \clkB_ibuf_RNI14F7/U0_RGB1_RGB3  (.An(
        \clkB_ibuf_RNI14F7/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB3_rgbl_net_1 ), .YR());
    IOTRI_OB_EB \count_obuf[6]/U0/U_IOTRI  (.D(\count_c[6] ), .E(
        ADLIB_VCC1), .DOUT(\count_obuf[6]/U0/DOUT1 ), .EOUT(
        \count_obuf[6]/U0/EOUT1 ));
    CFG2 #( .INIT(4'h8) )  \U0/data_out_5[3]  (.A(
        \U0/data_out7_0_a2_Z ), .B(\count_c[3] ), .Y(
        \U0/data_out_5_Z[3] ));
    SLE \count_Z[7]  (.D(\count_s_Z[7] ), .CLK(clkA_c), .EN(counte_c), 
        .ALn(AFLSDF_INV_45_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\count_c[7] ));
    IOOUTFF_BYPASS \count_obuf[4]/U0/U_IOOUTFF  (.A(
        \count_obuf[4]/U0/DOUT1 ), .Y(\count_obuf[4]/U0/DOUT ));
    INV_BA AFLSDF_INV_1 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB1_rgbl_net_1 ), .Y(
        AFLSDF_INV_1_net_1));
    RGB_NG \clkA_ibuf_RNI0V4D/U0_RGB1_RGB1  (.An(
        \clkA_ibuf_RNI0V4D/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB1_rgbl_net_1 ), .YR());
    INV_BA AFLSDF_INV_52 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .Y(
        AFLSDF_INV_52_net_1));
    INV_BA AFLSDF_INV_24 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB5_rgbl_net_1 ), .Y(
        AFLSDF_INV_24_net_1));
    IOOUTFF_BYPASS \count_obuf[6]/U0/U_IOOUTFF  (.A(
        \count_obuf[6]/U0/DOUT1 ), .Y(\count_obuf[6]/U0/DOUT ));
    RGB_NG \reset_ibuf_RNI8255/U0_RGB1_RGB5  (.An(
        \reset_ibuf_RNI8255/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \reset_ibuf_RNI8255/U0_RGB1_RGB5_rgbl_net_1 ), .YR());
    IOOEFF \Dout_Z[2]  (.Dn(AFLSDF_INV_46_net_1), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB3_rgbl_net_1 ), .EN(Dout4_Z), 
        .ALn(AFLSDF_INV_47_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .SDR(ADLIB_VCC1), .Q(
        \Dout_c[2] ));
    FLASH_FREEZE \flash_freeze_inst/INST_FLASH_FREEZE_IP  (
        .FF_TO_START(ff_to_start_net), .FF_DONE());
    RGB_NG \reset_ibuf_RNI8255/U0_RGB1_RGB6  (.An(
        \reset_ibuf_RNI8255/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \reset_ibuf_RNI8255/U0_RGB1_RGB6_rgbl_net_1 ), .YR());
    sdf_IOPAD_TRI \count_obuf[3]/U0/U_IOPAD  (.PAD(count[3]), .D(
        \count_obuf[3]/U0/DOUT ), .E(\count_obuf[3]/U0/EOUT ));
    ARI1_CC #( .INIT(20'h4AA00) )  \count_cry[3]  (.A(ADLIB_VCC1), .B(
        \count_c[3] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(
        \count_cry_Z[2] ), .S(\count_s[3] ), .Y(), .FCO(
        \count_cry_Z[3] ), .CC(NET_CC_CONFIG13), .P(NET_CC_CONFIG11), 
        .UB(NET_CC_CONFIG12));
    IOTRI_OB_EB \Dout_obuf[7]/U0/U_IOTRI  (.D(\Dout_c[7] ), .E(
        ADLIB_VCC1), .DOUT(\Dout_obuf[7]/U0/DOUT1 ), .EOUT(
        \Dout_obuf[7]/U0/EOUT1 ));
    INV_BA AFLSDF_INV_28 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .Y(
        AFLSDF_INV_28_net_1));
    CC_CONFIG count_s_9_CC_0 (.CI(ADLIB_VCC1), .CO(), .P({
        NET_CC_CONFIG2, NET_CC_CONFIG5, NET_CC_CONFIG8, 
        NET_CC_CONFIG11, NET_CC_CONFIG14, NET_CC_CONFIG17, 
        NET_CC_CONFIG20, NET_CC_CONFIG23, ADLIB_VCC1, ADLIB_VCC1, 
        ADLIB_VCC1, ADLIB_VCC1}), .UB({NET_CC_CONFIG3, NET_CC_CONFIG6, 
        NET_CC_CONFIG9, NET_CC_CONFIG12, NET_CC_CONFIG15, 
        NET_CC_CONFIG18, NET_CC_CONFIG21, NET_CC_CONFIG24, ADLIB_VCC1, 
        ADLIB_VCC1, ADLIB_VCC1, ADLIB_VCC1}), .CC({NET_CC_CONFIG4, 
        NET_CC_CONFIG7, NET_CC_CONFIG10, NET_CC_CONFIG13, 
        NET_CC_CONFIG16, NET_CC_CONFIG19, NET_CC_CONFIG22, 
        NET_CC_CONFIG25, nc0, nc1, nc2, nc3}));
    CFG2 #( .INIT(4'h1) )  \U1/state_s0_0_a4  (.A(\U1/state_Z[0] ), .B(
        \U1/state_Z[1] ), .Y(\U1/state_4_d ));
    INV_BA AFLSDF_INV_14 (.A(\sink_out[1] ), .Y(AFLSDF_INV_14_net_1));
    INV_BA AFLSDF_INV_30 (.A(reset_c), .Y(AFLSDF_INV_30_net_1));
    sdf_IOPAD_TRI \Dout_obuf[6]/U0/U_IOPAD  (.PAD(Dout[6]), .D(
        \Dout_obuf[6]/U0/DOUT ), .E(\Dout_obuf[6]/U0/EOUT ));
    INV_BA AFLSDF_INV_18 (.A(reset_ibuf_Z), .Y(AFLSDF_INV_18_net_1));
    RGB_NG \clkB_ibuf_RNI14F7/U0_RGB1_RGB4  (.An(
        \clkB_ibuf_RNI14F7/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB4_rgbl_net_1 ), .YR());
    SLE \count_Z[0]  (.D(\count_s[0] ), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB1_rgbl_net_1 ), .EN(counte_c), 
        .ALn(AFLSDF_INV_48_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\count_c[0] ));
    RGB_NG \reset_ibuf_RNI8255/U0_RGB1_RGB7  (.An(
        \reset_ibuf_RNI8255/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \reset_ibuf_RNI8255/U0_RGB1_RGB7_rgbl_net_1 ), .YR());
    IOOEFF \Dout_Z[4]  (.Dn(AFLSDF_INV_49_net_1), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB2_rgbl_net_1 ), .EN(Dout4_Z), 
        .ALn(AFLSDF_INV_50_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .SDR(ADLIB_VCC1), .Q(
        \Dout_c[4] ));
    INV_BA AFLSDF_INV_40 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .Y(
        AFLSDF_INV_40_net_1));
    IOTRI_OB_EB \count_obuf[3]/U0/U_IOTRI  (.D(\count_c[3] ), .E(
        ADLIB_VCC1), .DOUT(\count_obuf[3]/U0/DOUT1 ), .EOUT(
        \count_obuf[3]/U0/EOUT1 ));
    SLE req_sink (.D(req_sync_Z), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB0_rgbl_net_1 ), .EN(ADLIB_VCC1), 
        .ALn(AFLSDF_INV_51_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\U1.req ));
    INV_BA AFLSDF_INV_51 (.A(
        \reset_ibuf_RNI8255/U0_RGB1_RGB0_rgbl_net_1 ), .Y(
        AFLSDF_INV_51_net_1));
    RGB_NG \reset_ibuf_RNI8255/U0_RGB1  (.An(
        \reset_ibuf_RNI8255/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        reset_c), .YR());
    RGB_NG \reset_ibuf_RNI8255/U0_RGB1_RGB2  (.An(
        \reset_ibuf_RNI8255/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(
        \reset_ibuf_RNI8255/U0_RGB1_RGB2_rgbl_net_1 ), .YR());
    sdf_IOPAD_TRI \Dout_obuf[3]/U0/U_IOPAD  (.PAD(Dout[3]), .D(
        \Dout_obuf[3]/U0/DOUT ), .E(\Dout_obuf[3]/U0/EOUT ));
    ARI1_CC #( .INIT(20'h4AA00) )  \count_cry[1]  (.A(ADLIB_VCC1), .B(
        \count_c[1] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(
        count_s_9_FCO), .S(\count_s[1] ), .Y(), .FCO(\count_cry_Z[1] ), 
        .CC(NET_CC_CONFIG7), .P(NET_CC_CONFIG5), .UB(NET_CC_CONFIG6));
    SLE \U0/data_out[7]  (.D(\U0/data_out_5_Z[7] ), .CLK(
        \clkA_ibuf_RNI0V4D/U0_RGB1_RGB2_rgbl_net_1 ), .EN(\U0/N_22_i ), 
        .ALn(AFLSDF_INV_52_net_1), .ADn(ADLIB_VCC1), .SLn(ADLIB_VCC1), 
        .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\transfer[7] ));
    SLE \U1/data_out[7]  (.D(\U1/data_out_4_Z[7] ), .CLK(
        \clkB_ibuf_RNI14F7/U0_RGB1_RGB2_rgbl_net_1 ), .EN(
        \U1/state_4_d ), .ALn(AFLSDF_INV_53_net_1), .ADn(ADLIB_VCC1), 
        .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(
        \sink_out[7] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
