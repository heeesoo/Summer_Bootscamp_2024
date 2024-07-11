`timescale 1ns/100ps
`define T_CLK 10

module tb_adder;

reg [31:0]  a;
reg [31:0]  b;
reg         cin;

wire [31:0] sum;
wire        cout;

cla_32bit  u_cla_32bit(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);


initial begin
	a = 32'h0000_0000;
	b = 32'h0000_0000;
	cin = 1'b0;

	#(`T_CLK)
	a = 32'd101;
	b = 32'd78;

	#(`T_CLK)
	a = 32'd20;
	b = 32'd31;
	cin = 1'b1;

	#(`T_CLK)
	a = 32'd190;
	b = 32'd181;

	#(`T_CLK)
	$finish;

end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0);
end

endmodule

