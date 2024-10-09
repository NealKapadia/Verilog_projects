module DFF (D, S, R, clk, Q, Qb);
    input D, S, R, clk;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, Db, clkb;
    output Q, Qb;

    not(Db, D);
    not(clkb, clk);
    

    nand(w1, D, clk);
    nand(w2, clk, Db);
    nand(w3, w1, w4, S);
    nand(w4, w3, w2, R);
    nand(w5, w3, clkb);
    nand(w6, w4, clkb);
    nand(w7, w8, w5, S);
    nand(w8, w7, w6, R);

    assign Q = w7;
    assign Qb = w8;
    

endmodule