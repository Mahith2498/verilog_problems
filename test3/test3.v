`timescale 1ns / 1ps

// Create Date: 05/20/2025 01:13:10 PM
// Design Name: 
// Module Name: test3
// Project Name: 
module test3;
reg clk1;

initial begin //at 0 ps the clk will set 0 
clk1 = 0; //clk has been set 0

end
always begin
#20 clk1 = ~clk1; // for every 20 ps it will change 
end


    
endmodule
/* 50mHz frequency the time period will be 20 ps that menas for very 20 ps the value of clock pulse will change from 0 to 1 and 1 to 0*/ 