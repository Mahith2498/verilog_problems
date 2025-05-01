`timescale 1ns / 1ps
// Create Date: 04/30/2025 10:57:06 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: calurom
// Project Name: ALUStore
module calurom(
input [7:0]a, //Input a and by default it is an wire type
input [7:0]b,    //Input b and by default it is an wire type
input [3:0]sel,   //Input sel and  by default it is an wire type
input rc,     //Input read control and  by default it is an wire type
output reg [7:0]out  //Output of the alu operation

    );
    integer i ; // initiaitor it is useful for for loop execution 
    reg [7:0]memloc[7:0];  // this signifies that a memory location of name memloc which has 8 locations and each location can store 8 bit of data
    always@(*)begin // for any changes in the a and b inputs immediatley this blcck should execute
    if(rc==0)begin  // when the always block starts execution it will check about read control if it is binary 0 it will behave as an alu
     
    case(sel)  // whole this case block will execute the alu operation 
    4'b0000 : out = a+b;
    4'b0001 : out = a-b;
    4'b0110 : out = a*b;
    4'b1100 : out = a&b;
    4'b1001 : out = a|b;
    4'b1101 : out = ~(a&b);
    4'b0111 : out = ~(a|b);
    4'b1110 : out = a^b;
    4'b1111 : out = ~(a^b);
    default : out= 8'b00000000;
    endcase
    end
    else begin //when the read control becomes binary 1 then the module behaves as RAM then it will start reading the output values
    for(i=0;i<=7;i=i+1)begin // for loop for storing the output value at different loccations 
    memloc[i] = out; // as for loop continues for memloc will get different values of output out of alu and they will be stored at different memloc
    end
    end
    end
    
    
    
    
    
    
endmodule
