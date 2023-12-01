module half_subtractor(input A, B, output Bo, D);
  wire ABar;

  not NOT1(ABar, A);
  xor XOR1(D, A, B);
  and AND1(Bo, ABar, B);
endmodule
