`include "full_adder.v"

module full_adder_tb;
    reg a, b, ci;
    wire s, co;

    full add1(a, b, ci, s, co);

    initial
        begin
            $monitor("At time %4t, a = %d, b = %d, ci = %d, s = %d, co = %d", $time, a, b, ci, s, co);
            a = 0; b = 0; ci = 0;
            #10
            a = 0; b = 0; ci = 1;
            #10
            a = 0; b = 1; ci = 0;
            #10
            a = 0; b = 1; ci = 1;
            #10
            a = 1; b = 0; ci = 0;
            #10
            a = 1; b = 0; ci = 1;
            #10
            a = 1; b = 1; ci = 0;
            #10
            a = 1; b = 1; ci = 1;
        end
endmodule