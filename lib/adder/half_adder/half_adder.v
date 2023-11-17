module half_adder(output C, S, input A, B);
  xor XOR1(S, A, B);
  and AND1(C, A, B);
endmodule
