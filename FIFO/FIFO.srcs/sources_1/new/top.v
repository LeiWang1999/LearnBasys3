`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/23 16:58:49
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
        input clk, rst_n
    );
    reg wr_en;
    reg rd_en;

    reg [7:0] din;
    wire [7:0] d_out;
    wire full;
    wire empty;

    fifo_generator_0 fifo_test(
        .clk(clk),
        .srst(!rst_n),
        .din(din),
        .dout(d_out),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .full(full),
        .empty(empty)
    );

    reg [2:0] current_state,next_state;
    
    localparam idle = 0, write = 1, read = 2;

    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            current_state <= 0;
        end
        else current_state <= next_state;
    end

    always @(*) begin
        next_state = current_state;
        case (current_state)
        idle: next_state = write;
        write: next_state = read;
        read: next_state = idle;
          default: next_state = idle; 
        endcase
    end

    always @(*) begin
        if (current_state==write) begin
            wr_en = 1;
            din = 10;
        end
        else wr_en = 0;
    end

    always @(*) begin
        if (current_state==read) begin
            rd_en = 1;
        end
        else rd_en = 0;
    end

endmodule
