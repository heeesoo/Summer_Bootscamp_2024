module r_adder_4bit(
	input	[3:0]	a,
	input	[3:0]	b,
	input			cin,	// carry in

	output	[3:0]	out,
	output			cout	// carry out
);

wire			co_w;

r_adder_2bit u_adder_2bit_1(
	.a(a[1:0]),
	.b(b[1:0]),
	.c(cin),
	.out(out[1:0]),
	.cout(co_w)
);

r_adder_2bit u_adder_2bit_2(
	.a(a[3:2]),
	.b(b[3:2]),
	.c(co_w),
	.out(out[3:2]),
	.cout(cout)
);

endmodule
