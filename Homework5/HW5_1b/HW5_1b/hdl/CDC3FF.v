///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: CDC3FF.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module CDC3FF(
    input wire Aclk,
    input wire Bclk,
    input wire reset,
    output reg Dout
);

    reg data = 1'b0;
    reg FF1_d, FF2_d;

    always @(posedge Aclk or posedge reset) begin
        if(reset)
            data <= 1'b0;
        else
            data <= ~data;
    end

    always @(posedge Bclk or posedge reset) begin
        if(reset)
            FF1_d <= 1'b0;
        else
            FF1_d <= data;
    end

    always @(posedge Bclk or posedge reset) begin
        if(reset)
            FF2_d <= 1'b0;
        else
            FF2_d <= FF1_d;
    end

    always @(posedge Bclk or posedge reset) begin
        if(reset)
            Dout <= 1'b0;
        else
            Dout <= FF2_d;
    end

endmodule

