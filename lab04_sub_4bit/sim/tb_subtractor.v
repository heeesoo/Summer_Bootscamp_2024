`timescale 1ns/100ps
`define T_CLK 10

module tb_subtractor;

reg [3:0]  a;
reg [3:0]  b;

wire [3:0] sub;
wire	   borrow;

sub_4bit  u_sub_4bit(
    .a(a),
    .b(b),
    .d(sub),
	.borrow(borrow)
);


initial begin
	a = 4'h0;
	b = 4'h0;

	#(`T_CLK)
	a = 4'hA;
	b = 4'h5;

	#(`T_CLK)
	a = 4'h9;
	b = 4'h2;

	#(`T_CLK)
	$finish;

end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0);
end

endmodule

