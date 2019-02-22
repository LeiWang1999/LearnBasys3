`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/20 13:44:14
// Design Name: 
// Module Name: WaterlightLed
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


module WaterlightLed(
        input wire clk,
        input wire rst_n,
        output wire [7:0] led_array
    );
    
    wire clk_10HZ;
    reg [7:0] led_array_r;
    initial begin
      led_array_r <= 8'b00000001;
    end
    // clk 是 100Mhz 
    // 100ms 移动一次 10HZ，则 M = 10000000
    counter_mod_m #(.M(10000000), .N(24))counter_mod_m10HZ(
        .clk(clk), .rst_n(rst_n),
        .m_out(clk_10HZ)
    ) ;

    always @(posedge clk_10HZ or negedge rst_n) begin
    if (!rst_n) begin
      led_array_r <= 8'b00000001;
    end
    else
      led_array_r <= {led_array_r[6:0],led_array_r[7]} ;
    end

    assign led_array = led_array_r;

endmodule
