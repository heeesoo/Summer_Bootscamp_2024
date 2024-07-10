module r_adder_2bit(
	input	[1:0]	a,
	input	[1:0]	b,
	input			c,

	output	[1:0]	out,
	output			cout
);

wire	co_w;

full_adder u_full_adder_1(
	.a		(a[0]),
	.b		(b[0]),
	.c		(c),
	.out	(out[0]),
	.cout	(co_w)
);

full_adder u_full_adder_2(
	.a		(a[1]),
	.b		(b[1]),
	.c		(co_w),
	.out	(out[1]),
	.cout	(cout)
);


endmodule
