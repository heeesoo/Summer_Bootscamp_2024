module sub_2bit(
	input	[1:0]	a,
	input	[1:0]	b,
	
	output	[1:0]	d,	// Difference
	output			borrow	// Borrow
);

wire	borrow_w;


half_sub u_half_sub(
	.a		(a[0]),
	.b		(b[0]),
	.d		(d[0]),
	.borrow	(borrow_w)
);

full_sub u_full_sub(
	.a		(a[1]),
	.b		(b[1]),
	.bin	(borrow_w),
	.d		(d[1]),
	.bout	(bout)
);

endmodule
