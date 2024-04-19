`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 16:36:40
// Design Name: 
// Module Name: tb_sr_ff
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


module tb_sr_ff( );
reg clk,rst,s,r;
wire q,qbar;
sr_flipflop s1(clk,rst,s,r,q,qbar);
always  #20 clk=~clk ;
initial
clk=0;
initial
begin
rst=1'b1;{s,r}=2'b01;#40;
rst=1'b1;{s,r}=2'b10;#40;
 rst=1'b0;{s,r}=2'b00;#40;
rst=1'b0;{s,r}=2'b01;#40;
rst=1'b0;{s,r}=2'b10;#40;
rst=1'b0;{s,r}=2'b11;#40;


end
endmodule
