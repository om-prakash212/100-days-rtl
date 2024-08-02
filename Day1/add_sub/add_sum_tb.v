`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 10:16:27
// Design Name: 
// Module Name: add_sum_tb
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


module add_sub_tb;
    reg [3:0] a, b;
    reg en;
    wire [3:0] s;
    wire cout;
    
    // Instantiate the add_sub module
    add_sub DUT (
        .a(a),
        .b(b),
        .en(en),
        .s(s),
        .cout(cout)
    );

    initial begin
        // Test Addition
        a = 4'b1010; b = 4'b0101; en = 1'b0;
        #20 $display("Addition: a=%b b=%b sum=%b carry=%b", a, b, s, cout);

        // Test Subtraction
        en = 1'b1;
        #20 $display("Subtraction: a=%b b=%b diff=%b borrow=%b", a, b, s, cout);

        // Additional Tests
        a = 4'b1100; b = 4'b0011; en = 1'b0;
        #20 $display("Addition: a=%b b=%b sum=%b carry=%b", a, b, s, cout);
        
        en = 1'b1;
        #20 $display("Subtraction: a=%b b=%b diff=%b borrow=%b", a, b, s, cout);

        a = 4'b1111; b = 4'b1111; en = 1'b0;
        #20 $display("Addition: a=%b b=%b sum=%b carry=%b", a, b, s, cout);
        
        en = 1'b1;
        #20 $display("Subtraction: a=%b b=%b diff=%b borrow=%b", a, b, s, cout);
        
        #20 $finish;
    end
endmodule
