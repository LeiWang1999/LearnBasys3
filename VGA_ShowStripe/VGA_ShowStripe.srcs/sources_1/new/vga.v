`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/26 17:28:54
// Design Name: 
// Module Name: vga
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


module vga(
        input wire clk,
        input wire [1:0] switch,
        output wire [2:0] disp_RGB,  // 输出的数据
        output wire hsync,          // 行同步信号
        output wire vsync           //场同步信号
    );

    parameter vga_rate = 'd25_000_000,
              vga_m    = 'd100_000_000 / vga_rate;
               
    reg [9:0] hcount;   //行扫描计数器
    reg [9:0] vcount;   //列扫描计数器
    reg [2:0] data;     //扫描的数据

    
    wire vga_clk;
    counter_mod_m #(.M(vga_m) , .N(2)) counter_mod_vga_clk(
        .clk(clk),
        .m_out(vga_clk)
    );

    always @(posedge vga_clk) begin
       
    end

endmodule
