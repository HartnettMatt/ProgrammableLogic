`timescale 1 ns/100 ps
// Version: v12.6 12.900.20.24


module HW2P7(
       P,
       CP,
       SR,
       PE,
       CEP,
       CET,
       Q,
       TC
    );
input  [3:0] P;
input  CP;
input  SR;
input  PE;
input  CEP;
input  CET;
output [3:0] Q;
output TC;

    wire [3:0] count_0_Z;
    wire [3:0] P_c;
    wire [3:0] Q_c;
    wire GND, VCC, N_5, N_6, N_7, N_8, \un1_count_1.CO0_Z , CP_c, SR_c, 
        PE_c, CEP_c, CET_c, TC_c, TC_1_Z, CP_ibuf_Z;
    
    CFG4 #( .INIT(16'h7F80) )  \un1_count_1.SUM[1]  (.A(CEP_c), .B(
        CET_c), .C(Q_c[0]), .D(Q_c[1]), .Y(N_6));
    GND GND_Z (.Y(GND));
    CFG4 #( .INIT(16'h78F0) )  \un1_count_1.SUM[3]  (.A(Q_c[1]), .B(
        \un1_count_1.CO0_Z ), .C(Q_c[3]), .D(Q_c[2]), .Y(N_8));
    CFG4 #( .INIT(16'hA808) )  \count_0[3]  (.A(SR_c), .B(P_c[3]), .C(
        PE_c), .D(N_8), .Y(count_0_Z[3]));
    VCC VCC_Z (.Y(VCC));
    INBUF #( .IOSTD("") )  \P_ibuf[3]  (.PAD(P[3]), .Y(P_c[3]));
    INBUF #( .IOSTD("") )  \P_ibuf[1]  (.PAD(P[1]), .Y(P_c[1]));
    INBUF #( .IOSTD("") )  \P_ibuf[2]  (.PAD(P[2]), .Y(P_c[2]));
    SLE \count[3]  (.D(count_0_Z[3]), .CLK(CP_c), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(Q_c[3]));
    INBUF #( .IOSTD("") )  CET_ibuf (.PAD(CET), .Y(CET_c));
    SLE \count[0]  (.D(count_0_Z[0]), .CLK(CP_c), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(Q_c[0]));
    CFG3 #( .INIT(8'h78) )  \un1_count_1.SUM[2]  (.A(Q_c[1]), .B(
        \un1_count_1.CO0_Z ), .C(Q_c[2]), .Y(N_7));
    CFG4 #( .INIT(16'hA808) )  \count_0[1]  (.A(SR_c), .B(P_c[1]), .C(
        PE_c), .D(N_6), .Y(count_0_Z[1]));
    OUTBUF #( .IOSTD("") )  TC_obuf (.D(TC_c), .PAD(TC));
    OUTBUF #( .IOSTD("") )  \Q_obuf[3]  (.D(Q_c[3]), .PAD(Q[3]));
    OUTBUF #( .IOSTD("") )  \Q_obuf[1]  (.D(Q_c[1]), .PAD(Q[1]));
    INBUF #( .IOSTD("") )  PE_ibuf (.PAD(PE), .Y(PE_c));
    CFG3 #( .INIT(8'h6C) )  \un1_count_1.SUM[0]  (.A(CEP_c), .B(Q_c[0])
        , .C(CET_c), .Y(N_5));
    OUTBUF #( .IOSTD("") )  \Q_obuf[2]  (.D(Q_c[2]), .PAD(Q[2]));
    INBUF #( .IOSTD("") )  \P_ibuf[0]  (.PAD(P[0]), .Y(P_c[0]));
    INBUF #( .IOSTD("") )  CEP_ibuf (.PAD(CEP), .Y(CEP_c));
    CFG4 #( .INIT(16'hA808) )  \count_0[2]  (.A(SR_c), .B(P_c[2]), .C(
        PE_c), .D(N_7), .Y(count_0_Z[2]));
    CFG4 #( .INIT(16'hA808) )  \count_0[0]  (.A(SR_c), .B(P_c[0]), .C(
        PE_c), .D(N_5), .Y(count_0_Z[0]));
    INBUF #( .IOSTD("") )  SR_ibuf (.PAD(SR), .Y(SR_c));
    CLKINT CP_ibuf_RNIO6T9 (.A(CP_ibuf_Z), .Y(CP_c));
    INBUF #( .IOSTD("") )  CP_ibuf (.PAD(CP), .Y(CP_ibuf_Z));
    CFG2 #( .INIT(4'h8) )  TC_1 (.A(Q_c[0]), .B(Q_c[1]), .Y(TC_1_Z));
    SLE \count[1]  (.D(count_0_Z[1]), .CLK(CP_c), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(Q_c[1]));
    OUTBUF #( .IOSTD("") )  \Q_obuf[0]  (.D(Q_c[0]), .PAD(Q[0]));
    CFG4 #( .INIT(16'h8000) )  TC_cZ (.A(TC_1_Z), .B(Q_c[3]), .C(
        Q_c[2]), .D(CET_c), .Y(TC_c));
    CFG3 #( .INIT(8'h80) )  \un1_count_1.CO0  (.A(CEP_c), .B(Q_c[0]), 
        .C(CET_c), .Y(\un1_count_1.CO0_Z ));
    SLE \count[2]  (.D(count_0_Z[2]), .CLK(CP_c), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(Q_c[2]));
    
endmodule
