`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 11:42:03
// Design Name: 
// Module Name: rippleAdder8Bit_tb
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


`timescale 1ns / 1ps

module rippleAdder8bit_tb;
    reg [7:0] a, b;
    reg cin;
    wire [7:0] sum;
    wire cout;

    // Instantiate the ripple_carry_adder_8bit module
    rippleAdder8bit DUT (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // Test different cases
        a = 8'b00000001; b = 8'b00000001; cin = 1'b0;
        #10 $display("a=%b b=%b cin=%b | sum=%b cout=%b", a, b, cin, sum, cout);
        
        a = 8'b00001111; b = 8'b00001111; cin = 1'b0;
        #10 $display("a=%b b=%b cin=%b | sum=%b cout=%b", a, b, cin, sum, cout);
        
        a = 8'b11111111; b = 8'b00000001; cin = 1'b0;
        #10 $display("a=%b b=%b cin=%b | sum=%b cout=%b", a, b, cin, sum, cout);
        
        a = 8'b10101010; b = 8'b01010101; cin = 1'b1;
        #10 $display("a=%b b=%b cin=%b | sum=%b cout=%b", a, b, cin, sum, cout);
        
        a = 8'b11001100; b = 8'b00110011; cin = 1'b1;
        #10 $display("a=%b b=%b cin=%b | sum=%b cout=%b", a, b, cin, sum, cout);

        $finish;
    end
endmodule
