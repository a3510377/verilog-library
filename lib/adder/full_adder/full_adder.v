module full_adder(input A, B, Ci, output Co, S);
	half_adder x1(_c1, _s1, A, B);
	half_adder x2(_c2, S, _s1, Ci);

	or OR(Co, _c1, _c2);
endmodule
