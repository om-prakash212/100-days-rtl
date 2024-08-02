`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 11:00:46
// Design Name: 
// Module Name: fa_ha
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


module fa_ha(a, b, cin, sum, cout

    );
    input a,b,cin;
    output cout, sum;
    wire sum1, c1, c2;
    //instantiate two half adders
    half_adder HA1(.a(a), .b(b), .sum(sum1), .cout(c1));
    half_adder HA2(.a(sum1), .b(cin), .sum(sum), .cout(c2));
    
    assign cout = c1 | c2;
    
    
endmodule

module half_adder(a, b, sum, cout);
input a, b;
output sum, cout;

assign sum = a^b;
assign cout = a &b;
endmodule
