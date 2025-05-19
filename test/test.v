`timescale 1ns / 1ps
 
// Create Date: 05/19/2025 04:42:25 PM
// Design Name: 
// Module Name: test



module test(
input [99:0]a,
output reg [99:0]b,
input clk,
input rst

    );
    reg [26:0]count;
    always@(posedge clk)begin
    if(rst==0)begin //active low reset condition
    b<= 100'b0; // initially 100 bits of 0's will be transferred
    end
    else begin //now reset beocmes 1 and now 
    if(count == 100000000)begin // counter at 1 ns 
    b[49:0]<= a[49:0]; //lower half of input data will be filled to the lower output b output memory 
    end
    else begin
    b[49:0]<= 50'b1; // if it is not at 1 ns it will take some random 50 bits of 1 to the lower half
    count <= count+1; 
    end
    if(count == 200000000)begin //if the counter reaches to 2ns t
    b[99:50]<= a[99:50]; // now other 50 bit input data will get transferred 
    end
    else begin
    b[99:50]<= 50'b1; //if it's not 2ns then it will take some 50 bit 1 data
    end
    end
    end
endmodule
