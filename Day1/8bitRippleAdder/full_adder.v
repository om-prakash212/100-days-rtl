`timescale 1ns / 1ps

module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    wire sum1, c1, c2;

    // Instantiate two half adders
    half_adder HA1 (.a(a), .b(b), .sum(sum1), .cout(c1));
    half_adder HA2 (.a(sum1), .b(cin), .sum(sum), .cout(c2));

    // OR gate to produce the final carry out
    assign cout = c1 | c2;
endmodule
