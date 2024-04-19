`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 17:25:00
// Design Name: 
// Module Name: d_ff
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


module d_ff(clk,rst,d,q,qbar );
input clk,rst,d;
output reg q,qbar;
always@(posedge clk)
if(rst)
begin
q<=0;qbar<=1;
end
else
begin
q<=d;qbar<= ~d;
end
endmodule
