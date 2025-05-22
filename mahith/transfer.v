`timescale 1ns / 1ps

// Create Date: 05/20/2025 09:56:55 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: transfer
// Project Name: Parallel Memory Write-Read Engine Using Split Clocks
module transfer(
input [15:0]a,
input clk,
input clk1,
input clk2,
input clk3,
input clk4,
input rd,
input wr,
input rst,
output reg [15:0]out

    );
    integer i; //integer i it is an initiator
    reg [15:0]memloc[15:0]; //memory location with 16 spaces and each space is 16 bit data will be there
    always@(posedge clk)begin //for every poesdge clk means rising clk edge
    if(rst==0)begin // if reset pin is set low
    if(rd==1)begin // if rd control pin is set high
    for(i=0;i<=15;i=i+1)begin //for loop starts from memloc 0 to memloc 15 
    memloc[i]<= a; // randomly generated data will be read into the different memloc
    end //for loop ends 
    end else begin //rd control pin is set low
    for(i=0;i<=15;i=i+1)begin //for loop begins again for memloc 
    memloc[i]<= 16'b0000000000000000; //all memloc fills with 16 bit's 0
    end //for loop ends here 
    end // rd control stops here
    end else begin //if reset pin is high
    if(wr==1)begin //if write control pin is set to 1
    if(clk1==1)begin //if clk1 is set 1
    out[3:0]<= { memloc[3][0],memloc[2][0],memloc[1][0],memloc[0][0]}; // each memloc bit assigned to 4 bits output
    end else begin
    out[3:0]<= 4'b1111; // 4 bits of 1 will be allocated to 
    end //ending the else block 
    if(clk2==1)begin
    out[7:4] <= {memloc[7][0],memloc[6][0],memloc[5][0],memloc[4][0]};
    end else begin
    out[7:4]<= 4'b1111;
    end
    if(clk3==1)begin
    out[11:8] <= {memloc[11][0],memloc[10][0],memloc[9][0],memloc[8][0]};
    end else begin
    out[11:8]<= 4'b1111;
    end
    if(clk4==1)begin
    out[15:12] <= {memloc[15][0],memloc[14][0],memloc[13][0],memloc[12][0]};
    end else begin
    out[15:12]<= 4'b1111;
    end
    end else begin //if wr control beocmes 0
    out<= 16'b1111111111111111; // output will be loaded with 16 bit's of 1
    end
    end
    end
     
    
    
    
    
    
    
    
    
    
    
    
endmodule
