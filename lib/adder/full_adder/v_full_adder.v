module v_full_adder(input A, B, Ci, output Co, S);
  assign {Co, S} = A + B + Ci;
endmodule
