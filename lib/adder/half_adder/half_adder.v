module half_adder(input A, B, output C, S);
  xor XOR1(S, A, B);
  and AND1(C, A, B);
endmodule
