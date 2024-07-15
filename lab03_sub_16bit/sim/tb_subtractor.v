`timescale 1ns/100ps
`define T_CLK 10

module tb_subtractor;

reg [15:0]  a;
reg [15:0]  b;

wire [15:0] sub;


sub_16bit  u_sub_16bit(
    .a(a),
    .b(b),
    .sub(sub)
);


initial begin
	a = 16'h0000;
	b = 16'h0000;

	#(`T_CLK)
	a = 16'h8120;
	b = 16'h0150;

	#(`T_CLK)
	a = 16'h0530;
	b = 16'h0201;

	#(`T_CLK)
	$finish;

end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0);
end

endmodule

