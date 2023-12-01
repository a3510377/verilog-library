module s_full_adder(input A, B, Ci, output Co, S);
  assign S = A ^ B ^ Ci;
  assign Co = (A & B) | (B & Ci) | (A & Ci);
endmodule
