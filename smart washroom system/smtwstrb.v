`timescale 1ns / 1ps

// Create Date: 05/14/2025 11:17:29 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: smtwstrb
// Project Name: SMART REST ROOM SYSTEM
module smtwstrb;
reg flush_in;
reg clk;
reg door_open_inside;
reg flush_out;
reg door_open_outside;
reg water_level;
wire  door_state;
wire  vacancy_ind;
wire water_level_indi_owner;
wire light;
smtwashrm dut(
.flush_in(flush_in),
.clk(clk),
.door_open_inside(door_open_inside),
.flush_out(flush_out),
.door_open_outside(door_open_outside),
.water_level(water_level),
.door_state(door_state),
.vacancy_ind(vacancy_ind),
.water_level_indi_owner(water_level_indi_owner),
.light(light)
);
initial begin
$monitor("flush_in=%b,clk=%b ,door_open_inside =%b ,flush_out= %b,door_open_outside =%b ,water_level=%b,vacancy_ind=%b, water_level_indi_owner=%b,light=%b,door_state",flush_in,clk,door_open_inside, flush_out, door_open_outside,water_level,vacancy_ind,water_level_indi_owner,light,door_state);
end
initial begin
repeat(100)begin
flush_in = $urandom_range(0,1);
clk = $urandom_range(0,1);
door_open_inside= $urandom_range(0,1);
water_level = $urandom_range(0,1);
door_open_outside= $urandom_range(0,1);
flush_out = $urandom_range(0,1);
#10;
end
end


    
endmodule
