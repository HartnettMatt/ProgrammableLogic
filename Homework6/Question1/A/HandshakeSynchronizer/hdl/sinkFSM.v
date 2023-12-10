///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Colorado Boulder
//
// File: sinkFSM.v
//
// Description: The data sink state machine for the HandshakeSynchronizer project.
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: Matt Hartnett 
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

module sinkFSM( clk, reset, enable, req, ack, transfer_enable, data_in, data_out);
    
    input clk, reset, enable, req;
    input [7:0] data_in;
    output reg ack, transfer_enable;
    output reg [7:0] data_out;
    
    parameter IDLE = 2'b00;
    parameter ACK_SENT = 2'b01;
    parameter REQ_WAIT = 2'b10;
    
    reg [1:0] state;
    
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            state <= IDLE;
            ack <= 1'b0;
            data_out <= 8'b0;
            transfer_enable <= 1'b0;
        end else begin
            case(state)
                IDLE: begin
                    if(enable && req) begin // If the FSM is enabled and the sourceFSM has data ready to be received, start the state machine
                        data_out <= data_in; // Latch the data in BEFORE sending ack
                        transfer_enable <= 1'b1; // Authorize data transfer to sink register
                        state <= ACK_SENT;
                    end else begin
                        data_out <= 8'b0;
                        ack <= 1'b0;
                        transfer_enable <= 1'b0;
                    end
                end
                ACK_SENT: begin
                    ack <= 1'b1;
                    state <= REQ_WAIT;
                end
                REQ_WAIT: begin
                    if(~req) begin
                        ack <= 1'b0;
                        transfer_enable <= 1'b0;
                        state <= IDLE;
                    end
                end
                default : begin
                    state <= IDLE;
                    ack <= 1'b0;
                    data_out <= 8'b0;
                    transfer_enable <= 1'b0;
                end
            endcase
        end
    end 
endmodule
  