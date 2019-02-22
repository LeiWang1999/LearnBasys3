//~ `New testbench
`timescale  1ns / 1ps

module tb_vga_test;

// vga_test Parameters
parameter PERIOD  = 10;


// vga_test Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 0 ;
reg   [2:0]  sw                            = 0 ;

// vga_test Outputs
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

vga_test  u_vga_test (
    .clk                     ( clk          ),
    .rst_n                   ( rst_n        ),
    .sw                      ( sw     [2:0] ),

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
