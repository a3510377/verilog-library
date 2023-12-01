module full_subtractor(input A, B, Bi, output Bo, D);
  half_subtractor x1(A, B, _b1, _d1);
  half_subtractor x2(_d1, Bi, _b2, D);

  or OR1(Bo, _b1, _b2);
endmodule
