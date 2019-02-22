//~ `New testbench
`timescale  1ns / 1ps

module tb_debounce;

// debounce Parameters
parameter PERIOD  = 10;


// debounce Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 0 ;
reg   key_in                               = 0 ;

// debounce Outputs
wire  key_out                              ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

initial begin
    #(PERIOD*10000000) key_in = ~key_in;
    repeat(8)
    #(PERIOD*1000) key_in = ~key_in;
    #(PERIOD*1000) key_in = ~key_in;
    #(PERIOD*1000) key_in = ~key_in;
    #(PERIOD*1000) key_in = ~key_in;
    #(PERIOD*1000) key_in = ~key_in;
    #(PERIOD*1000) key_in = ~key_in;
    #(PERIOD*1000) key_in = ~key_in;
    #(PERIOD*1000) key_in = ~key_in;
    #(PERIOD*1000) key_in = ~key_in;
    #(PERIOD*1000) key_in = ~key_in;
    #(PERIOD*1000) key_in = ~key_in;
    #(PERIOD*1000) key_in = ~key_in;
    #(PERIOD*1000) key_in = 1;
    #(PERIOD*1000000) key_in = 0;
end

debounce  u_debounce (
    .clk                     ( clk       ),
    .rst_n                   ( rst_n     ),
    .key_in                  ( key_in    ),

    .key_out                 ( key_out   )
);

initial
begin

    $finish;
end

endmodule
