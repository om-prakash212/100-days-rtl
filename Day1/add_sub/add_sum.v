`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 10:15:12
// Design Name: 
// Module Name: add_sum
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module add_sub(
    input [3:0] a,
    input [3:0] b,
    input en,
    output [3:0] s,
    output cout
);
    wire [2:0] c;

    fa_1 u0 (.a(a[0]), .b(b[0] ^ en), .cin(en), .sum(s[0]), .cout(c[0]));
    fa_1 u1 (.a(a[1]), .b(b[1] ^ en), .cin(c[0]), .sum(s[1]), .cout(c[1]));
    fa_1 u2 (.a(a[2]), .b(b[2] ^ en), .cin(c[1]), .sum(s[2]), .cout(c[2]));
    fa_1 u3 (.a(a[3]), .b(b[3] ^ en), .cin(c[2]), .sum(s[3]), .cout(cout));
endmodule

module fa_1(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);
endmodule
