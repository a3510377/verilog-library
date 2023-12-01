module v_full_subtractor(input A, B, Bi, output D, Bo);
  assign {Bo, D} = A - B - Bi;
endmodule
