`timescale 1ns / 1ps
// Create Date: 06/10/2025 12:47:55 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: dicetb
// Project Name: DIGITAL DICE
module dicetb;
reg [2:0]state;
reg clk;
wire [3:0]move;
wire secthrow;
dice dut(
.state(state),
.clk(clk),
.move(move),
.secthrow(secthrow)
);
initial begin
$monitor("state= %b , clk=%b,move=%b,secthrow=%b",state,clk,move,secthrow);
end
initial begin
repeat(100)begin
state = $urandom_range(0,7);
clk = $urandom_range(0,1);
#10;
end
end

    
endmodule
