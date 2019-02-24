`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/23 17:23:12
// Design Name: 
// Module Name: one_port_ram_async
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


module one_port_ram_async #(
    parameter Addr_Width = 8,
    parameter Data_Width = 1
)(  
    input wire clk,
    input wire we,
    input wire [Addr_Width-1:0] addr,
    input wire [Data_Width-1:0] din,
    output wire [Data_Width-1:0] dout
    );

    reg [Data_Width-1:0] ram [2**Addr_Width-1:0];
    reg [Addr_Width-1:0] addr_reg;

    always @(posedge clk) begin
        if (we) begin
            ram[addr] <= din;
            addr_reg <= addr;
        end
    end

    assign dout = ram[addr_reg];

endmodule
