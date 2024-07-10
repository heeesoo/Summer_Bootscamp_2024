module r_adder_4bit(
	input	[3:0]	a,
	input	[3:0]	b,
	input			cin,	// carry in

	output	reg	[3:0]	out,
	output				cout	// carry out
);

wire			co_w;

wire	[3:0]	out_w;
wire			cout_w;

// Out Flip Flop
always @(posedge clk or negedge n_rst) begin
	if (!n_rst) begin
		out <= 4'h0;
	end

	else begin
		out <= out_w;
	end
end

// Carry Out Flip Flop
always @(posedge clk or negedge n_rst) begin
	if (!n_rst) begin
		cout <= 1'b0;
	end

	else begin
		cout <= cout_w;
	end
end

r_adder_2bit u_adder_2bit_1(
	.a(a[1:0]),
	.b(b[1:0]),
	.c(cin),
	.out(out_w[1:0]),
	.cout(co_w)
);

r_adder_2bit u_adder_2bit_2(
	.a(a[3:2]),
	.b(b[3:2]),
	.c(co_w),
	.out(out_w[3:2]),
	.cout(cout_w)
);

endmodule
