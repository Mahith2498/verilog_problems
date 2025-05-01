`timescale 1ns / 1ps
// Create Date: 04/19/2025 11:25:10 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: ram8bit
// Project Name: 8 bit Random Access Memory ( RAM)
module ram8bit(
input clk,
input rst,
input wr_co,
input rd_co,
input [7:0]data,
output reg [7:0] out

    );
    integer i;
    reg [7:0]memloc[7:0];
    always@(posedge clk)begin
    if(rst==0)begin
    for(i=0;i<=7;i=i+1)begin
    memloc[i]<= 8'b00000000;
    end
    end
    else begin
    if(rd_co==1)begin
    for(i=0;i<=7;i=i+1)begin
    memloc[i] <= data;
    end
    end
    else begin
    for(i=0;i<=7;i=i+1)begin
    memloc[i] <= 8'b00000000;
    end
    end
    if(wr_co==1)begin
    for(i=0;i<=7;i=i+1)begin
    out<= memloc[i];
    end
    end
    else begin
    out<= 8'b11111111;
    end
    end
    end
    
    
    
    

    
    
    
    
endmodule
