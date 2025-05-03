`timescale 1ns / 1ps
// Create Date: 05/03/2025 09:49:26 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: digclktim
// Project Name: Digital clock timer
module digclktim(
input clk,
input rst,
output reg[5:0]ss,
output reg[5:0]mm,
output reg[5:0]hh
);
always@(posedge clk) begin
if(rst==1)begin
ss<= 6'b000000;
mm<= 6'b000000;
hh<= 6'b000000;
end
else  begin
if(ss==6'b111011)begin //once the ss reaches to 59 it will reset to 0 seconds
ss<= 6'b000000;
if(mm==6'b111011)begin //once the minutes reaches to 59 min it will reset to 0 min
mm<= 6'b000000;
if(hh==6'b010111)begin //once the hour hand reaches 23 hrs it will also reset to 0 hr 
hh<= 6'b000000;
end
else begin // if not it will increment by 1 hr from 0 hr
hh<= hh+6'b000001;
end
end
else begin
mm<=mm+6'b000001; // if not it will increment by 1 mm from 0 mm
end
end
else begin
ss<= ss+6'b000001;  //if not it will increment by 1 second from 0 seconds
end
end
end


   
     
    
    
    
    
endmodule
