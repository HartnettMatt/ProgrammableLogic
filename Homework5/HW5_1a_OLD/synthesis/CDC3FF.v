`timescale 1 ns/100 ps
// Version: v12.6 12.900.20.24


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

    wire data_Z, VCC, GND, FF1_d_Z, FF2_d_Z, Aclk_c, Bclk_c, reset_c, 
        Dout_c, data_i, reset_c_i, Bclk_ibuf_Z;
    
    GND GND_Z (.Y(GND));
    SLE FF1_d (.D(data_Z), .CLK(Bclk_c), .EN(VCC), .ALn(reset_c_i), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(FF1_d_Z));
    INBUF #( .IOSTD("") )  Bclk_ibuf (.PAD(Bclk), .Y(Bclk_ibuf_Z));
    CFG1 #( .INIT(2'h1) )  reset_ibuf_RNI8255 (.A(reset_c), .Y(
        reset_c_i));
    INBUF #( .IOSTD("") )  reset_ibuf (.PAD(reset), .Y(reset_c));
    CFG1 #( .INIT(2'h1) )  data_RNO (.A(data_Z), .Y(data_i));
    SLE data (.D(data_i), .CLK(Aclk_c), .EN(VCC), .ALn(reset_c_i), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(data_Z));
    VCC VCC_Z (.Y(VCC));
    OUTBUF #( .IOSTD("") )  Dout_obuf (.D(Dout_c), .PAD(Dout));
    SLE FF2_d (.D(FF1_d_Z), .CLK(Bclk_c), .EN(VCC), .ALn(reset_c_i), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(FF2_d_Z));
    CLKINT Bclk_ibuf_RNI1GRC (.A(Bclk_ibuf_Z), .Y(Bclk_c));
    SLE Dout_Z (.D(FF2_d_Z), .CLK(Bclk_c), .EN(VCC), .ALn(reset_c_i), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(Dout_c));
    INBUF #( .IOSTD("") )  Aclk_ibuf (.PAD(Aclk), .Y(Aclk_c));
    
endmodule
