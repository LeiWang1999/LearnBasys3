`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/25 11:03:27
// Design Name: 
// Module Name: hello_rtn
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


module hello_rtn(
        input wire clk,
        input wire hello_ack,
        output wire txd
    );
    reg [3:0] count = 0;
    reg [7:0] data_o ;

    uart_tx hello_tx(
        .clk(clk),
        .rst(1),
        .receive_ack(hello_ack),
        .txd(txd),
        .data_o(data_o)
    );

    always @(posedge clk) begin
        if(hello_ack)
        case (count)
          0: data_o <= "H";
          1: data_o <= "E";
          2: data_o <= "L";
          3: data_o <= "L";
          4: data_o <= "O";
          default: data_o <= " ";
        endcase
        else data_o <= " ";
    end

    always @(posedge clk) begin
        if (hello_ack) begin
          count <= count + 1;
          if (count == 4) begin
                count <= 0;
          end
        end
        else begin
          count <= 0;
        end
    end


endmodule
