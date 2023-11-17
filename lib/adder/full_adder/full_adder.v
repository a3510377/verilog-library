module full_adder(input A, B, Ci, output Co, S);
  half_adder x1(A, B, _c1, _s1);
  half_adder x2(_s1, Ci, _c2, S);

  or OR(Co, _c1, _c2);
endmodule
