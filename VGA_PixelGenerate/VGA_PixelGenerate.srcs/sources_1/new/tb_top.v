//~ `New testbench
`timescale  1ns / 1ps

module tb_top;

// top Parameters
parameter PERIOD  = 10;


// top Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 0 ;

// top Outputs
wire  hsync                                ;
wire  vsync                                ;
wire  [2:0]  rgb                           ;
wire  [2:0]  test                          ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

top  u_top (
    .clk                     ( clk          ),
    .rst_n                   ( rst_n        ),

    .hsync                   ( hsync        ),
    .vsync                   ( vsync        ),
    .rgb                     ( rgb    [2:0] ),
    .test                    ( test   [2:0] )
);

initial
begin

    $finish;
end

endmodule
