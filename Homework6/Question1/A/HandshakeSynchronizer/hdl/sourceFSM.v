///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Colorado Boulder
//
// File: sourceFSM.v
//
// Description: The data source state machine for the HandshakeSynchronizer project.
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: Matt Hartnett 
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

module sourceFSM( clk, reset, enable, req, ack, data_in, data_out);
    
    input clk, reset, enable, ack;
    input [7:0] data_in;
    output reg req;
    output reg [7:0] data_out;
    
    parameter IDLE = 2'b00;
    parameter REQUEST_SENT = 2'b01;
    parameter ACK_WAIT = 2'b10;
    
    reg [1:0] state;
    
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            state <= IDLE;
            req <= 1'b0;
            data_out <= 8'b0;
        end else begin
            case(state)
                IDLE: begin // Latch the data out
                    if(enable && ~ack) begin // If the FSM is enabled and the sinkFSM is ready to recieve data, begin the state machine
                        data_out <= data_in;
                        state <= REQUEST_SENT;
                    end else begin
                        data_out <= 1'b0;
                    end
                end
                REQUEST_SENT: begin // Generate the request signal to allow sinkFSM to latch data in
                    req <= 1'b1;
                    state <= ACK_WAIT;
                end
                ACK_WAIT: begin // Wait for data latch ACK
                    if(ack) begin
                        req <= 0;
                        data_out <= 1'b0;
                        state <= IDLE;
                    end
                end
                default : begin
                    state <= IDLE;
                    req <= 1'b0;
                    data_out <= 8'b0;
                end
            endcase
        end
    end 
endmodule
  