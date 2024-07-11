module pfa(
	input	a,
	input	b,
	input	c,	// carry in
	
	output	s,	// sum
	output	g,	// generator
	output	p	// propogate
);

assign p = a ^ b;
assign g = a & b;

assign s = a ^ b ^ c;

endmodule
