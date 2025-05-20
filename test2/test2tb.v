`timescale 1ns / 1ps

// Create Date: 05/20/2025 11:30:09 AM
// Design Name: 
// Module Name: test2tb



module test2tb;
reg clk;
initial begin // at 0ns 
clk = 0; // initially clock signal is set 0
end
always begin
#10 clk = ~clk; //100 MHz means 10 ns 
end

    
endmodule

/*for every 10 ns the clock will change*/
/*Initially at 0 ns the clk pulse is 0 and now at 10 ns it will reach to 1 abd till 20ns it will continue and then it will drop to 0 at 20ns and then it will
continue till 30 ns and then it will rise to 1 at 30ns in this way for very 10ns the clock pulse will change and hence the time period is 10ns and also the
frequency is 100MHz*/