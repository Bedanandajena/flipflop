`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 17:25:38
// Design Name: 
// Module Name: tb_dff
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


module tb_dff( );
reg clk,rst,d;
wire q,qbar;
d_ff d1(clk,rst,d,q,qbar );
always #20 clk=~clk;
initial clk=0;
initial
begin
rst=1'b1;d=1'b0;#40;
rst=1'b1;d=1'b1;#40;
rst=1'b0;d=1'b0;#40;
rst=1'b0;d=1'b1;#40;
end

endmodule
