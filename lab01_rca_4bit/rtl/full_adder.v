module full_adder(
	input	a,
	input	b,
	input	c,
	
	output	out,
	output	cout
);

wire	sum_w;
wire	co_w1;
wire	co_w2;

assign cout = co_w1 | co_w2;

half_adder u_half_adder_1(
	.a(a),
	.b(b),
	.sum(sum_w),
	.co(co_w1)
);

half_adder u_half_adder_2(
	.a(sum_w),
	.b(c),
	.sum(out),
	.co(co_w2)
);

endmodule
