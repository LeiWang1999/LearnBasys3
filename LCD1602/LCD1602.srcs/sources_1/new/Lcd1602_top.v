`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/22 21:47:09
// Design Name: 
// Module Name: Lcd1602_top
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


module Lcd1602_top(
    input clk,      // 100 Mhz
    input rst_n,
    output lcd_rs, // 0: write order 1: wirte data
    output lcd_rw, // 0: write data 1: read data
    output lcd_p,   // Backlight Source + 
    output lcd_n,   // Backlight Source -
    output lcd_en,
    output reg[7:0] lcd_data // negedge
    );

    /********************LCD Order state************************/
    localparam  Mode_Set = 8'h31,
                Cursor_Set = 8'h0c,
                Address_Set = 8'h06,
                Clear_Set = 8'h01;

    /*********************LCD Display Data***********************/
    wire [7:0] data0,data1;
    wire [7:0] addr;
    
    /*********************1s 计数器  ****************************/
endmodule
