`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:44:17 03/06/2014 
// Design Name: 
// Module Name:    seg_7 
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
module seg_7(clk,rst,cathodes,anodes,bcd1,bcd0);

input clk,rst;
input [3:0] bcd1,bcd0;
output [6:0] cathodes;
output [3:0] anodes;
reg [6:0] cathodes;
reg [3:0] anodes;
reg [3:0] dig;
reg slow_clock;
integer count;

always @(posedge clk)
create_slow_clock(clk, slow_clock);

always @(posedge slow_clock)
	begin
		if (rst == 0) anodes = 4'b 1111;
		else
		begin
		case (anodes)
		4'b 1101 : anodes = 4'b 1011;
		4'b 1011 : anodes = 4'b 1101;
		4'b 1111 : anodes = 4'b 1011;
		default : anodes = 1111;
		endcase
		case (anodes)
		4'b 1011 : dig = bcd1;
		4'b 1101 : dig = bcd0;
		endcase
		cathodes = calc_cathode_value(dig);
		end
	end
	
	function [6:0] calc_cathode_value;
		input [3:0] dig;
		begin
			case (dig)
				0: calc_cathode_value =7'b1000000;
				1: calc_cathode_value =7'b1111001;
				2: calc_cathode_value =7'b0100100;
				3: calc_cathode_value =7'b0110000;
				4: calc_cathode_value =7'b0011001;
				5: calc_cathode_value =7'b0010010;
				6: calc_cathode_value =7'b0000010;
				7: calc_cathode_value =7'b1111000;
				8: calc_cathode_value =7'b0000000;
				9: calc_cathode_value =7'b0010000;
			endcase
		end
	endfunction
	
	task create_slow_clock;
	input clock;
	inout slow_clock;
	integer count;
	begin
		if (count > 250000)
		begin
		count=0;
		slow_clock = ~slow_clock;
		end
		count = count+1;
	end

endtask

	
endmodule
