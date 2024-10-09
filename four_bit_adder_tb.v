`include "four_bit_adder.v"

module fourbitadder_tb;
    reg a3, b3, a2, b2, a1, b1, a0, b0, cin;
    wire s1,s2, s3, s4, c4;

    fourbitadder addfour(a3, b3, a2, b2, a1, b1, a0, b0, cin , s1,s2, s3, s4, c4);

    initial
        begin
            $monitor("At time %4t, a3 = %d, b3 = %d, a2 = %d, b2 = %d, a1 = %d, b1 = %d, a0 = %d, b0 = %d, cin = %d, c4 = %d, s4 = %d, s3 = %d, s2 = %d, s1 = %d", 
            $time, a3, b3, a2, b2, a1, b1, a0, b0, cin, c4, s4, s3, s2, s1);
            a3 = 1; a2 = 0; a1 = 1; a0= 0; b3=0; b2=1; b1=0; b0=1; cin=0;
            #10
            a3 = 1; a2 = 0; a1 = 1; a0= 1; b3=0; b2=1; b1=1; b0=1; cin=0;
            #10
            a3 = 1; a2 = 0; a1 = 1; a0= 1; b3=1; b2=1; b1=1; b0=1; cin=0;
            #10
            a3 = 1; a2 = 0; a1 = 0; a0= 1; b3=0; b2=1; b1=1; b0=1; cin=0;
        end
endmodule