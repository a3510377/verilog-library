module rs_flip_flop(input R, S, output Q, Qbar);
  xnor XNOR1(Q, R, Qbar);
  xnor XNOR2(Qbar, Q, S);
endmodule
