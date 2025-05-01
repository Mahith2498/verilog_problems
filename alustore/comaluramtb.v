`timescale 1ns / 1ps
 // Create Date: 04/30/2025 11:31:25 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: comaluramtb
// Project Name: ALUStore
module comaluramtb;
reg [7:0]a;
reg [7:0]b;
reg [3:0]sel;
reg rc;
wire [7:0]out;
calurom dut(
.a(a),
.b(b),
.sel(sel),
.rc(rc),
.out(out)
);
initial begin
$monitor("a=%b,b=%b,sel=%b,rc=%b,out=%b",a,b,sel,rc,out);
end
initial begin
repeat(70)begin
a= $urandom_range(0,255);
b= $urandom_range(0,255);
sel= $urandom_range(0,15);
rc= $urandom_range(0,1);
#10;
end
end



    
endmodule
