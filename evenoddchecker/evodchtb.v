`timescale 1ns / 1ps
// Create Date: 04/13/2025 09:50:18 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: evodchtb
// Project Name: EVVEN AND ODD CHECKER
 module evodchtb;
 reg [7:0]a;
 wire b;
 evodch dut(
 .a(a),
 .b(b)
 );
 initial begin
 $monitor("a=%b,b=%b",a,b);
 end
 initial begin
 repeat(50)begin
 a=$urandom_range(0,255);
 #10;
 end
 end

    
endmodule
