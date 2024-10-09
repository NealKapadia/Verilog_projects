module full(a,b,ci,s, co);
    input a,b,ci;
    output s, co;
    wire w1, w2, w3;
    and a1(w1, a, b);
    and a2(w2, a, ci);
    and a3(w3, b, ci);
    or o1(co, w1, w2, w3);
    xor x1(s, a, b, ci);
endmodule