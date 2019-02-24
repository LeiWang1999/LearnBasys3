//~ `New testbench
`timescale  1ns / 1ps

module tb_top;

// top Parameters
parameter PERIOD  = 10;


// top Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 0 ;

// top Outputs



initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

top  u_top (
    .clk                     ( clk     ),
    .rst_n                   ( rst_n   )
);

initial
begin

    $finish;
end

endmodule
