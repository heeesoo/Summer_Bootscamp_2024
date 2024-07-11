module cla_4bit(
	input	[3:0]	a,
	input	[3:0]	b,
	input			cin,

	output	[3:0]	sum,
	output			cout
);

// cla logic carry out wire
wire	[3:0]	cout_w;

wire	[3:0]	p;	// propogate
wire	[3:0]	g;	// generate


// cla logic
assign cout_w[0] = g[0] | (p[0] & cin);
assign cout_w[1] = g[1] | (p[1] & cout_w[0]);
assign cout_w[2] = g[2] | (p[2] & cout_w[1]);
assign cout_w[3] = g[3] | (p[3] & cout_w[2]);

assign cout = cout_w[3];

// pfa instance 
pfa u_pfa_0(
	.a	(a[0]),
	.b	(b[0]),
	.c	(cin),
	.s	(sum[0]),
	.g	(g[0]),
	.p	(p[0])
);

pfa u_pfa_1(
	.a	(a[1]),
	.b	(b[1]),
	.c	(cout_w[0]),
	.s	(sum[1]),
	.g	(g[1]),
	.p	(p[1])
);

pfa u_pfa_2(
	.a	(a[2]),
	.b	(b[2]),
	.c	(cout_w[1]),
	.s	(sum[2]),
	.g	(g[2]),
	.p	(p[2])
);

pfa u_pfa_3(
	.a	(a[3]),
	.b	(b[3]),
	.c	(cout_w[2]),
	.s	(sum[3]),
	.g	(g[3]),
	.p	(p[3])
);

endmodule
