module logic_gates(x, y, a, b, c, d, e, f, g );
    input x, y;
    output a, b, c, d, e, f, g ;


    assign a = ~x;
    assign b = x | y;
    assign c = x & y;
    assign d = ~(x | y);
    assign e = ~(x & y);
    assign f = x ^ y;
    assign g = ~(x ^ y);

endmodule
