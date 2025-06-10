`timescale 1ns / 1ps
// Create Date: 06/09/2025 10:56:49 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: dice
// Project Name: DIGITAL DICE
module dice(
input [2:0]state,
input clk,
output reg [3:0]move,
output reg secthrow
    );
    reg [2:0]prestate;
    always@(*)begin
    if(state== 3'b100 || state== 3'b110)begin
    secthrow = 1;
    end else begin
    secthrow = 0;
    end
    end
    always@(posedge clk)begin
    if(secthrow==1)begin
    if(prestate== 3'b100)begin
    if(state == 3'b001)begin
    move<= prestate+3'b001;
    end
    else if(state == 3'b010)begin
    move<= prestate + 3'b010;
    end
    else if(state == 3'b011)begin
    move<= prestate + 3'b011;
    end
    else if(state == 3'b100)begin
    move<= 4'b0000; //don't move
    secthrow <= 1'b1; //second throw should be there
    end else if(state == 3'b101)begin
    move<= prestate + 3'b101;
    end else if(state == 3'b110)begin
    move<= 4'b0000; // don't move
    secthrow <= 1'b1;
    end else begin
    move<= 4'b0000;
    secthrow<= 0;
    end
    end else if(prestate ==  3'b110)begin
    if(state == 3'b001)begin
    move<= prestate+3'b001;
    end else if(state == 3'b010)begin
    move<= prestate + 3'b010;
    end else if(state == 3'b011)begin
    move<= prestate + 3'b011;
    end else if(state == 3'b100)begin
    move<= 4'b0000;
    secthrow <= 1'b1;
    end else if(state == 3'b101)begin
    move<= prestate + 3'b101;
    end else if(state == 3'b110)begin
    move<= 4'b0000;
    secthrow<= 1'b1;
    end else begin
    move<= 4'b0000;
    secthrow <= 1'b0;
    end
    end
    else begin
    if(state == 3'b001)begin
    move<= 3'b001;
    end
    else if(state == 3'b010)begin
    move<= 3'b010;
    end
    else if(state == 3'b011)begin
    move<= 3'b011;
    end
    else if(state == 3'b100)begin
    move<= 4'b0000;
    secthrow<= 1'b1;
    end
    else if(state == 3'b101)begin
    move<= 3'b101;
    end
    else if(state == 3'b110)begin
    move<= 4'b0000;
    secthrow<= 1'b1;
    end 
    else begin
    move<= 4'b0000;
    secthrow<= 1'b0;
    end
    end
    end
    end
    
    
    
    
    
  
    
endmodule
