`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/22 14:12:59
// Design Name: 
// Module Name: vga_test
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


module vga_test(
        input wire clk,rst_n,
        input wire [2:0] sw,
        output wire hsync,vsync,
        output wire [2:0] rgb
    //    output wire [2:0] test // test信号作为仿真测试
    );

    // 信号声明
    reg [2:0] rgb_reg;
    wire video_on;

    // 例化vga_sync
    vga_sync vga_sync_u1(
        .clk(clk),
        .rst_n(rst_n),
        .hsync(hsync),
        .vsync(vsync),
        .video_on(video_on)
    );

    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
          rgb_reg <= 0;
        end
        else begin
          rgb_reg <= sw;
        end
    end

    assign rgb = (video_on)?rgb_reg:3'b0;
//    assign test[0] = hsync;
//    assign test[1] = vsync;
endmodule
