`timescale 1ns / 1ps
// Create Date: 04/20/2025 12:51:35 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: ram8bittb
// Project Name: 8 BIT RAM
module ram8bittb;
reg clk;
reg rst;
reg wr_co;
reg rd_co;
reg [7:0]data;
wire [7:0]out;
ram8bit dut(
.clk(clk),
.rst(rst),
.wr_co(wr_co),
.rd_co(rd_co),
.data(data),
.out(out)
);
initial begin
$monitor("clk=%b,rst=%b,wr_co=%b,rd_co=%b,data=%b,out=%b",clk,rst,wr_co,rd_co,data,out);
end
initial begin
repeat(200)begin
clk=$urandom_range(0,1);
rst=$urandom_range(0,1);
wr_co = $urandom_range(0,1);
rd_co = $urandom_range(0,1);
data = $urandom_range(0,255);
#5;
end
end


    
endmodule
