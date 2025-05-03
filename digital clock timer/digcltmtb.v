`timescale 1ns / 1ps
// Create Date: 05/04/2025 01:01:56 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: digcltmtb
// Project Name: Digital clock timer
module digcltmtb;
reg clk;
reg rst;
wire ss;
wire mm;
wire hh;
digclktim dut(
.clk(clk),
.rst(rst),
.ss(ss),
.mm(mm),
.hh(hh)
);
initial begin
$monitor("clk=%b,rst=%b,ss=%b,mm=%b,hh=%b",clk,rst,ss,mm,hh);
end
initial begin
repeat(50)begin
clk= $urandom_range(0,1);
rst=$urandom_range(0,1);
#10;
end
end


    
endmodule
