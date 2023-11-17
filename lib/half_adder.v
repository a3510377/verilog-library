module half_adder(input a, input b, output c, output s);
	xor XOR1(s, a, b);
	and AND1(c, a, b);
endmodule
