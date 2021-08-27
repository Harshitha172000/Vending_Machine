`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2021 13:50:05
// Design Name: 
// Module Name: vending_m
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


module vm( input wire clk, input reset,
 input [1:0]coin, output reg [2:0]out, output reg [1:0]change, input [2:0] choice);
 
 localparam idle=0;
 localparam coffee=1;
 localparam snacks=2;
 localparam water=3;
 localparam wait_coffee=4;
 localparam wait1_snack=5;
 localparam wait2_snack=6;
 localparam cooldrinks=7;
 localparam wait_cooldrinks=8;

 
 reg [2:0] state;
 
 always@(posedge clk) begin
 if (reset) begin
 state<=idle;
 out<=3'b000;
 change<=0;
 end
 else begin
 case(state)
 idle: if (choice==1)begin
       state<=coffee;
       out<=3'b00;
       change<=0;
       end
       else if(choice==2)begin
       state<=snacks;
       out<=3'b000;
       change<=0;
       end
       else if(choice==3)begin
       state<=water;
       out<=3'b000;
       change<=0;
       end
       else if (choice==4)begin
       state<=cooldrinks;
       out<=3'b000;
       change<=0;
       end
       else begin
       state<=idle;
       out<=3'b000;
       change<=0;
       end
       
 coffee:if (coin==1)begin
        state<=wait_coffee;
        out<=3'b000;
        change<=0;
        end
        else if (coin==2)begin
        out<=3'b001;
        change<=0;
        state<=idle;
        end
        else if (coin==3) begin
        out<=3'b001;
        change<=2'd1;
        state<=idle;
        end
        else begin
        state<=idle;
        end
 
 wait_coffee: if (coin==1) begin
              out<=3'b001;
              change<=0;
              state<=idle;
              end
              else if (coin==2) begin
              out<=3'b001;
              change<=2'd1;
              state<=idle;
              end
              else if (coin==3) begin
              out<=3'b001;
              change<=2'd2;
              state<=idle;
              end
              else
              state<=idle;
              
  snacks:if (coin==1)begin
         state<=wait1_snack;
         out<=3'b000;
         change<=0;
         end
         else if (coin==2)begin
         out<=3'b000;
         change<=0;
         state<=wait2_snack;
         end
         else if (coin==3)begin
         out<=3'b010;
         change<=0;
         state<=idle;
         end
         else begin
         state<=idle;
         end
         
 wait1_snack: if (coin==1) begin
              state<=wait2_snack;
              out<=3'b000;
              change<=0;
              end
              else if (coin==2) begin
              out<=3'b010;
              change<=0;
              state<=idle;
              end
              else if (coin==3) begin
              out<=3'b010;
              change<=2'd1;
              state<=idle;
              end
              else begin
              state<=idle;
              end
              
 wait2_snack: if (coin==1) begin
              state<=idle;
              out<=3'b010;
              change<=0;
              end
              else if (coin==2) begin
              out<=3'b010;
              change<=2'd1;
              state<=idle;
              end
              else if (coin==3) begin
              state<=idle;
              out<=3'b010;
              change<=2'd2;
              end
              else
              state<=idle;
              
 water:     if (coin==1)begin
             state<=idle;
             out<=3'b011;
             change<=0;
             end
             else if (coin==2)begin
             out<=3'b011;
             change<=2'd1;
             state<=idle;
             end
             else if (coin==3)begin
             out<=3'b011;
             change<=2'd2;
             state<=idle;
             end
             else begin
             state<=idle;
             end
             
 cooldrinks:if (coin==1)begin
        state<=wait_cooldrinks;
        out<=0;
        change<=0;
        end
        else if (coin==2)begin
        out<=4;
        change<=0;
        state<=idle;
        end
        else if (coin==3) begin
        out<=4;
        change<=2'd1;
        state<=idle;
        end
        else begin
        state<=idle;
        end
 
 wait_cooldrinks: if (coin==1) begin
              out<=4;
              change<=0;
              state<=idle;
              end
              else if (coin==2) begin
              out<=4;
              change<=2'd1;
              state<=idle;
              end
              else if (coin==3) begin
              out<=4;
              change<=2'd2;
              state<=idle;
              end
              else
              state<=idle;           
             
 endcase
 end
 end
endmodule
