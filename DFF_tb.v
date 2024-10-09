`timescale 1ns/1ns
`include "DFF.v"

module DFF_tb;

reg D = 0, clk = 0, S = 1, R = 1;
wire Q, Qb;

DFF DFF0(D, S, R, clk, Q, Qb);

initial clk = 0;

always begin
    clk = ~clk;
    #10;
end

initial begin
    $monitor("At time %4t, clk = %d S = %d R = %d D = %d Q = %d Qb = %d", $time, clk, S, R, D, Q, Qb);
    $dumpfile("DFF.vcd");
    $dumpvars(0, DFF_tb);
    S=0; #4;
    S=1; #4;
    D=0; #45;
    D=1; #40;
    D=0; #40;
    $finish;
end

endmodule