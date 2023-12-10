///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Colorado Boulder
//
// File: PowerEstimator
//
// Description: 32x16 bit counters used to estimate power on a Cyclone V device.
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: Matt Hartnett
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

module PowerEstimator(clk, reset, cout);

    input clk, reset;
    output reg [31:0] cout;
    
    integer i;
    always @(*)
    begin
        for(i = 0;i < 32; i = i + 1) begin
            cout[i] <= counters[i][15];
        end
    end
    
    integer j;
    reg [15:0] counters [31:0];
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (j = 0; j < 32; j = j + 1) begin
                counters[j] <= 16'h0000; // Set each counter to zero
            end
        end else begin
            for (j = 0; j < 32; j = j + 1) begin
                if (counters[j][15] == 1'b1) begin
                    counters[j] <= 16'h0000; // Reset when the last bit is 1
                end else begin
                    counters[j] <= counters[j] + 1; // Increment otherwise
                end
            end
        end
    end

endmodule