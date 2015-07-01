`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:27:53 03/07/2014 
// Design Name: 
// Module Name:    RandomNumber 
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
module flipflop(q,d,enable,rst,clk);
	input clk;
	input rst;
	input d,enable;
	output q;
	reg q;
	always @(posedge clk)
		begin
		if (~rst)
			q <= 1'b1;
		else if (!enable)
			q <= d;
		end
endmodule

module RandomNumber(clk,rst,enable,state_out);
   output [4:0] state_out;
	input rst,enable;
	input clk;
	wire [4:0] state_out;
	
	
	flipflop ff0 (state_out[0],feedback,enable,rst,clk);
	flipflop ff1 (state_out[1],state_out[0],enable,rst,clk);
	flipflop ff2 (state_out[2],state_out[1],enable,rst,clk);
	flipflop ff3 (state_out[3],state_out[2],enable,rst,clk);
	flipflop ff4 (state_out[4],state_out[3],enable,rst,clk);

	xor G1(feedback,state_out[1],state_out[4]);
	
endmodule
