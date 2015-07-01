`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:00:36 03/06/2014 
// Design Name: 
// Module Name:    project1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module proj(clk,rst,btn,led,cathodes,anodes);
input clk,rst;
input [2:0] btn;
output [5:0] led;
output [6:0] cathodes;
output [3:0] anodes;

wire [4:0] rand1;
wire [4:0] rand2;
wire [3:0] bcd1,bcd0;
reg [2:0] nstate,cstate;
reg [5:0] led;
reg enable1 = 0;
reg enable2 = 0;
reg slow_clock;


always @(posedge clk or negedge rst)
begin
	if (~rst) cstate <= 7;
	else cstate <= nstate;
end
always @(btn or cstate)
case(btn)
	3'b001: nstate=0;
	3'b010: nstate=1;
	3'b100: nstate=2;
	3'b000: nstate = cstate;
	default: nstate = 7;
endcase

always @(posedge clk)
begin
	if(!rst)
	begin
		enable1 <= 0;
		enable2 <= 0;
	end
	case (cstate)
	0: begin
		enable1 <= 1;
		led = rand1;
		end
	1: begin
		enable2 <= 1;
		led = rand2;
		end
	2: begin
		led = rand1 + rand2;
		end
	7: begin
		led = 6'b000000;
		end
	endcase
end		


	
RandomNumber RN1(clk,rst,enable1,rand1);
RandomNumber RN2(clk,rst,enable2,rand2);
bcd BCD(led,bcd1,bcd0);
seg_7 SEG7(clk,rst,cathodes,anodes,bcd1,bcd0);

endmodule
