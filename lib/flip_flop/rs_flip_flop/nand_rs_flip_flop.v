module nand_rs_flip_flop(input Rbar, Sbar, output Q, Qbar);
  nand NAND1(Q, Rbar, Qbar);
  nand NAND2(Qbar, Q, Sbar);
endmodule
