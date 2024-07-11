module cla_8bit(
	input	[7:0]	a,
	input	[7:0]	b,
	input			cin,
	
	output	[7:0]	sum,
	output			cout
);

wire	c_wire;

cla_4bit u_cla_4bit_1(
	.a		(a[3:0]),
	.b		(b[3:0]),
	.cin	(cin),
	.sum	(sum[3:0]),
	.cout	(c_wire)
);

cla_4bit u_cla_4bit_2(
	.a		(a[7:4]),
	.b		(b[7:4]),
	.cin	(c_wire),
	.sum	(sum[7:4]),
	.cout	(cout)
);

endmodule
