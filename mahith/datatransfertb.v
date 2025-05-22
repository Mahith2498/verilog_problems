`timescale 1ns / 1ps
// Create Date: 05/22/2025 08:55:17 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: datatransfertb
// Project Name: Parallel Memory Write-Read Engine Using Split Clocks
module datatransfertb;
reg [15:0]a;
reg clk;
reg clk1;
reg clk2;
reg clk3;
reg clk4;
reg wr;
reg rd;
reg rst;
wire [15:0]out;
transfer dut(
.a(a),
.clk(clk),
.clk1(clk1),
.clk2(clk2),
.clk3(clk3),
.clk4(clk4),
.wr(wr),
.rd(rd),
.out(out)
);
initial begin
$monitor("a=%b,clk=%b,clk1=%b,clk2=%b,clk3=%b,clk4=%b,wr=%b,rd=%b,out=%b",a,clk,clk1,clk2,clk3,clk4,wr,rd,out);
end
initial begin
repeat(500)begin
a= $urandom_range(0,65535);
clk= $urandom_range(0,1);
wr= $urandom_range(0,1);
rst= $urandom_range(0,1);
rd= $urandom_range(0,1);
#10;
end
end
initial begin
clk1=0;
clk2=0;
clk3=0;
clk4=0;
end
always begin
#10 clk1 = ~clk1; // clk1 has an frequency has 100Mhz 
end
always begin
#5 clk2= ~clk2; //clk2 has an frequency has 200Mhz
end
always begin
#3 clk3 = ~clk3; //clk3 has an frequency has  300Mhz
end
always begin
#2 clk4= ~clk4; // clk4 has an frequncy has 400Mhz
end


    
endmodule
