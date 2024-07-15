module full_sub(
	input	a,
	input	b,
	input	bin,	// Borrow in

	output	d,		// Difference
	output	bout	// Borrow out
);

assign d = a ^ b ^ bin;
assign bout = (~a & (b ^ bin)) | (b & bin);

endmodule
