module cla_16bit(
    input   [15:0]  a,
    input   [15:0]  b,
    input			cin,

    output  [15:0]  sum,
    output			cout
);

wire    c_wire;

cla_8bit u_cla_8bit_1(
    .a      (a[7:0]),
    .b      (b[7:0]),
    .cin    (cin),
    .sum    (sum[7:0]),
    .cout   (c_wire)
);

cla_8bit u_cla_8bit_2(
    .a      (a[15:8]),
    .b      (b[15:8]),
    .cin    (c_wire),
    .sum    (sum[15:8]),
    .cout   (cout)
);

endmodule
