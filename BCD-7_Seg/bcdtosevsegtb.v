`timescale 1ns / 1ps
// Create Date: 04/15/2025 11:22:56 PM
// Design Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: bcdtosevsegtb
// Project Name: BCD TO 7 SEGMENT DISPLAY WITH COMMON ANODE AND CATHODE
module bcdtosevsegtb;
reg [3:0]a;
reg anode;
reg cathode;
reg clk;
wire [6:0]out;
bcdtosevseg dut(
.a(a),
.anode(anode),
.cathode(cathode),
.clk(clk),
.out(out)
);
initial begin
$monitor("a=%b,anode=%b,cathode=%b,clk=%b,out=%b",a,anode,cathode,clk,out);
end
initial begin
repeat(200)begin
a = $urandom_range(0,15);
anode = $urandom_range(0,1);
cathode = $urandom_range(0,1);
clk= $urandom_range(0,1);
#5;
end
end

    
endmodule
