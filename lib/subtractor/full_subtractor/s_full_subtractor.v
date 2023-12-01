module s_full_subtractor(input A, B, Bi, output D, Bo);
  assign D = A ^ B ^ Bi;
  assign Bo = (~A & B) | (B & Bi) | (~A & Bi);
endmodule
