`timescale 1ns / 1ps
  
// Create Date: 05/14/2025 10:08:31 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: smtwashrm
// Project Name: SMART RESTROOM SYSTEM 
module smtwashrm(
input flush_in,
input clk,
input door_open_inside,
input flush_out,
input door_open_outside,
input water_level,
output reg door_state,
output reg vacancy_ind,
output reg water_level_indi_owner,
output reg light


    );
    always@(posedge clk)begin // whenever the smart rest room system is activated
    if(water_level ==1)begin  //only when water level is full then only it will go for next loop and checks wheather the flsuh is on or not
    if(flush_out ==1)begin // checks wheather the incomming user swtiches the flsuh or not if flushes then only the door sensor will be activated
    if(door_open_outside ==1)begin //door lock gets activated and  presses it 
    door_state<=1; //door opens
    light<=1; // light gets turned on
    vacancy_ind<= 1; // vacancy indicator shows that there is a person 
    water_level_indi_owner <=0; // the owner knows that no need to turn on the motor
    end else begin // if all good and the user dooesn't press the door open 
    door_state<=0;  //door will be inclosed state only
    light<=0; //lights will be tuned off only
    vacancy_ind<= 0; //vacancy indicator shows vacant only
    water_level_indi_owner <=0; //owner knows that still no need to on motor
    end
    end
    else begin // if the flsuh is not pressed then the door control will not get activated
    door_state<=0; // door remains closed
    light<=0; // lights remined turned off
    vacancy_ind<= 0; //vacancy indicator still shows no one is there
    water_level_indi_owner <=0; // owner nows that no need to turn on motor
    end
    end else begin // if the water is only not available
    door_state<=0; //door remains closed
    light<=0; // lights are turned off mode still
    vacancy_ind<= 0; // vacancy indicator shows still it is vacant only
    water_level_indi_owner <=1; //owner gets to know that he should turn on motor 
    end
    if(flush_in ==1)begin //if the user completes his task inside the rest room he/she should flush if not door open sensor will not activated
    if(door_open_outside ==1) begin // the open door will gets activated and then if we press it open 
    door_state<=1; // door will be opened 
    light<=0; // lights gets offed automatically
    end
    else begin // if the door sensor activated but if you aree not pressing open
    door_state<= 0; // door remains closed
    light<=1; //light still switched on
    end
    end
    else begin // if you are not pressing the flush after the use
    door_state <= 0; // door remains closed
    light<=1; // light still remains turned on only
    end
    end
    
    
    

    
    
    
    
    
    
endmodule
