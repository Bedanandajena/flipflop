`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 17:12:29
// Design Name: 
// Module Name: tb_jk
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


module tb_jk(  );
reg clk,rst,j,k;
wire q,qbar;
jk_ff s1(clk,rst,j,k,q,qbar);
always  #20 clk=~clk ;
initial
clk=0;
initial
begin
rst=1'b1;{j,k}=2'b01;#40;
rst=1'b1;{j,k}=2'b10;#40;
 rst=1'b0;{j,k}=2'b00;#40;
rst=1'b0;{j,k}=2'b01;#40;
rst=1'b0;{j,k}=2'b10;#40;
rst=1'b0;{j,k}=2'b11;#40;


end
endmodule
