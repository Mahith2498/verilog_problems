`timescale 1ns / 1ps

// Create Date: 05/19/2025 05:19:02 PM
// Design Name: 
// Module Name: testtb
// Project Name: 


module testtb;
reg [99:0]a;
wire [ 99:0]b;
reg clk;
reg rst;
test dut(
.a(a),
.b(b),
.clk(clk),
.rst(rst)
);
initial begin
$monitor("a=%b, b=%b,clk=%b,rst=%b",a,b,clk,rst);
end
initial begin
repeat(200)begin
a= {$urandom, $urandom , $urandom , $urandom_range(0,15)};
clk= $urandom_range(0,1);
rst = $urandom_range(0,1);
#10;
end
end

  
endmodule
