`timescale 1ns/100ps
`define T_CLK 10

module tb_adder;

reg [3:0]   a;
reg [3:0]   b;
reg         cin;

wire [3:0]  out;
wire        cout;

r_adder_4bit u_r_adder_4bit(
    .a(a),
    .b(b),
    .cin(cin),
    .out(out),
    .cout(cout)
);


initial begin
	a = 4'h0;
	b = 4'h0;
	cin = 1'b0;

	#(`T_CLK)
	a = 4'b0101;
	b = 4'b0110;

	#(`T_CLK)
	a = 4'b0110;
	b = 4'b0111;
	cin = 1'b1;

	#(`T_CLK)
	a = 4'b1010;
	b = 4'b1100;

	#(`T_CLK)
	$finish;

end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0);
end

endmodule

