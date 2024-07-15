module sub_4bit(
	input	[3:0]	a,
	input	[3:0]	b,
	
	output	[3:0]	d,		// Difference 
	output			borrow	// Borrow
);

wire	[3:0]	borrow_w;


half_sub u_half_sub(
    .a		(a[0]),
    .b		(b[0]),
    .d		(d[0]),
    .borrow	(borrow_w[0])
);

full_sub u_full_sub_1(
    .a	(a[1]),
    .b	(b[1]),
    .bin(borrow_w[0]),
    .d	(d[1]),
    .bout(borrow_w[1])
);

full_sub u_full_sub_2(
    .a	(a[2]),
    .b	(b[2]),
    .bin(borrow_w[1]),
    .d	(d[2]),
    .bout(borrow_w[2])
);

full_sub u_full_sub_3(
    .a	(a[3]),
    .b	(b[3]),
    .bin(borrow_w[2]),
    .d	(d[3]),
    .bout(borrow)
);

endmodule
