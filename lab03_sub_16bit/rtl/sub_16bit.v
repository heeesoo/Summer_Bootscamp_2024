module sub_16bit(
	input	[15:0]	a,
	input	[15:0]	b,

	output	[15:0]	sub
);

assign sub = a + (~b + 16'h0001);

endmodule
