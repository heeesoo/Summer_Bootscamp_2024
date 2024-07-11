module cla_32bit(
    input   [31:0]  a,
    input   [31:0]  b,
    input           cin,

    output  [31:0]  sum,
    output          cout
);

wire    c_wire;

cla_16bit u_cla_16bit_1(
    .a      (a[15:0]),
    .b      (b[15:0]),
    .cin    (cin),
    .sum    (sum[15:0]),
    .cout   (c_wire)
);

cla_16bit u_cla_16bit_2(
    .a      (a[31:16]),
    .b      (b[31:16]),
    .cin    (c_wire),
    .sum    (sum[31:16]),
    .cout   (cout)
);

endmodule
