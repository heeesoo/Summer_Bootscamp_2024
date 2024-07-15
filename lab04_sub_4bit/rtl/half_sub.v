module half_sub(
	input	a,
	input	b,

	output	d,	// Difference
	output	borrow	// Borrow
);

assign d = a ^ b;
assign borrow = ~a & b;

endmodule
