`timescale 1ns / 1ps
// Create Date: 04/13/2025 09:31:47 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: evodch
// Project Name: EVEN AND ODD CHECKER
module evodch(
input [7:0]a,
output reg b

    );
    always@(*)begin
    if(a[0]==1'b0)
    b=1;
    else begin
    b=0;
    end
    end
    
endmodule
