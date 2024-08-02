`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 11:08:41
// Design Name: 
// Module Name: fa_ha_tb
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


module fa_ha_tb;
    reg a, b, cin;
    wire sum, cout;

    // Instantiate the full_adder module
    full_adder DUT (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // Test all possible input combinations
        $display("A B Cin | Sum Cout");
        a = 0; b = 0; cin = 0; #10 $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 0; b = 0; cin = 1; #10 $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 0; b = 1; cin = 0; #10 $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 0; b = 1; cin = 1; #10 $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 1; b = 0; cin = 0; #10 $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 1; b = 0; cin = 1; #10 $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 1; b = 1; cin = 0; #10 $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        a = 1; b = 1; cin = 1; #10 $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        
        $finish;
    end
endmodule