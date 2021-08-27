`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2021 14:31:12
// Design Name: 
// Module Name: vm_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vm_tb();

reg clk;
reg reset;
reg [1:0]coin;
wire [2:0] out;
wire [1:0] change;
reg [2:0] choice;
vm v( clk, reset, coin, out, change,choice);

initial begin
clk=0;
forever #10 clk=~clk;
end

initial begin
reset=1;
#20;
reset=0;

//-----------------------------------------------------
//Choice 1=Coffee. Cost = 20Rs which implies coi
//Case 1: Given coin 2 (20 rupees)
choice=1;
coin=2;
#20
choice=0;
#30

//Case 2: Given coin 3 (30 rupees) 
choice=1;
coin=3;
#20
choice=0;
#30
//Case 3: Given two coin 1's (20 Rs)
choice=1;
coin=1;
#20
choice=0;

coin=1;
#40
//Case 4: Given only one coin 1 (10 Rs)
choice=1;
coin=1;
#20
coin=0;
choice=0;
#40
//--------------------------------------------------

// Choice 2=Snacks. Cost =30 Rs which implies 3 coins
//Case 1: Given two coin 2's (40 Rs)
choice=2;
coin=2;
#20
choice=0;
coin=2;
#40
//Case 2: Given coin 3 (30 Rs)
choice =2;
coin=3;
#20
choice =0;
#40
//Case 3: Given three coin 1's (30 Rs)
choice =2;
coin=1;
#20
choice=0;
coin=1;
#20
coin=1;
#40

// Case 4: Given only two coin 1's (20 Rs)
choice =2;
coin=1;
#20
choice=0;
coin=0;

#40

// Choice 3 - Water whose cost is (10 Rs)
// Case 1: Given one coin 3 + coin 1 = (40 Rs)
choice =3;
coin=2;
#20
choice=0;
#40

// Case 2: Given two coin 2's 
choice =3;
coin=3;
#20
choice=0;
#20
coin=0;
#80

//-----------------------------------------------------
//Choice 1=Cooldrinks. Cost = 20Rs which implies coi
//Case 1: Given coin 2 (20 rupees)
choice=4;
coin=2;
#20
choice=0;
#30

//Case 2: Given coin 3 (30 rupees) 
choice=4;
coin=3;
#20
choice=0;
#20
coin=0;
#80
reset=1;

end
endmodule
