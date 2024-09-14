module logic_gates_tb;

  reg x, y;
  wire a, b, c, d, e, f, g;

  logic_gates uut (
    .x(x),
    .y(y),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g)
  );

  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(1, uut);
    
    $display("x y | a  b  c  d  e  f  g");
    $monitor("%b %b | %b  %b  %b  %b  %b  %b  %b", x, y, a, b, c, d, e, f, g);

    x = 0; y = 0; #10;
    x = 0; y = 1; #10;
    x = 1; y = 0; #10;
    x = 1; y = 1; #10;

    #20 $finish;
  end

endmodule
