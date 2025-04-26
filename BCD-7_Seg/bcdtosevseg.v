`timescale 1ns / 1ps
// Create Date: 04/15/2025 10:25:30 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: bcdtosevseg
// Project Name: BCD TO 7 SEGMENT DISPLAY
module bcdtosevseg(
input [3:0]a,
input anode,
input cathode,
input clk,
output reg [6:0]out

    );
    always@(posedge clk)begin
    if(anode==1)begin
    case(a)
    4'b0000 : out<= 7'b1000000;
    4'b0001 : out<= 7'b1111001;
    4'b0010 : out<= 7'b0100100;
    4'b0011 : out<= 7'b0110000;
    4'b0100 : out<= 7'b0011001;
    4'b0101 : out<= 7'b0010010;
    4'b0110 : out<= 7'b0000010;
    4'b0101 : out<= 7'b1111000;
    4'b1000 : out<= 7'b0000000;
    4'b1001 : out<= 7'b0001000;
    default : out<= 7'b1111111;
    endcase
    end
    else begin
    out<= 7'b1010101;
    end
    if(cathode==1)begin
    case(a)
    4'b0000 : out<= 7'b0111111;
    4'b0001 : out<= 7'b0000110;
    4'b0010 : out<= 7'b1011011;
    4'b0011 : out<= 7'b1001111;
    4'b0100 : out<= 7'b1101111;
    4'b0101 : out<= 7'b1101101;
    4'b0110 : out<= 7'b1111101;
    4'b0101 : out<= 7'b0000111;
    4'b1000 : out<= 7'b1111111;
    4'b1001 : out<= 7'b1101111;
    default : out<= 7'b1111100;
    endcase
    end
    else begin
    out<= 7'b1010101;
    end
    end
    
    
endmodule
