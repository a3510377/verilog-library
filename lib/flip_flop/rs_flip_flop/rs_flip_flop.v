module rs_flip_flop(input R, S, output Q, Qbar);
  nor NOR1(Q, R, Qbar);
  nor NOR2(Qbar, Q, S);
endmodule
