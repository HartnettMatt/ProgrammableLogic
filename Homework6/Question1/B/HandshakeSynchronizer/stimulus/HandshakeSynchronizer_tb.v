///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Colorado Boulder
//
// File: HandshakeSynchronizer_tb.v
//
// Description: The testbench for the HandshakeSynchronizer project
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: Matt Hartnett 
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns / 1ps

module HandshakeSynchronizer_tb;

    // Inputs
    reg clkA = 0;
    reg clkB = 0;
    reg reset;
    reg enable;

    // Outputs
    wire [7:0] Dout, count;

    // Instantiate the module
    HandshakeSynchronizer DUT0 (
        .clkA(clkA),
        .clkB(clkB),
        .reset(reset),
        .enable(enable),
        .Dout(Dout),
        .count(count)
    );

    // Clock generation
    always #13.333 clkA = ~clkA;
    always #20 clkB = ~clkB;

    // Initial values
    initial begin
        reset = 1;
        enable = 0;

        // Reset sequence
        #10 reset = 0;

        // Test scenario
        #10 enable = 1; // Enable data transfer

        // Simulate some clock cycles
        #2100; 

        // End simulation
        $stop;
    end

endmodule
