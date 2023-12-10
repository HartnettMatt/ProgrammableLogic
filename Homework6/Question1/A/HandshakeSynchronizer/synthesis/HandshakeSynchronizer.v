`timescale 1 ns/100 ps
// Version: v12.6 12.900.20.24


module sourceFSM(
       count_c,
       transfer,
       ack,
       counte_c,
       req_source,
       clkA_c,
       reset_c_i
    );
input  [7:0] count_c;
output [7:0] transfer;
input  ack;
input  counte_c;
output req_source;
input  clkA_c;
input  reset_c_i;

    wire [7:0] data_out_5_Z;
    wire [1:0] state_Z;
    wire [1:0] state_ns;
    wire VCC, N_22_i, GND, un1_state_3_0_Z, data_out7_0_a2_Z, N_3, N_2, 
        N_1;
    
    GND GND_Z (.Y(GND));
    SLE \data_out[4]  (.D(data_out_5_Z[4]), .CLK(clkA_c), .EN(N_22_i), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        transfer[4]));
    CFG2 #( .INIT(4'h2) )  data_out7_0_a2 (.A(counte_c), .B(ack), .Y(
        data_out7_0_a2_Z));
    SLE \data_out[7]  (.D(data_out_5_Z[7]), .CLK(clkA_c), .EN(N_22_i), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        transfer[7]));
    CFG2 #( .INIT(4'h8) )  \data_out_5[1]  (.A(data_out7_0_a2_Z), .B(
        count_c[1]), .Y(data_out_5_Z[1]));
    SLE \data_out[0]  (.D(data_out_5_Z[0]), .CLK(clkA_c), .EN(N_22_i), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        transfer[0]));
    VCC VCC_Z (.Y(VCC));
    SLE \state[1]  (.D(state_ns[1]), .CLK(clkA_c), .EN(VCC), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        state_Z[1]));
    CFG3 #( .INIT(8'h46) )  \state_ns_1_0_.m4  (.A(state_Z[1]), .B(
        state_Z[0]), .C(ack), .Y(state_ns[1]));
    CFG2 #( .INIT(4'h8) )  \data_out_5[0]  (.A(data_out7_0_a2_Z), .B(
        count_c[0]), .Y(data_out_5_Z[0]));
    CFG2 #( .INIT(4'h8) )  \data_out_5[5]  (.A(data_out7_0_a2_Z), .B(
        count_c[5]), .Y(data_out_5_Z[5]));
    SLE \data_out[3]  (.D(data_out_5_Z[3]), .CLK(clkA_c), .EN(N_22_i), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        transfer[3]));
    CFG2 #( .INIT(4'h8) )  \data_out_5[4]  (.A(data_out7_0_a2_Z), .B(
        count_c[4]), .Y(data_out_5_Z[4]));
    SLE \data_out[1]  (.D(data_out_5_Z[1]), .CLK(clkA_c), .EN(N_22_i), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        transfer[1]));
    CFG2 #( .INIT(4'h8) )  \data_out_5[6]  (.A(data_out7_0_a2_Z), .B(
        count_c[6]), .Y(data_out_5_Z[6]));
    CFG3 #( .INIT(8'hEC) )  un1_state_3_0 (.A(state_Z[1]), .B(
        state_Z[0]), .C(ack), .Y(un1_state_3_0_Z));
    SLE \data_out[5]  (.D(data_out_5_Z[5]), .CLK(clkA_c), .EN(N_22_i), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        transfer[5]));
    CFG2 #( .INIT(4'h8) )  \data_out_5[2]  (.A(data_out7_0_a2_Z), .B(
        count_c[2]), .Y(data_out_5_Z[2]));
    SLE \data_out[6]  (.D(data_out_5_Z[6]), .CLK(clkA_c), .EN(N_22_i), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        transfer[6]));
    CFG2 #( .INIT(4'h8) )  \data_out_5[7]  (.A(data_out7_0_a2_Z), .B(
        count_c[7]), .Y(data_out_5_Z[7]));
    SLE \state[0]  (.D(state_ns[0]), .CLK(clkA_c), .EN(VCC), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        state_Z[0]));
    CFG2 #( .INIT(4'h8) )  \data_out_5[3]  (.A(data_out7_0_a2_Z), .B(
        count_c[3]), .Y(data_out_5_Z[3]));
    SLE \data_out[2]  (.D(data_out_5_Z[2]), .CLK(clkA_c), .EN(N_22_i), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        transfer[2]));
    CFG4 #( .INIT(16'h0010) )  \state_ns_1_0_.m3  (.A(state_Z[0]), .B(
        state_Z[1]), .C(counte_c), .D(ack), .Y(state_ns[0]));
    CFG3 #( .INIT(8'h31) )  \state_RNIOOF31[1]  (.A(state_Z[1]), .B(
        state_Z[0]), .C(ack), .Y(N_22_i));
    SLE req (.D(state_Z[0]), .CLK(clkA_c), .EN(un1_state_3_0_Z), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        req_source));
    
endmodule


module sinkFSM(
       transfer,
       sink_out,
       counte_c,
       req,
       transfer_enable_1z,
       ack_sink,
       clkB_c,
       reset_c_i
    );
input  [7:0] transfer;
output [7:0] sink_out;
input  counte_c;
input  req;
output transfer_enable_1z;
output ack_sink;
input  clkB_c;
input  reset_c_i;

    wire [7:0] data_out_4_Z;
    wire [1:0] state_Z;
    wire [1:0] state_ns;
    wire VCC, state_4_d, GND, un1_ack_0_sqmuxa_1_0_Z, N_21_i_Z, N_24_i, 
        N_3, N_2, N_1;
    
    GND GND_Z (.Y(GND));
    CFG2 #( .INIT(4'h8) )  \data_out_4[7]  (.A(transfer[7]), .B(
        N_21_i_Z), .Y(data_out_4_Z[7]));
    SLE \data_out[4]  (.D(data_out_4_Z[4]), .CLK(clkB_c), .EN(
        state_4_d), .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(sink_out[4]));
    CFG2 #( .INIT(4'h8) )  \data_out_4[3]  (.A(transfer[3]), .B(
        N_21_i_Z), .Y(data_out_4_Z[3]));
    CFG2 #( .INIT(4'h8) )  \data_out_4[2]  (.A(transfer[2]), .B(
        N_21_i_Z), .Y(data_out_4_Z[2]));
    SLE \data_out[7]  (.D(data_out_4_Z[7]), .CLK(clkB_c), .EN(
        state_4_d), .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(sink_out[7]));
    SLE \data_out[0]  (.D(data_out_4_Z[0]), .CLK(clkB_c), .EN(
        state_4_d), .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(sink_out[0]));
    CFG3 #( .INIT(8'h15) )  transfer_enable_RNO (.A(state_Z[0]), .B(
        state_Z[1]), .C(req), .Y(N_24_i));
    VCC VCC_Z (.Y(VCC));
    SLE \state[1]  (.D(state_ns[1]), .CLK(clkB_c), .EN(VCC), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        state_Z[1]));
    CFG3 #( .INIT(8'h62) )  \state_ns_1_0_.m4  (.A(state_Z[0]), .B(
        state_Z[1]), .C(req), .Y(state_ns[1]));
    CFG2 #( .INIT(4'h8) )  N_21_i (.A(counte_c), .B(req), .Y(N_21_i_Z));
    CFG2 #( .INIT(4'h8) )  \data_out_4[6]  (.A(transfer[6]), .B(
        N_21_i_Z), .Y(data_out_4_Z[6]));
    CFG4 #( .INIT(16'hF3F7) )  un1_ack_0_sqmuxa_1_0 (.A(state_Z[1]), 
        .B(req), .C(state_Z[0]), .D(counte_c), .Y(
        un1_ack_0_sqmuxa_1_0_Z));
    SLE \data_out[3]  (.D(data_out_4_Z[3]), .CLK(clkB_c), .EN(
        state_4_d), .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(sink_out[3]));
    SLE \data_out[1]  (.D(data_out_4_Z[1]), .CLK(clkB_c), .EN(
        state_4_d), .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(sink_out[1]));
    SLE ack (.D(state_Z[0]), .CLK(clkB_c), .EN(un1_ack_0_sqmuxa_1_0_Z), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        ack_sink));
    CFG2 #( .INIT(4'h1) )  state_s0_0_a4 (.A(state_Z[0]), .B(
        state_Z[1]), .Y(state_4_d));
    CFG2 #( .INIT(4'h8) )  \data_out_4[5]  (.A(transfer[5]), .B(
        N_21_i_Z), .Y(data_out_4_Z[5]));
    SLE transfer_enable (.D(N_21_i_Z), .CLK(clkB_c), .EN(N_24_i), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        transfer_enable_1z));
    SLE \data_out[5]  (.D(data_out_4_Z[5]), .CLK(clkB_c), .EN(
        state_4_d), .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(sink_out[5]));
    CFG2 #( .INIT(4'h8) )  \data_out_4[0]  (.A(transfer[0]), .B(
        N_21_i_Z), .Y(data_out_4_Z[0]));
    SLE \data_out[6]  (.D(data_out_4_Z[6]), .CLK(clkB_c), .EN(
        state_4_d), .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(sink_out[6]));
    CFG2 #( .INIT(4'h8) )  \data_out_4[1]  (.A(transfer[1]), .B(
        N_21_i_Z), .Y(data_out_4_Z[1]));
    SLE \state[0]  (.D(state_ns[0]), .CLK(clkB_c), .EN(VCC), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        state_Z[0]));
    SLE \data_out[2]  (.D(data_out_4_Z[2]), .CLK(clkB_c), .EN(
        state_4_d), .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), 
        .LAT(GND), .Q(sink_out[2]));
    CFG4 #( .INIT(16'h0400) )  \state_ns_1_0_.m3  (.A(state_Z[1]), .B(
        req), .C(state_Z[0]), .D(counte_c), .Y(state_ns[0]));
    CFG2 #( .INIT(4'h8) )  \data_out_4[4]  (.A(transfer[4]), .B(
        N_21_i_Z), .Y(data_out_4_Z[4]));
    
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

    wire [7:0] transfer;
    wire [7:0] sink_out;
    wire [7:0] count_c;
    wire [7:0] Dout_c;
    wire [6:0] count_s;
    wire [6:1] count_cry_Z;
    wire [7:7] count_s_Z;
    wire [6:1] count_cry_Y;
    wire [7:7] count_s_FCO;
    wire [7:7] count_s_Y;
    wire req_source, \U0.ack , \U1.req , ack_sink, transfer_enable, 
        req_sync_Z, ack_sync_Z, Dout4_Z, GND, VCC, clkA_c, clkB_c, 
        reset_c, counte_c, count_s_9_FCO, count_s_9_S, count_s_9_Y, 
        reset_c_i, reset_ibuf_Z, clkB_ibuf_Z, clkA_ibuf_Z;
    
    sourceFSM U0 (.count_c({count_c[7], count_c[6], count_c[5], 
        count_c[4], count_c[3], count_c[2], count_c[1], count_c[0]}), 
        .transfer({transfer[7], transfer[6], transfer[5], transfer[4], 
        transfer[3], transfer[2], transfer[1], transfer[0]}), .ack(
        \U0.ack ), .counte_c(counte_c), .req_source(req_source), 
        .clkA_c(clkA_c), .reset_c_i(reset_c_i));
    INBUF #( .IOSTD("") )  clkB_ibuf (.PAD(clkB), .Y(clkB_ibuf_Z));
    CFG2 #( .INIT(4'h8) )  Dout4 (.A(counte_c), .B(transfer_enable), 
        .Y(Dout4_Z));
    ARI1 #( .INIT(20'h4AA00) )  \count_cry[6]  (.A(VCC), .B(count_c[6])
        , .C(GND), .D(GND), .FCI(count_cry_Z[5]), .S(count_s[6]), .Y(
        count_cry_Y[6]), .FCO(count_cry_Z[6]));
    INBUF #( .IOSTD("") )  enable_ibuf (.PAD(enable), .Y(counte_c));
    SLE \count_Z[0]  (.D(count_s[0]), .CLK(clkA_c), .EN(counte_c), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count_c[0]));
    INBUF #( .IOSTD("") )  clkA_ibuf (.PAD(clkA), .Y(clkA_ibuf_Z));
    ARI1 #( .INIT(20'h4AA00) )  \count_cry[3]  (.A(VCC), .B(count_c[3])
        , .C(GND), .D(GND), .FCI(count_cry_Z[2]), .S(count_s[3]), .Y(
        count_cry_Y[3]), .FCO(count_cry_Z[3]));
    ARI1 #( .INIT(20'h4AA00) )  count_s_9 (.A(VCC), .B(count_c[0]), .C(
        GND), .D(GND), .FCI(VCC), .S(count_s_9_S), .Y(count_s_9_Y), 
        .FCO(count_s_9_FCO));
    OUTBUF #( .IOSTD("") )  \Dout_obuf[0]  (.D(Dout_c[0]), .PAD(
        Dout[0]));
    SLE \count_Z[4]  (.D(count_s[4]), .CLK(clkA_c), .EN(counte_c), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count_c[4]));
    CLKINT clkA_ibuf_RNI0V4D (.A(clkA_ibuf_Z), .Y(clkA_c));
    SLE \count_Z[1]  (.D(count_s[1]), .CLK(clkA_c), .EN(counte_c), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count_c[1]));
    OUTBUF #( .IOSTD("") )  \count_obuf[3]  (.D(count_c[3]), .PAD(
        count[3]));
    OUTBUF #( .IOSTD("") )  \Dout_obuf[7]  (.D(Dout_c[7]), .PAD(
        Dout[7]));
    OUTBUF #( .IOSTD("") )  \Dout_obuf[5]  (.D(Dout_c[5]), .PAD(
        Dout[5]));
    sinkFSM U1 (.transfer({transfer[7], transfer[6], transfer[5], 
        transfer[4], transfer[3], transfer[2], transfer[1], 
        transfer[0]}), .sink_out({sink_out[7], sink_out[6], 
        sink_out[5], sink_out[4], sink_out[3], sink_out[2], 
        sink_out[1], sink_out[0]}), .counte_c(counte_c), .req(\U1.req )
        , .transfer_enable_1z(transfer_enable), .ack_sink(ack_sink), 
        .clkB_c(clkB_c), .reset_c_i(reset_c_i));
    OUTBUF #( .IOSTD("") )  \count_obuf[2]  (.D(count_c[2]), .PAD(
        count[2]));
    CLKINT clkB_ibuf_RNI14F7 (.A(clkB_ibuf_Z), .Y(clkB_c));
    ARI1 #( .INIT(20'h4AA00) )  \count_s[7]  (.A(VCC), .B(count_c[7]), 
        .C(GND), .D(GND), .FCI(count_cry_Z[6]), .S(count_s_Z[7]), .Y(
        count_s_Y[7]), .FCO(count_s_FCO[7]));
    SLE \Dout_Z[0]  (.D(sink_out[0]), .CLK(clkB_c), .EN(Dout4_Z), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        Dout_c[0]));
    OUTBUF #( .IOSTD("") )  \count_obuf[0]  (.D(count_c[0]), .PAD(
        count[0]));
    SLE \Dout_Z[5]  (.D(sink_out[5]), .CLK(clkB_c), .EN(Dout4_Z), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        Dout_c[5]));
    OUTBUF #( .IOSTD("") )  \Dout_obuf[6]  (.D(Dout_c[6]), .PAD(
        Dout[6]));
    SLE req_sink (.D(req_sync_Z), .CLK(clkB_c), .EN(VCC), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        \U1.req ));
    OUTBUF #( .IOSTD("") )  \Dout_obuf[2]  (.D(Dout_c[2]), .PAD(
        Dout[2]));
    OUTBUF #( .IOSTD("") )  \count_obuf[7]  (.D(count_c[7]), .PAD(
        count[7]));
    OUTBUF #( .IOSTD("") )  \Dout_obuf[4]  (.D(Dout_c[4]), .PAD(
        Dout[4]));
    SLE \Dout_Z[4]  (.D(sink_out[4]), .CLK(clkB_c), .EN(Dout4_Z), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        Dout_c[4]));
    SLE \count_Z[6]  (.D(count_s[6]), .CLK(clkA_c), .EN(counte_c), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count_c[6]));
    SLE req_sync (.D(req_source), .CLK(clkB_c), .EN(VCC), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        req_sync_Z));
    OUTBUF #( .IOSTD("") )  \count_obuf[6]  (.D(count_c[6]), .PAD(
        count[6]));
    OUTBUF #( .IOSTD("") )  \Dout_obuf[1]  (.D(Dout_c[1]), .PAD(
        Dout[1]));
    SLE ack_sync (.D(ack_sink), .CLK(clkA_c), .EN(VCC), .ALn(reset_c_i)
        , .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ack_sync_Z));
    SLE \Dout_Z[2]  (.D(sink_out[2]), .CLK(clkB_c), .EN(Dout4_Z), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        Dout_c[2]));
    CFG1 #( .INIT(2'h1) )  \count_RNO[0]  (.A(count_c[0]), .Y(
        count_s[0]));
    OUTBUF #( .IOSTD("") )  \count_obuf[1]  (.D(count_c[1]), .PAD(
        count[1]));
    CFG1 #( .INIT(2'h1) )  reset_ibuf_RNI8255_0 (.A(reset_c), .Y(
        reset_c_i));
    CLKINT reset_ibuf_RNI8255 (.A(reset_ibuf_Z), .Y(reset_c));
    ARI1 #( .INIT(20'h4AA00) )  \count_cry[1]  (.A(VCC), .B(count_c[1])
        , .C(GND), .D(GND), .FCI(count_s_9_FCO), .S(count_s[1]), .Y(
        count_cry_Y[1]), .FCO(count_cry_Z[1]));
    ARI1 #( .INIT(20'h4AA00) )  \count_cry[4]  (.A(VCC), .B(count_c[4])
        , .C(GND), .D(GND), .FCI(count_cry_Z[3]), .S(count_s[4]), .Y(
        count_cry_Y[4]), .FCO(count_cry_Z[4]));
    OUTBUF #( .IOSTD("") )  \count_obuf[5]  (.D(count_c[5]), .PAD(
        count[5]));
    ARI1 #( .INIT(20'h4AA00) )  \count_cry[2]  (.A(VCC), .B(count_c[2])
        , .C(GND), .D(GND), .FCI(count_cry_Z[1]), .S(count_s[2]), .Y(
        count_cry_Y[2]), .FCO(count_cry_Z[2]));
    SLE ack_source (.D(ack_sync_Z), .CLK(clkA_c), .EN(VCC), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        \U0.ack ));
    SLE \Dout_Z[1]  (.D(sink_out[1]), .CLK(clkB_c), .EN(Dout4_Z), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        Dout_c[1]));
    SLE \Dout_Z[6]  (.D(sink_out[6]), .CLK(clkB_c), .EN(Dout4_Z), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        Dout_c[6]));
    ARI1 #( .INIT(20'h4AA00) )  \count_cry[5]  (.A(VCC), .B(count_c[5])
        , .C(GND), .D(GND), .FCI(count_cry_Z[4]), .S(count_s[5]), .Y(
        count_cry_Y[5]), .FCO(count_cry_Z[5]));
    GND GND_Z (.Y(GND));
    OUTBUF #( .IOSTD("") )  \count_obuf[4]  (.D(count_c[4]), .PAD(
        count[4]));
    VCC VCC_Z (.Y(VCC));
    SLE \count_Z[3]  (.D(count_s[3]), .CLK(clkA_c), .EN(counte_c), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count_c[3]));
    INBUF #( .IOSTD("") )  reset_ibuf (.PAD(reset), .Y(reset_ibuf_Z));
    OUTBUF #( .IOSTD("") )  \Dout_obuf[3]  (.D(Dout_c[3]), .PAD(
        Dout[3]));
    SLE \Dout_Z[7]  (.D(sink_out[7]), .CLK(clkB_c), .EN(Dout4_Z), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        Dout_c[7]));
    SLE \count_Z[7]  (.D(count_s_Z[7]), .CLK(clkA_c), .EN(counte_c), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count_c[7]));
    SLE \Dout_Z[3]  (.D(sink_out[3]), .CLK(clkB_c), .EN(Dout4_Z), .ALn(
        reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        Dout_c[3]));
    SLE \count_Z[2]  (.D(count_s[2]), .CLK(clkA_c), .EN(counte_c), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count_c[2]));
    SLE \count_Z[5]  (.D(count_s[5]), .CLK(clkA_c), .EN(counte_c), 
        .ALn(reset_c_i), .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(
        count_c[5]));
    
endmodule
