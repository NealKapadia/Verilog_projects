module fourbitadder(a3, b3, a2, b2, a1, b1, a0, b0, cin, s1,s2, s3, s4, c4);
    input a3, b3, a2, b2, a1, b1, a0, b0, cin;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, c1, c2, c3;
    output s1,s2, s3, s4, c4;


    and a1(w1, a0, b0);
    and a2(w2, a0, cin);
    and a3(w3, b0, cin);
    or o1(c1, w1, w2, w3);
    xor x1(s1, a0, b0, cin);

    and a4(w4, a1, b1);
    and a5(w5, a1, c1);
    and a6(w6, b1, c1);
    or o2(c2, w4, w5, w6);
    xor x2(s2, a1, b1, c1);

    and a7(w7, a2, b2);
    and a8(w8, a2, c2);
    and a9(w9, b2, c2);
    or o3(c3, w7, w8, w9);
    xor x3(s3, a2, b2, c2);

    and a10(w10, a3, b3);
    and a11(w11, a3, c3);
    and a12(w12, b3, c3);
    or o4(c4, w10, w11, w12);
    xor x4(s4, a3, b3, c3);
endmodule