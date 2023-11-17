module full_adder(input A, B, Ci, output Co, S);
	half_adder(_c1, _s1, A, .B);
	half_adder(_c2, S, _s1, .Ci);

	or OR(Co, _c1, _c2);
endmodule
