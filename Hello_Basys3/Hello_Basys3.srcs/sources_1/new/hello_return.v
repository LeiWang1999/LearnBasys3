`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/25 10:36:41
// Design Name: 
// Module Name: hello_return
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


module hello_return(
        input clk,
        input data_o,
        input hello_ack,
        input rst_n,
        output wire txd
    );

    uart_tx u2_uart_tx(
        .clk(clk),
        .data_o(data_o),
        .txd(txd),
        .rst(rst_n),
        .receive_ack(hello_ack)
    );

    reg current_state,next_state;

    always @(posedge clk or negedge rst_n) begin
        if(! rst_n) begin
        end
        else begin
            current_state <= next_state;
        end
    end



endmodule
