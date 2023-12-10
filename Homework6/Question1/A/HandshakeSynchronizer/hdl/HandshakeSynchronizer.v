///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Colorado Boulder
//
// File: HandshakeSynchronizer.v
//
// Description: A handshake synchronizer for clock domain crossing. 
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: Matt Hartnett
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns / 1ps

module HandshakeSynchronizer( clkA, clkB, reset, enable, count, Dout );
    input clkA;     // 25 MHz clock for the data source
    input clkB;     // 37.5 MHz clock for the data sink
    input reset, enable;
    output reg [7:0] Dout, count;
    
    wire [7:0] transfer;        // Data line between state machines
    wire [7:0] sink_out;        // Data line between state machines
    wire    transfer_enable;    // Enable for sink register
    wire    req_source;         // Request from sourceFSM
    reg     req_sync;           // Intermediatary request that is used to sync req to clkB
    reg     req_sink;           // Request to sinkFSM
    reg     ack_source;         // Acknowledge to sourceFSM
    reg     ack_sync;           // Intermediatary acknowledge that is used to sync ack to clkA
    wire    ack_sink;           // Acknowledge from sinkFSM
    
    // Data source
    always @(posedge clkA or posedge reset) begin
        if (reset) begin
            count <= 8'b00000000; // Reset the counter to 0
        end else if(enable) begin
            count <= count + 1; // Increment the counter when enabled 
        end
    end
    
    // Data sink
    always @(posedge clkB or posedge reset) begin
        if (reset) begin
            Dout <= 8'b0;
        end else if(enable && transfer_enable) begin
            Dout <= sink_out;
        end
    end
    
    // Request synchronization
    always @(posedge clkB or posedge reset) begin
        if(reset) begin
            req_sync <= 1'b0;
        end else begin
            req_sync <= req_source;
        end
    end
    always @(posedge clkB or posedge reset) begin
        if(reset) begin
            req_sink <= 1'b0;
        end else begin
            req_sink <= req_sync;
        end
    end
    
    // Acknowledge synchronization
    always @(posedge clkA or posedge reset) begin
        if(reset) begin
            ack_sync <= 1'b0;
        end else begin
            ack_sync <= ack_sink;
        end
    end
    always @(posedge clkA or posedge reset) begin
        if(reset) begin
            ack_source <= 1'b0;
        end else begin
            ack_source <= ack_sync;
        end
    end
    
    // Data source finite state machine
    sourceFSM U0 (
        .clk(clkA),
        .reset(reset),
        .enable(enable),
        .req(req_source),
        .ack(ack_source),
        .data_in(count),
        .data_out(transfer));
       
    // Data sink finite state machine
    sinkFSM U1 (
        .clk(clkB),
        .reset(reset),
        .enable(enable),
        .req(req_sink),
        .ack(ack_sink),
        .transfer_enable(transfer_enable),
        .data_in(transfer),
        .data_out(sink_out));
endmodule

