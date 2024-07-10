module half_adder(
	input	a,
	input	b,

	output	sum,
	output	co
);

xor(sum, a, b);
and(co, a, b);

endmodule
