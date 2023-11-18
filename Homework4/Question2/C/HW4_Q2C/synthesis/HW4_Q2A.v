`timescale 1 ns/100 ps
// Version: v12.6 12.900.20.24


module HW4_Q2A(
       clk,
       rst_n,
       q,
       rollover
    );
input  clk;
input  rst_n;
output [15:0] q;
output rollover;

    wire [15:0] q_c;
    wire [14:0] Q_s;
    wire [14:1] Q_cry_Z;
    wire [15:15] Q_s_Z;
    wire [14:1] Q_cry_Y;
    wire [15:15] Q_s_FCO;
    wire [15:15] Q_s_Y;
    wire VCC, Rollover5_Z, GND, clk_c, rst_n_c, rollover_c, 
        Rollover5_8_Z, Rollover5_9_Z, Rollover5_10_Z, Rollover5_11_Z, 
        Q_s_1_FCO, Q_s_1_S, Q_s_1_Y, clk_ibuf_Z, rst_n_ibuf_Z;
    
    OUTBUF #( .IOSTD("") )  \q_obuf[4]  (.D(q_c[4]), .PAD(q[4]));
    OUTBUF #( .IOSTD("") )  \q_obuf[2]  (.D(q_c[2]), .PAD(q[2]));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[10]  (.A(VCC), .B(q_c[10]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[9]), .S(Q_s[10]), .Y(Q_cry_Y[10]), 
        .FCO(Q_cry_Z[10]));
    OUTBUF #( .IOSTD("") )  \q_obuf[11]  (.D(q_c[11]), .PAD(q[11]));
    OUTBUF #( .IOSTD("") )  \q_obuf[12]  (.D(q_c[12]), .PAD(q[12]));
    SLE \Q[11]  (.D(Q_s[11]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[11]));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[14]  (.A(VCC), .B(q_c[14]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[13]), .S(Q_s[14]), .Y(Q_cry_Y[14]), 
        .FCO(Q_cry_Z[14]));
    CLKINT clk_ibuf_RNIVTI2 (.A(clk_ibuf_Z), .Y(clk_c));
    OUTBUF #( .IOSTD("") )  \q_obuf[9]  (.D(q_c[9]), .PAD(q[9]));
    SLE \Q[1]  (.D(Q_s[1]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[1]));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[9]  (.A(VCC), .B(q_c[9]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[8]), .S(Q_s[9]), .Y(Q_cry_Y[9]), 
        .FCO(Q_cry_Z[9]));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[2]  (.A(VCC), .B(q_c[2]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[1]), .S(Q_s[2]), .Y(Q_cry_Y[2]), 
        .FCO(Q_cry_Z[2]));
    INBUF #( .IOSTD("") )  rst_n_ibuf (.PAD(rst_n), .Y(rst_n_ibuf_Z));
    OUTBUF #( .IOSTD("") )  \q_obuf[15]  (.D(q_c[15]), .PAD(q[15]));
    SLE \Q[5]  (.D(Q_s[5]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[5]));
    SLE \Q[10]  (.D(Q_s[10]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[10]));
    OUTBUF #( .IOSTD("") )  \q_obuf[13]  (.D(q_c[13]), .PAD(q[13]));
    OUTBUF #( .IOSTD("") )  \q_obuf[0]  (.D(q_c[0]), .PAD(q[0]));
    CFG4 #( .INIT(16'h8000) )  Rollover5_8 (.A(q_c[4]), .B(q_c[3]), .C(
        q_c[2]), .D(q_c[1]), .Y(Rollover5_8_Z));
    OUTBUF #( .IOSTD("") )  \q_obuf[7]  (.D(q_c[7]), .PAD(q[7]));
    CFG4 #( .INIT(16'h0080) )  Rollover5_11 (.A(q_c[15]), .B(q_c[14]), 
        .C(q_c[13]), .D(q_c[0]), .Y(Rollover5_11_Z));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[7]  (.A(VCC), .B(q_c[7]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[6]), .S(Q_s[7]), .Y(Q_cry_Y[7]), 
        .FCO(Q_cry_Z[7]));
    SLE \Q[0]  (.D(Q_s[0]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[0]));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[6]  (.A(VCC), .B(q_c[6]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[5]), .S(Q_s[6]), .Y(Q_cry_Y[6]), 
        .FCO(Q_cry_Z[6]));
    SLE \Q[7]  (.D(Q_s[7]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[7]));
    CFG4 #( .INIT(16'h8000) )  Rollover5 (.A(Rollover5_8_Z), .B(
        Rollover5_11_Z), .C(Rollover5_10_Z), .D(Rollover5_9_Z), .Y(
        Rollover5_Z));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[12]  (.A(VCC), .B(q_c[12]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[11]), .S(Q_s[12]), .Y(Q_cry_Y[12]), 
        .FCO(Q_cry_Z[12]));
    OUTBUF #( .IOSTD("") )  \q_obuf[6]  (.D(q_c[6]), .PAD(q[6]));
    OUTBUF #( .IOSTD("") )  \q_obuf[14]  (.D(q_c[14]), .PAD(q[14]));
    CFG4 #( .INIT(16'h8000) )  Rollover5_9 (.A(q_c[8]), .B(q_c[7]), .C(
        q_c[6]), .D(q_c[5]), .Y(Rollover5_9_Z));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[8]  (.A(VCC), .B(q_c[8]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[7]), .S(Q_s[8]), .Y(Q_cry_Y[8]), 
        .FCO(Q_cry_Z[8]));
    SLE \Q[3]  (.D(Q_s[3]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[3]));
    SLE \Q[6]  (.D(Q_s[6]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[6]));
    OUTBUF #( .IOSTD("") )  \q_obuf[8]  (.D(q_c[8]), .PAD(q[8]));
    SLE \Q[9]  (.D(Q_s[9]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[9]));
    SLE \Q[14]  (.D(Q_s[14]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[14]));
    CFG4 #( .INIT(16'h8000) )  Rollover5_10 (.A(q_c[12]), .B(q_c[11]), 
        .C(q_c[10]), .D(q_c[9]), .Y(Rollover5_10_Z));
    SLE \Q[13]  (.D(Q_s[13]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[13]));
    OUTBUF #( .IOSTD("") )  rollover_obuf (.D(rollover_c), .PAD(
        rollover));
    CLKINT rst_n_ibuf_RNIBNDC (.A(rst_n_ibuf_Z), .Y(rst_n_c));
    ARI1 #( .INIT(20'h4AA00) )  \Q_s[15]  (.A(VCC), .B(q_c[15]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[14]), .S(Q_s_Z[15]), .Y(Q_s_Y[15]), 
        .FCO(Q_s_FCO[15]));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[3]  (.A(VCC), .B(q_c[3]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[2]), .S(Q_s[3]), .Y(Q_cry_Y[3]), 
        .FCO(Q_cry_Z[3]));
    OUTBUF #( .IOSTD("") )  \q_obuf[1]  (.D(q_c[1]), .PAD(q[1]));
    SLE \Q[2]  (.D(Q_s[2]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[2]));
    SLE Rollover (.D(Rollover5_Z), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c)
        , .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(rollover_c));
    OUTBUF #( .IOSTD("") )  \q_obuf[3]  (.D(q_c[3]), .PAD(q[3]));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[1]  (.A(VCC), .B(q_c[1]), .C(
        GND), .D(GND), .FCI(Q_s_1_FCO), .S(Q_s[1]), .Y(Q_cry_Y[1]), 
        .FCO(Q_cry_Z[1]));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[11]  (.A(VCC), .B(q_c[11]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[10]), .S(Q_s[11]), .Y(Q_cry_Y[11]), 
        .FCO(Q_cry_Z[11]));
    SLE \Q[8]  (.D(Q_s[8]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[8]));
    SLE \Q[12]  (.D(Q_s[12]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[12]));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[13]  (.A(VCC), .B(q_c[13]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[12]), .S(Q_s[13]), .Y(Q_cry_Y[13]), 
        .FCO(Q_cry_Z[13]));
    SLE \Q[15]  (.D(Q_s_Z[15]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[15]));
    SLE \Q[4]  (.D(Q_s[4]), .CLK(clk_c), .EN(VCC), .ALn(rst_n_c), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(q_c[4]));
    CFG1 #( .INIT(2'h1) )  \Q_RNO[0]  (.A(q_c[0]), .Y(Q_s[0]));
    OUTBUF #( .IOSTD("") )  \q_obuf[5]  (.D(q_c[5]), .PAD(q[5]));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[4]  (.A(VCC), .B(q_c[4]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[3]), .S(Q_s[4]), .Y(Q_cry_Y[4]), 
        .FCO(Q_cry_Z[4]));
    ARI1 #( .INIT(20'h4AA00) )  Q_s_1 (.A(VCC), .B(q_c[0]), .C(GND), 
        .D(GND), .FCI(VCC), .S(Q_s_1_S), .Y(Q_s_1_Y), .FCO(Q_s_1_FCO));
    ARI1 #( .INIT(20'h4AA00) )  \Q_cry[5]  (.A(VCC), .B(q_c[5]), .C(
        GND), .D(GND), .FCI(Q_cry_Z[4]), .S(Q_s[5]), .Y(Q_cry_Y[5]), 
        .FCO(Q_cry_Z[5]));
    INBUF #( .IOSTD("") )  clk_ibuf (.PAD(clk), .Y(clk_ibuf_Z));
    OUTBUF #( .IOSTD("") )  \q_obuf[10]  (.D(q_c[10]), .PAD(q[10]));
    
endmodule
