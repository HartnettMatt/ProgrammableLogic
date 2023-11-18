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


module HW4_Q2C(
       clk,
       rst_n,
       q,
       rollover,
       sC
    );
input  clk;
input  rst_n;
output [15:0] q;
output rollover;
output [3:0] sC;

    wire \inverterString[1] , \q_c[15] , \q_c[14] , \q_c[13] , 
        \q_c[12] , \q_c[11] , \q_c[10] , \q_c[9] , \q_c[8] , \q_c[7] , 
        \q_c[6] , \q_c[5] , \q_c[4] , \q_c[3] , \q_c[2] , \q_c[1] , 
        \q_c[0] , \Q_s[10] , \Q_s[9] , \Q_s[8] , \Q_s[7] , \Q_s[6] , 
        \Q_s[5] , \Q_s[4] , \Q_s[3] , \Q_s[2] , \Q_s[1] , \Q_s[0] , 
        \Q_cry_Z[10] , \Q_cry_Z[9] , \Q_cry_Z[8] , \Q_cry_Z[7] , 
        \Q_cry_Z[6] , \Q_cry_Z[5] , \Q_cry_Z[4] , \Q_cry_Z[3] , 
        \Q_cry_Z[2] , \Q_cry_Z[1] , \Q_s_Z[11] , \Q_skewed_ldmx_Z[1] , 
        Q_skewed7_Z, Q_skewed27, Q_skewed37, Q_skewed7_8_Z, 
        Q_skewed7_9_4_Z, Q_skewed7_9_5_Z, m14_e_2, m14_e_3, m8_e_0, 
        m8_e_5, m8_e_6, g0_6, g0_7, g0_8, g0_9, Q_s_5_FCO, clk_ibuf_Z, 
        ff_to_start_net, \q_obuf[4]/U0/DOUT1 , \q_obuf[4]/U0/DOUT , 
        \q_obuf[4]/U0/EOUT1 , \q_obuf[4]/U0/EOUT , 
        \q_obuf[2]/U0/DOUT1 , \q_obuf[2]/U0/DOUT , 
        \q_obuf[2]/U0/EOUT1 , \q_obuf[2]/U0/EOUT , 
        \q_obuf[11]/U0/DOUT1 , \q_obuf[11]/U0/DOUT , 
        \q_obuf[11]/U0/EOUT1 , \q_obuf[11]/U0/EOUT , 
        \q_obuf[12]/U0/DOUT1 , \q_obuf[12]/U0/DOUT , 
        \q_obuf[12]/U0/EOUT1 , \q_obuf[12]/U0/EOUT , 
        \q_obuf[9]/U0/DOUT1 , \q_obuf[9]/U0/DOUT , 
        \q_obuf[9]/U0/EOUT1 , \q_obuf[9]/U0/EOUT , rst_n_ibuf_Z, 
        \rst_n_ibuf/U0/YIN , \q_obuf[15]/U0/DOUT1 , 
        \q_obuf[15]/U0/DOUT , \q_obuf[15]/U0/EOUT1 , 
        \q_obuf[15]/U0/EOUT , \q_obuf[13]/U0/DOUT1 , 
        \q_obuf[13]/U0/DOUT , \q_obuf[13]/U0/EOUT1 , 
        \q_obuf[13]/U0/EOUT , \q_obuf[0]/U0/DOUT1 , 
        \q_obuf[0]/U0/DOUT , \q_obuf[0]/U0/EOUT1 , \q_obuf[0]/U0/EOUT , 
        \q_obuf[7]/U0/DOUT1 , \q_obuf[7]/U0/DOUT , 
        \q_obuf[7]/U0/EOUT1 , \q_obuf[7]/U0/EOUT , 
        \q_obuf[6]/U0/DOUT1 , \q_obuf[6]/U0/DOUT , 
        \q_obuf[6]/U0/EOUT1 , \q_obuf[6]/U0/EOUT , 
        \q_obuf[14]/U0/DOUT1 , \q_obuf[14]/U0/DOUT , 
        \q_obuf[14]/U0/EOUT1 , \q_obuf[14]/U0/EOUT , 
        \sC_obuf[3]/U0/DOUT1 , \sC_obuf[3]/U0/DOUT , 
        \sC_obuf[3]/U0/EOUT1 , \sC_obuf[3]/U0/EOUT , 
        \q_obuf[8]/U0/DOUT1 , \q_obuf[8]/U0/DOUT , 
        \q_obuf[8]/U0/EOUT1 , \q_obuf[8]/U0/EOUT , 
        \sC_obuf[2]/U0/DOUT1 , \sC_obuf[2]/U0/DOUT , 
        \sC_obuf[2]/U0/EOUT1 , \sC_obuf[2]/U0/EOUT , 
        \rollover_obuf/U0/DOUT1 , \rollover_obuf/U0/DOUT , 
        \rollover_obuf/U0/EOUT1 , \rollover_obuf/U0/EOUT , 
        \q_obuf[1]/U0/DOUT1 , \q_obuf[1]/U0/DOUT , 
        \q_obuf[1]/U0/EOUT1 , \q_obuf[1]/U0/EOUT , 
        \q_obuf[3]/U0/DOUT1 , \q_obuf[3]/U0/DOUT , 
        \q_obuf[3]/U0/EOUT1 , \q_obuf[3]/U0/EOUT , 
        \sC_obuf[1]/U0/DOUT1 , \sC_obuf[1]/U0/DOUT , 
        \sC_obuf[1]/U0/EOUT1 , \sC_obuf[1]/U0/EOUT , 
        \q_obuf[5]/U0/DOUT1 , \q_obuf[5]/U0/DOUT , 
        \q_obuf[5]/U0/EOUT1 , \q_obuf[5]/U0/EOUT , \clk_ibuf/U0/YIN1 , 
        \clk_ibuf/U0/YIN , \sC_obuf[0]/U0/DOUT1 , \sC_obuf[0]/U0/DOUT , 
        \sC_obuf[0]/U0/EOUT1 , \sC_obuf[0]/U0/EOUT , 
        \q_obuf[10]/U0/DOUT1 , \q_obuf[10]/U0/DOUT , 
        \q_obuf[10]/U0/EOUT1 , \q_obuf[10]/U0/EOUT , 
        \rst_n_ibuf_RNIBNDC/U0_RGB1_YR , \clk_ibuf_RNIVTI2/U0_RGB1_YR , 
        \clk_ibuf_RNIVTI2/U0_YNn_GSouth , 
        \rst_n_ibuf_RNIBNDC/U0_YNn_GSouth , ADLIB_GND0, ADLIB_VCC1, 
        CI_TO_CO2, NET_CC_CONFIG3, NET_CC_CONFIG4, NET_CC_CONFIG5, 
        NET_CC_CONFIG6, NET_CC_CONFIG7, NET_CC_CONFIG8, NET_CC_CONFIG9, 
        NET_CC_CONFIG10, NET_CC_CONFIG11, NET_CC_CONFIG12, 
        NET_CC_CONFIG13, NET_CC_CONFIG14, NET_CC_CONFIG15, 
        NET_CC_CONFIG16, NET_CC_CONFIG17, NET_CC_CONFIG18, 
        NET_CC_CONFIG19, NET_CC_CONFIG20, NET_CC_CONFIG21, 
        NET_CC_CONFIG22, NET_CC_CONFIG23, NET_CC_CONFIG24, 
        NET_CC_CONFIG25, NET_CC_CONFIG26, NET_CC_CONFIG27, 
        NET_CC_CONFIG28, NET_CC_CONFIG29, NET_CC_CONFIG30, 
        NET_CC_CONFIG31, NET_CC_CONFIG32, NET_CC_CONFIG33, 
        NET_CC_CONFIG34, NET_CC_CONFIG35, NET_CC_CONFIG36, 
        NET_CC_CONFIG37, NET_CC_CONFIG38, AFLSDF_VCC, AFLSDF_GND, 
        AFLSDF_INV_0_net_1, AFLSDF_INV_1_net_1, AFLSDF_INV_2_net_1, 
        AFLSDF_INV_3_net_1, AFLSDF_INV_4_net_1, AFLSDF_INV_5_net_1;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign ADLIB_GND0 = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign ADLIB_VCC1 = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    ARI1_CC #( .INIT(20'h4AA00) )  \Q_cry[4]  (.A(ADLIB_VCC1), .B(
        \q_c[4] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(\Q_cry_Z[3] ), 
        .S(\Q_s[4] ), .Y(), .FCO(\Q_cry_Z[4] ), .CC(NET_CC_CONFIG17), 
        .P(NET_CC_CONFIG15), .UB(NET_CC_CONFIG16));
    IOTRI_OB_EB \q_obuf[15]/U0/U_IOTRI  (.D(\q_c[15] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[15]/U0/DOUT1 ), .EOUT(\q_obuf[15]/U0/EOUT1 ));
    ARI1_CC #( .INIT(20'h4AA00) )  \Q_cry[3]  (.A(ADLIB_VCC1), .B(
        \q_c[3] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(\Q_cry_Z[2] ), 
        .S(\Q_s[3] ), .Y(), .FCO(\Q_cry_Z[3] ), .CC(NET_CC_CONFIG14), 
        .P(NET_CC_CONFIG12), .UB(NET_CC_CONFIG13));
    IOINFF_BYPASS \clk_ibuf/U0/U_IOINFF  (.A(\clk_ibuf/U0/YIN1 ), .Y(
        \clk_ibuf/U0/YIN ));
    sdf_IOPAD_TRI \q_obuf[10]/U0/U_IOPAD  (.PAD(q[10]), .D(
        \q_obuf[10]/U0/DOUT ), .E(\q_obuf[10]/U0/EOUT ));
    sdf_IOPAD_TRI \q_obuf[0]/U0/U_IOPAD  (.PAD(q[0]), .D(
        \q_obuf[0]/U0/DOUT ), .E(\q_obuf[0]/U0/EOUT ));
    ARI1_CC #( .INIT(20'h4AA00) )  \Q_cry[1]  (.A(ADLIB_VCC1), .B(
        \q_c[1] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(Q_s_5_FCO), .S(
        \Q_s[1] ), .Y(), .FCO(\Q_cry_Z[1] ), .CC(NET_CC_CONFIG8), .P(
        NET_CC_CONFIG6), .UB(NET_CC_CONFIG7));
    CFG4 #( .INIT(16'h8000) )  \Q_skewed_RNO[2]  (.A(g0_8), .B(g0_7), 
        .C(g0_6), .D(g0_9), .Y(Q_skewed27));
    IOOUTFF_BYPASS \q_obuf[11]/U0/U_IOOUTFF  (.A(\q_obuf[11]/U0/DOUT1 )
        , .Y(\q_obuf[11]/U0/DOUT ));
    IOOUTFF_BYPASS \sC_obuf[3]/U0/U_IOOUTFF  (.A(\sC_obuf[3]/U0/DOUT1 )
        , .Y(\sC_obuf[3]/U0/DOUT ));
    IOTRI_OB_EB \q_obuf[3]/U0/U_IOTRI  (.D(\q_c[3] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[3]/U0/DOUT1 ), .EOUT(\q_obuf[3]/U0/EOUT1 ));
    sdf_IOPAD_TRI \sC_obuf[0]/U0/U_IOPAD  (.PAD(sC[0]), .D(
        \sC_obuf[0]/U0/DOUT ), .E(\sC_obuf[0]/U0/EOUT ));
    sdf_IOPAD_TRI \q_obuf[14]/U0/U_IOPAD  (.PAD(q[14]), .D(
        \q_obuf[14]/U0/DOUT ), .E(\q_obuf[14]/U0/EOUT ));
    CFG3 #( .INIT(8'h80) )  Q_skewed7 (.A(Q_skewed7_9_5_Z), .B(
        Q_skewed7_9_4_Z), .C(Q_skewed7_8_Z), .Y(Q_skewed7_Z));
    IOENFF_BYPASS \q_obuf[3]/U0/U_IOENFF  (.A(\q_obuf[3]/U0/EOUT1 ), 
        .Y(\q_obuf[3]/U0/EOUT ));
    sdf_IOPAD_TRI \q_obuf[1]/U0/U_IOPAD  (.PAD(q[1]), .D(
        \q_obuf[1]/U0/DOUT ), .E(\q_obuf[1]/U0/EOUT ));
    IOTRI_OB_EB \sC_obuf[3]/U0/U_IOTRI  (.D(\inverterString[1] ), .E(
        ADLIB_VCC1), .DOUT(\sC_obuf[3]/U0/DOUT1 ), .EOUT(
        \sC_obuf[3]/U0/EOUT1 ));
    sdf_IOPAD_TRI \q_obuf[8]/U0/U_IOPAD  (.PAD(q[8]), .D(
        \q_obuf[8]/U0/DOUT ), .E(\q_obuf[8]/U0/EOUT ));
    IOENFF_BYPASS \q_obuf[8]/U0/U_IOENFF  (.A(\q_obuf[8]/U0/EOUT1 ), 
        .Y(\q_obuf[8]/U0/EOUT ));
    sdf_IOPAD_TRI \q_obuf[2]/U0/U_IOPAD  (.PAD(q[2]), .D(
        \q_obuf[2]/U0/DOUT ), .E(\q_obuf[2]/U0/EOUT ));
    CC_CONFIG Q_s_5_CC_1 (.CI(CI_TO_CO2), .CO(), .P({NET_CC_CONFIG30, 
        NET_CC_CONFIG33, NET_CC_CONFIG36, ADLIB_VCC1, ADLIB_VCC1, 
        ADLIB_VCC1, ADLIB_VCC1, ADLIB_VCC1, ADLIB_VCC1, ADLIB_VCC1, 
        ADLIB_VCC1, ADLIB_VCC1}), .UB({NET_CC_CONFIG31, 
        NET_CC_CONFIG34, NET_CC_CONFIG37, ADLIB_VCC1, ADLIB_VCC1, 
        ADLIB_VCC1, ADLIB_VCC1, ADLIB_VCC1, ADLIB_VCC1, ADLIB_VCC1, 
        ADLIB_VCC1, ADLIB_VCC1}), .CC({NET_CC_CONFIG32, 
        NET_CC_CONFIG35, NET_CC_CONFIG38, nc0, nc1, nc2, nc3, nc4, nc5, 
        nc6, nc7, nc8}));
    sdf_IOPAD_TRI \sC_obuf[1]/U0/U_IOPAD  (.PAD(sC[1]), .D(
        \sC_obuf[1]/U0/DOUT ), .E(\sC_obuf[1]/U0/EOUT ));
    SLE \Q_skewed[2]  (.D(ADLIB_VCC1), .CLK(AFLSDF_INV_0_net_1), .EN(
        Q_skewed27), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[14] ));
    sdf_IOPAD_TRI \q_obuf[4]/U0/U_IOPAD  (.PAD(q[4]), .D(
        \q_obuf[4]/U0/DOUT ), .E(\q_obuf[4]/U0/EOUT ));
    IOTRI_OB_EB \sC_obuf[0]/U0/U_IOTRI  (.D(\inverterString[1] ), .E(
        ADLIB_VCC1), .DOUT(\sC_obuf[0]/U0/DOUT1 ), .EOUT(
        \sC_obuf[0]/U0/EOUT1 ));
    sdf_IOPAD_TRI \q_obuf[5]/U0/U_IOPAD  (.PAD(q[5]), .D(
        \q_obuf[5]/U0/DOUT ), .E(\q_obuf[5]/U0/EOUT ));
    CFG4 #( .INIT(16'h8000) )  Q_skewed7_9_4 (.A(\q_c[3] ), .B(
        \q_c[2] ), .C(\q_c[1] ), .D(\q_c[0] ), .Y(Q_skewed7_9_4_Z));
    SLE \Q[9]  (.D(\Q_s[9] ), .CLK(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .EN(
        ADLIB_VCC1), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[9] ));
    ARI1_CC #( .INIT(20'h4AA00) )  \Q_cry[7]  (.A(ADLIB_VCC1), .B(
        \q_c[7] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(\Q_cry_Z[6] ), 
        .S(\Q_s[7] ), .Y(), .FCO(\Q_cry_Z[7] ), .CC(NET_CC_CONFIG26), 
        .P(NET_CC_CONFIG24), .UB(NET_CC_CONFIG25));
    INV_BA AFLSDF_INV_5 (.A(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .Y(
        AFLSDF_INV_5_net_1));
    sdf_IOPAD_TRI \rollover_obuf/U0/U_IOPAD  (.PAD(rollover), .D(
        \rollover_obuf/U0/DOUT ), .E(\rollover_obuf/U0/EOUT ));
    CFG4 #( .INIT(16'h8000) )  Q_skewed7_9_5 (.A(\q_c[11] ), .B(
        \q_c[10] ), .C(\q_c[9] ), .D(\q_c[8] ), .Y(Q_skewed7_9_5_Z));
    INV_BA AFLSDF_INV_0 (.A(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .Y(
        AFLSDF_INV_0_net_1));
    IOTRI_OB_EB \q_obuf[0]/U0/U_IOTRI  (.D(\q_c[0] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[0]/U0/DOUT1 ), .EOUT(\q_obuf[0]/U0/EOUT1 ));
    ARI1_CC #( .INIT(20'h4AA00) )  \Q_cry[10]  (.A(ADLIB_VCC1), .B(
        \q_c[10] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(\Q_cry_Z[9] ), 
        .S(\Q_s[10] ), .Y(), .FCO(\Q_cry_Z[10] ), .CC(NET_CC_CONFIG35), 
        .P(NET_CC_CONFIG33), .UB(NET_CC_CONFIG34));
    IOOUTFF_BYPASS \q_obuf[4]/U0/U_IOOUTFF  (.A(\q_obuf[4]/U0/DOUT1 ), 
        .Y(\q_obuf[4]/U0/DOUT ));
    GB_NG clk_ibuf_RNIVTI2 (.An(AFLSDF_INV_1_net_1), .ENn(ADLIB_GND0), 
        .YNn(), .YSn(\clk_ibuf_RNIVTI2/U0_YNn_GSouth ));
    sdf_IOPAD_TRI \q_obuf[12]/U0/U_IOPAD  (.PAD(q[12]), .D(
        \q_obuf[12]/U0/DOUT ), .E(\q_obuf[12]/U0/EOUT ));
    ARI1_CC #( .INIT(20'h4AA00) )  \Q_cry[5]  (.A(ADLIB_VCC1), .B(
        \q_c[5] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(\Q_cry_Z[4] ), 
        .S(\Q_s[5] ), .Y(), .FCO(\Q_cry_Z[5] ), .CC(NET_CC_CONFIG20), 
        .P(NET_CC_CONFIG18), .UB(NET_CC_CONFIG19));
    sdf_IOPAD_TRI \sC_obuf[2]/U0/U_IOPAD  (.PAD(sC[2]), .D(
        \sC_obuf[2]/U0/DOUT ), .E(\sC_obuf[2]/U0/EOUT ));
    sdf_IOPAD_TRI \q_obuf[7]/U0/U_IOPAD  (.PAD(q[7]), .D(
        \q_obuf[7]/U0/DOUT ), .E(\q_obuf[7]/U0/EOUT ));
    SLE \Q[0]  (.D(\Q_s[0] ), .CLK(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .EN(
        ADLIB_VCC1), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[0] ));
    CFG2 #( .INIT(4'h8) )  \Q_skewed_RNO_0[3]  (.A(\q_c[4] ), .B(
        \q_c[5] ), .Y(m14_e_2));
    IOTRI_OB_EB \q_obuf[6]/U0/U_IOTRI  (.D(\q_c[6] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[6]/U0/DOUT1 ), .EOUT(\q_obuf[6]/U0/EOUT1 ));
    CFG4 #( .INIT(16'h8000) )  \Q_skewed_RNO_1[2]  (.A(\q_c[13] ), .B(
        \q_c[12] ), .C(\q_c[6] ), .D(\q_c[0] ), .Y(g0_7));
    IOENFF_BYPASS \sC_obuf[1]/U0/U_IOENFF  (.A(\sC_obuf[1]/U0/EOUT1 ), 
        .Y(\sC_obuf[1]/U0/EOUT ));
    IOIN_IB \rst_n_ibuf/U0/U_IOIN  (.YIN(\rst_n_ibuf/U0/YIN ), .E(
        ADLIB_GND0), .Y());
    sdf_IOPAD_TRI \q_obuf[9]/U0/U_IOPAD  (.PAD(q[9]), .D(
        \q_obuf[9]/U0/DOUT ), .E(\q_obuf[9]/U0/EOUT ));
    ARI1_CC #( .INIT(20'h4AA00) )  Q_s_5 (.A(ADLIB_VCC1), .B(\q_c[0] ), 
        .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(ADLIB_VCC1), .S(), .Y(), 
        .FCO(Q_s_5_FCO), .CC(NET_CC_CONFIG5), .P(NET_CC_CONFIG3), .UB(
        NET_CC_CONFIG4));
    SLE \Q[3]  (.D(\Q_s[3] ), .CLK(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .EN(
        ADLIB_VCC1), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[3] ));
    IOENFF_BYPASS \q_obuf[6]/U0/U_IOENFF  (.A(\q_obuf[6]/U0/EOUT1 ), 
        .Y(\q_obuf[6]/U0/EOUT ));
    IOTRI_OB_EB \q_obuf[1]/U0/U_IOTRI  (.D(\q_c[1] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[1]/U0/DOUT1 ), .EOUT(\q_obuf[1]/U0/EOUT1 ));
    SLE \Q[7]  (.D(\Q_s[7] ), .CLK(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .EN(
        ADLIB_VCC1), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[7] ));
    IOOUTFF_BYPASS \sC_obuf[1]/U0/U_IOOUTFF  (.A(\sC_obuf[1]/U0/DOUT1 )
        , .Y(\sC_obuf[1]/U0/DOUT ));
    IOENFF_BYPASS \q_obuf[15]/U0/U_IOENFF  (.A(\q_obuf[15]/U0/EOUT1 ), 
        .Y(\q_obuf[15]/U0/EOUT ));
    SLE \Q[1]  (.D(\Q_s[1] ), .CLK(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .EN(
        ADLIB_VCC1), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[1] ));
    IOENFF_BYPASS \sC_obuf[2]/U0/U_IOENFF  (.A(\sC_obuf[2]/U0/EOUT1 ), 
        .Y(\sC_obuf[2]/U0/EOUT ));
    RGB_NG \rst_n_ibuf_RNIBNDC/U0_RGB1  (.An(
        \rst_n_ibuf_RNIBNDC/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(), 
        .YR(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ));
    IOENFF_BYPASS \q_obuf[9]/U0/U_IOENFF  (.A(\q_obuf[9]/U0/EOUT1 ), 
        .Y(\q_obuf[9]/U0/EOUT ));
    IOTRI_OB_EB \q_obuf[7]/U0/U_IOTRI  (.D(\q_c[7] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[7]/U0/DOUT1 ), .EOUT(\q_obuf[7]/U0/EOUT1 ));
    ARI1_CC #( .INIT(20'h4AA00) )  \Q_cry[8]  (.A(ADLIB_VCC1), .B(
        \q_c[8] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(\Q_cry_Z[7] ), 
        .S(\Q_s[8] ), .Y(), .FCO(\Q_cry_Z[8] ), .CC(NET_CC_CONFIG29), 
        .P(NET_CC_CONFIG27), .UB(NET_CC_CONFIG28));
    SLE \Q_skewed[3]  (.D(ADLIB_VCC1), .CLK(AFLSDF_INV_2_net_1), .EN(
        Q_skewed37), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[15] ));
    sdf_IOPAD_IN \rst_n_ibuf/U0/U_IOPAD  (.PAD(rst_n), .Y(rst_n_ibuf_Z)
        );
    IOOUTFF_BYPASS \q_obuf[0]/U0/U_IOOUTFF  (.A(\q_obuf[0]/U0/DOUT1 ), 
        .Y(\q_obuf[0]/U0/DOUT ));
    IOOUTFF_BYPASS \q_obuf[3]/U0/U_IOOUTFF  (.A(\q_obuf[3]/U0/DOUT1 ), 
        .Y(\q_obuf[3]/U0/DOUT ));
    sdf_IOPAD_TRI \q_obuf[13]/U0/U_IOPAD  (.PAD(q[13]), .D(
        \q_obuf[13]/U0/DOUT ), .E(\q_obuf[13]/U0/EOUT ));
    IOENFF_BYPASS \q_obuf[0]/U0/U_IOENFF  (.A(\q_obuf[0]/U0/EOUT1 ), 
        .Y(\q_obuf[0]/U0/EOUT ));
    IOTRI_OB_EB \q_obuf[14]/U0/U_IOTRI  (.D(\q_c[14] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[14]/U0/DOUT1 ), .EOUT(\q_obuf[14]/U0/EOUT1 ));
    sdf_IOPAD_IN \clk_ibuf/U0/U_IOPAD  (.PAD(clk), .Y(
        \clk_ibuf/U0/YIN1 ));
    IOOUTFF_BYPASS \q_obuf[15]/U0/U_IOOUTFF  (.A(\q_obuf[15]/U0/DOUT1 )
        , .Y(\q_obuf[15]/U0/DOUT ));
    CFG4 #( .INIT(16'h8000) )  \Q_skewed_RNO_2[3]  (.A(\q_c[9] ), .B(
        \q_c[8] ), .C(\q_c[7] ), .D(\q_c[6] ), .Y(m14_e_3));
    IOENFF_BYPASS \q_obuf[4]/U0/U_IOENFF  (.A(\q_obuf[4]/U0/EOUT1 ), 
        .Y(\q_obuf[4]/U0/EOUT ));
    IOENFF_BYPASS \q_obuf[14]/U0/U_IOENFF  (.A(\q_obuf[14]/U0/EOUT1 ), 
        .Y(\q_obuf[14]/U0/EOUT ));
    IOTRI_OB_EB \sC_obuf[1]/U0/U_IOTRI  (.D(\inverterString[1] ), .E(
        ADLIB_VCC1), .DOUT(\sC_obuf[1]/U0/DOUT1 ), .EOUT(
        \sC_obuf[1]/U0/EOUT1 ));
    IOOUTFF_BYPASS \q_obuf[13]/U0/U_IOOUTFF  (.A(\q_obuf[13]/U0/DOUT1 )
        , .Y(\q_obuf[13]/U0/DOUT ));
    IOENFF_BYPASS \q_obuf[5]/U0/U_IOENFF  (.A(\q_obuf[5]/U0/EOUT1 ), 
        .Y(\q_obuf[5]/U0/EOUT ));
    IOTRI_OB_EB \rollover_obuf/U0/U_IOTRI  (.D(ADLIB_GND0), .E(
        ADLIB_VCC1), .DOUT(\rollover_obuf/U0/DOUT1 ), .EOUT(
        \rollover_obuf/U0/EOUT1 ));
    CC_CONFIG Q_s_5_CC_0 (.CI(ADLIB_VCC1), .CO(CI_TO_CO2), .P({
        ADLIB_VCC1, ADLIB_VCC1, ADLIB_GND0, NET_CC_CONFIG3, 
        NET_CC_CONFIG6, NET_CC_CONFIG9, NET_CC_CONFIG12, 
        NET_CC_CONFIG15, NET_CC_CONFIG18, NET_CC_CONFIG21, 
        NET_CC_CONFIG24, NET_CC_CONFIG27}), .UB({ADLIB_VCC1, 
        ADLIB_VCC1, ADLIB_GND0, NET_CC_CONFIG4, NET_CC_CONFIG7, 
        NET_CC_CONFIG10, NET_CC_CONFIG13, NET_CC_CONFIG16, 
        NET_CC_CONFIG19, NET_CC_CONFIG22, NET_CC_CONFIG25, 
        NET_CC_CONFIG28}), .CC({nc9, nc10, nc11, NET_CC_CONFIG5, 
        NET_CC_CONFIG8, NET_CC_CONFIG11, NET_CC_CONFIG14, 
        NET_CC_CONFIG17, NET_CC_CONFIG20, NET_CC_CONFIG23, 
        NET_CC_CONFIG26, NET_CC_CONFIG29}));
    SLE \Q[11]  (.D(\Q_s_Z[11] ), .CLK(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), 
        .EN(ADLIB_VCC1), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[11] ));
    CFG4 #( .INIT(16'hEAAA) )  \Q_skewed_ldmx[1]  (.A(\q_c[13] ), .B(
        Q_skewed7_9_5_Z), .C(Q_skewed7_9_4_Z), .D(Q_skewed7_8_Z), .Y(
        \Q_skewed_ldmx_Z[1] ));
    IOOUTFF_BYPASS \q_obuf[8]/U0/U_IOOUTFF  (.A(\q_obuf[8]/U0/DOUT1 ), 
        .Y(\q_obuf[8]/U0/DOUT ));
    IOENFF_BYPASS \sC_obuf[0]/U0/U_IOENFF  (.A(\sC_obuf[0]/U0/EOUT1 ), 
        .Y(\sC_obuf[0]/U0/EOUT ));
    CFG2 #( .INIT(4'h8) )  \Q_skewed_RNO_4[3]  (.A(\q_c[13] ), .B(
        \q_c[14] ), .Y(m8_e_0));
    sdf_IOPAD_TRI \q_obuf[3]/U0/U_IOPAD  (.PAD(q[3]), .D(
        \q_obuf[3]/U0/DOUT ), .E(\q_obuf[3]/U0/EOUT ));
    IOENFF_BYPASS \rollover_obuf/U0/U_IOENFF  (.A(
        \rollover_obuf/U0/EOUT1 ), .Y(\rollover_obuf/U0/EOUT ));
    IOTRI_OB_EB \q_obuf[13]/U0/U_IOTRI  (.D(\q_c[13] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[13]/U0/DOUT1 ), .EOUT(\q_obuf[13]/U0/EOUT1 ));
    IOOUTFF_BYPASS \q_obuf[2]/U0/U_IOOUTFF  (.A(\q_obuf[2]/U0/DOUT1 ), 
        .Y(\q_obuf[2]/U0/DOUT ));
    IOINFF_BYPASS \rst_n_ibuf/U0/U_IOINFF  (.A(rst_n_ibuf_Z), .Y(
        \rst_n_ibuf/U0/YIN ));
    CFG4 #( .INIT(16'h8000) )  \Q_skewed_RNO[3]  (.A(m14_e_2), .B(
        m8_e_5), .C(m14_e_3), .D(m8_e_6), .Y(Q_skewed37));
    sdf_IOPAD_TRI \q_obuf[11]/U0/U_IOPAD  (.PAD(q[11]), .D(
        \q_obuf[11]/U0/DOUT ), .E(\q_obuf[11]/U0/EOUT ));
    IOENFF_BYPASS \q_obuf[11]/U0/U_IOENFF  (.A(\q_obuf[11]/U0/EOUT1 ), 
        .Y(\q_obuf[11]/U0/EOUT ));
    SLE \Q[6]  (.D(\Q_s[6] ), .CLK(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .EN(
        ADLIB_VCC1), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[6] ));
    IOENFF_BYPASS \q_obuf[10]/U0/U_IOENFF  (.A(\q_obuf[10]/U0/EOUT1 ), 
        .Y(\q_obuf[10]/U0/EOUT ));
    IP_INTERFACE ip_interface_inst (.A(ADLIB_VCC1), .B(ff_to_start_net)
        , .C(ADLIB_VCC1), .IPA(), .IPB(), .IPC());
    IOOUTFF_BYPASS \q_obuf[5]/U0/U_IOOUTFF  (.A(\q_obuf[5]/U0/DOUT1 ), 
        .Y(\q_obuf[5]/U0/DOUT ));
    IOENFF_BYPASS \q_obuf[1]/U0/U_IOENFF  (.A(\q_obuf[1]/U0/EOUT1 ), 
        .Y(\q_obuf[1]/U0/EOUT ));
    sdf_IOPAD_TRI \q_obuf[15]/U0/U_IOPAD  (.PAD(q[15]), .D(
        \q_obuf[15]/U0/DOUT ), .E(\q_obuf[15]/U0/EOUT ));
    IOOUTFF_BYPASS \rollover_obuf/U0/U_IOOUTFF  (.A(
        \rollover_obuf/U0/DOUT1 ), .Y(\rollover_obuf/U0/DOUT ));
    INV_BA AFLSDF_INV_3 (.A(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .Y(
        AFLSDF_INV_3_net_1));
    IOTRI_OB_EB \q_obuf[10]/U0/U_IOTRI  (.D(\q_c[10] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[10]/U0/DOUT1 ), .EOUT(\q_obuf[10]/U0/EOUT1 ));
    IOOUTFF_BYPASS \q_obuf[14]/U0/U_IOOUTFF  (.A(\q_obuf[14]/U0/DOUT1 )
        , .Y(\q_obuf[14]/U0/DOUT ));
    IOIN_IB \clk_ibuf/U0/U_IOIN  (.YIN(\clk_ibuf/U0/YIN ), .E(
        ADLIB_GND0), .Y(clk_ibuf_Z));
    CFG4 #( .INIT(16'h8000) )  \Q_skewed_RNO_1[3]  (.A(\q_c[3] ), .B(
        \q_c[0] ), .C(\q_c[12] ), .D(m8_e_0), .Y(m8_e_5));
    INV_BA AFLSDF_INV_4 (.A(rst_n_ibuf_Z), .Y(AFLSDF_INV_4_net_1));
    IOTRI_OB_EB \q_obuf[2]/U0/U_IOTRI  (.D(\q_c[2] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[2]/U0/DOUT1 ), .EOUT(\q_obuf[2]/U0/EOUT1 ));
    ARI1_CC #( .INIT(20'h4AA00) )  \Q_cry[9]  (.A(ADLIB_VCC1), .B(
        \q_c[9] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(\Q_cry_Z[8] ), 
        .S(\Q_s[9] ), .Y(), .FCO(\Q_cry_Z[9] ), .CC(NET_CC_CONFIG32), 
        .P(NET_CC_CONFIG30), .UB(NET_CC_CONFIG31));
    CFG4 #( .INIT(16'h8000) )  Q_skewed7_8 (.A(\q_c[7] ), .B(\q_c[6] ), 
        .C(\q_c[5] ), .D(\q_c[4] ), .Y(Q_skewed7_8_Z));
    IOENFF_BYPASS \q_obuf[2]/U0/U_IOENFF  (.A(\q_obuf[2]/U0/EOUT1 ), 
        .Y(\q_obuf[2]/U0/EOUT ));
    SLE \Q[2]  (.D(\Q_s[2] ), .CLK(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .EN(
        ADLIB_VCC1), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[2] ));
    IOOUTFF_BYPASS \sC_obuf[0]/U0/U_IOOUTFF  (.A(\sC_obuf[0]/U0/DOUT1 )
        , .Y(\sC_obuf[0]/U0/DOUT ));
    ARI1_CC #( .INIT(20'h4AA00) )  \Q_cry[2]  (.A(ADLIB_VCC1), .B(
        \q_c[2] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(\Q_cry_Z[1] ), 
        .S(\Q_s[2] ), .Y(), .FCO(\Q_cry_Z[2] ), .CC(NET_CC_CONFIG11), 
        .P(NET_CC_CONFIG9), .UB(NET_CC_CONFIG10));
    INV_BA AFLSDF_INV_2 (.A(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .Y(
        AFLSDF_INV_2_net_1));
    SLE \Q[4]  (.D(\Q_s[4] ), .CLK(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .EN(
        ADLIB_VCC1), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[4] ));
    SLE \Q[8]  (.D(\Q_s[8] ), .CLK(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .EN(
        ADLIB_VCC1), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[8] ));
    IOOUTFF_BYPASS \q_obuf[1]/U0/U_IOOUTFF  (.A(\q_obuf[1]/U0/DOUT1 ), 
        .Y(\q_obuf[1]/U0/DOUT ));
    RGB_NG \clk_ibuf_RNIVTI2/U0_RGB1  (.An(
        \clk_ibuf_RNIVTI2/U0_YNn_GSouth ), .ENn(ADLIB_GND0), .YL(), 
        .YR(\clk_ibuf_RNIVTI2/U0_RGB1_YR ));
    sdf_IOPAD_TRI \sC_obuf[3]/U0/U_IOPAD  (.PAD(sC[3]), .D(
        \sC_obuf[3]/U0/DOUT ), .E(\sC_obuf[3]/U0/EOUT ));
    IOTRI_OB_EB \q_obuf[8]/U0/U_IOTRI  (.D(\q_c[8] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[8]/U0/DOUT1 ), .EOUT(\q_obuf[8]/U0/EOUT1 ));
    IOOUTFF_BYPASS \q_obuf[10]/U0/U_IOOUTFF  (.A(\q_obuf[10]/U0/DOUT1 )
        , .Y(\q_obuf[10]/U0/DOUT ));
    IOOUTFF_BYPASS \q_obuf[9]/U0/U_IOOUTFF  (.A(\q_obuf[9]/U0/DOUT1 ), 
        .Y(\q_obuf[9]/U0/DOUT ));
    sdf_IOPAD_TRI \q_obuf[6]/U0/U_IOPAD  (.PAD(q[6]), .D(
        \q_obuf[6]/U0/DOUT ), .E(\q_obuf[6]/U0/EOUT ));
    IOTRI_OB_EB \q_obuf[4]/U0/U_IOTRI  (.D(\q_c[4] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[4]/U0/DOUT1 ), .EOUT(\q_obuf[4]/U0/EOUT1 ));
    INV_BA AFLSDF_INV_1 (.A(\clk_ibuf/U0/YIN1 ), .Y(AFLSDF_INV_1_net_1)
        );
    ARI1_CC #( .INIT(20'h4AA00) )  \Q_s[11]  (.A(ADLIB_VCC1), .B(
        \q_c[11] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(\Q_cry_Z[10] )
        , .S(\Q_s_Z[11] ), .Y(), .FCO(), .CC(NET_CC_CONFIG38), .P(
        NET_CC_CONFIG36), .UB(NET_CC_CONFIG37));
    IOENFF_BYPASS \sC_obuf[3]/U0/U_IOENFF  (.A(\sC_obuf[3]/U0/EOUT1 ), 
        .Y(\sC_obuf[3]/U0/EOUT ));
    ARI1_CC #( .INIT(20'h4AA00) )  \Q_cry[6]  (.A(ADLIB_VCC1), .B(
        \q_c[6] ), .C(ADLIB_GND0), .D(ADLIB_GND0), .FCI(\Q_cry_Z[5] ), 
        .S(\Q_s[6] ), .Y(), .FCO(\Q_cry_Z[6] ), .CC(NET_CC_CONFIG23), 
        .P(NET_CC_CONFIG21), .UB(NET_CC_CONFIG22));
    IOOUTFF_BYPASS \sC_obuf[2]/U0/U_IOOUTFF  (.A(\sC_obuf[2]/U0/DOUT1 )
        , .Y(\sC_obuf[2]/U0/DOUT ));
    IOOUTFF_BYPASS \q_obuf[6]/U0/U_IOOUTFF  (.A(\q_obuf[6]/U0/DOUT1 ), 
        .Y(\q_obuf[6]/U0/DOUT ));
    IOTRI_OB_EB \q_obuf[12]/U0/U_IOTRI  (.D(\q_c[12] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[12]/U0/DOUT1 ), .EOUT(\q_obuf[12]/U0/EOUT1 ));
    IOTRI_OB_EB \q_obuf[11]/U0/U_IOTRI  (.D(\q_c[11] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[11]/U0/DOUT1 ), .EOUT(\q_obuf[11]/U0/EOUT1 ));
    SLE \Q_skewed[1]  (.D(\Q_skewed_ldmx_Z[1] ), .CLK(
        AFLSDF_INV_3_net_1), .EN(\q_c[12] ), .ALn(
        \rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(ADLIB_VCC1), .SLn(
        ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(ADLIB_GND0), .Q(\q_c[13] ));
    CFG4 #( .INIT(16'h8000) )  \Q_skewed_RNO_0[2]  (.A(\q_c[7] ), .B(
        \q_c[5] ), .C(\q_c[4] ), .D(\q_c[2] ), .Y(g0_8));
    SLE \Q[5]  (.D(\Q_s[5] ), .CLK(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), .EN(
        ADLIB_VCC1), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[5] ));
    IOTRI_OB_EB \sC_obuf[2]/U0/U_IOTRI  (.D(\inverterString[1] ), .E(
        ADLIB_VCC1), .DOUT(\sC_obuf[2]/U0/DOUT1 ), .EOUT(
        \sC_obuf[2]/U0/EOUT1 ));
    FLASH_FREEZE \flash_freeze_inst/INST_FLASH_FREEZE_IP  (
        .FF_TO_START(ff_to_start_net), .FF_DONE());
    CFG1 #( .INIT(2'h1) )  \Q_RNO[0]  (.A(\q_c[0] ), .Y(\Q_s[0] ));
    GB_NG rst_n_ibuf_RNIBNDC (.An(AFLSDF_INV_4_net_1), .ENn(ADLIB_GND0)
        , .YNn(), .YSn(\rst_n_ibuf_RNIBNDC/U0_YNn_GSouth ));
    CFG4 #( .INIT(16'h8000) )  \Q_skewed_RNO_3[2]  (.A(\q_c[11] ), .B(
        \q_c[10] ), .C(\q_c[3] ), .D(\q_c[1] ), .Y(g0_9));
    IOENFF_BYPASS \q_obuf[12]/U0/U_IOENFF  (.A(\q_obuf[12]/U0/EOUT1 ), 
        .Y(\q_obuf[12]/U0/EOUT ));
    IOOUTFF_BYPASS \q_obuf[12]/U0/U_IOOUTFF  (.A(\q_obuf[12]/U0/DOUT1 )
        , .Y(\q_obuf[12]/U0/DOUT ));
    CFG4 #( .INIT(16'h8000) )  \Q_skewed_RNO_3[3]  (.A(\q_c[11] ), .B(
        \q_c[10] ), .C(\q_c[2] ), .D(\q_c[1] ), .Y(m8_e_6));
    CFG2 #( .INIT(4'h8) )  \Q_skewed_RNO_2[2]  (.A(\q_c[8] ), .B(
        \q_c[9] ), .Y(g0_6));
    IOENFF_BYPASS \q_obuf[7]/U0/U_IOENFF  (.A(\q_obuf[7]/U0/EOUT1 ), 
        .Y(\q_obuf[7]/U0/EOUT ));
    IOTRI_OB_EB \q_obuf[9]/U0/U_IOTRI  (.D(\q_c[9] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[9]/U0/DOUT1 ), .EOUT(\q_obuf[9]/U0/EOUT1 ));
    IOOUTFF_BYPASS \q_obuf[7]/U0/U_IOOUTFF  (.A(\q_obuf[7]/U0/DOUT1 ), 
        .Y(\q_obuf[7]/U0/DOUT ));
    SLE \Q[10]  (.D(\Q_s[10] ), .CLK(\clk_ibuf_RNIVTI2/U0_RGB1_YR ), 
        .EN(ADLIB_VCC1), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[10] ));
    IOTRI_OB_EB \q_obuf[5]/U0/U_IOTRI  (.D(\q_c[5] ), .E(ADLIB_VCC1), 
        .DOUT(\q_obuf[5]/U0/DOUT1 ), .EOUT(\q_obuf[5]/U0/EOUT1 ));
    IOENFF_BYPASS \q_obuf[13]/U0/U_IOENFF  (.A(\q_obuf[13]/U0/EOUT1 ), 
        .Y(\q_obuf[13]/U0/EOUT ));
    SLE \Q_skewed[0]  (.D(ADLIB_VCC1), .CLK(AFLSDF_INV_5_net_1), .EN(
        Q_skewed7_Z), .ALn(\rst_n_ibuf_RNIBNDC/U0_RGB1_YR ), .ADn(
        ADLIB_VCC1), .SLn(ADLIB_VCC1), .SD(ADLIB_GND0), .LAT(
        ADLIB_GND0), .Q(\q_c[12] ));
    CFG1 #( .INIT(2'h1) )  clk_ibuf_RNIVTI2_0 (.A(clk_ibuf_Z), .Y(
        \inverterString[1] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
