`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:13:18 03/06/2014 
// Design Name: 
// Module Name:    slow_clock 
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
module bcd(data_in,bcd1,bcd0);

input [5:0] data_in;
output [3:0] bcd1;
output [3:0] bcd0;

reg [3:0] bcd1;
reg [3:0] bcd0;

always@ (data_in)
begin
	case(data_in)
	 0 : begin bcd1 <= 4'b0000; bcd0 <= 4'b0000; end
    1 : begin bcd1 <= 4'b0000; bcd0 <= 4'b0001; end
    2 : begin bcd1 <= 4'b0000; bcd0 <= 4'b0010; end
    3 : begin bcd1 <= 4'b0000; bcd0 <= 4'b0011; end
    4 : begin bcd1 <= 4'b0000; bcd0 <= 4'b0100; end
    5 : begin bcd1 <= 4'b0000; bcd0 <= 4'b0101; end
    6 : begin bcd1 <= 4'b0000; bcd0 <= 4'b0110; end
    7 : begin bcd1 <= 4'b0000; bcd0 <= 4'b0111; end
    8 : begin bcd1 <= 4'b0000; bcd0 <= 4'b1000; end
    9 : begin bcd1 <= 4'b0000; bcd0 <= 4'b1001; end
    10 : begin bcd1 <= 4'b0001; bcd0 <= 4'b0000; end
    11 : begin bcd1 <= 4'b0001; bcd0 <= 4'b0001; end
    12 : begin bcd1 <= 4'b0001; bcd0 <= 4'b0010; end
    13 : begin bcd1 <= 4'b0001; bcd0 <= 4'b0011; end
    14 : begin bcd1 <= 4'b0001; bcd0 <= 4'b0100; end
    15 : begin bcd1 <= 4'b0001; bcd0 <= 4'b0101; end
    16 : begin bcd1 <= 4'b0001; bcd0 <= 4'b0110; end
    17 : begin bcd1 <= 4'b0001; bcd0 <= 4'b0111; end
    18 : begin bcd1 <= 4'b0001; bcd0 <= 4'b1000; end
    19 : begin bcd1 <= 4'b0001; bcd0 <= 4'b1001; end
    20 : begin bcd1 <= 4'b0010; bcd0 <= 4'b0000; end
    21 : begin bcd1 <= 4'b0010; bcd0 <= 4'b0001; end
    22 : begin bcd1 <= 4'b0010; bcd0 <= 4'b0010; end
    23 : begin bcd1 <= 4'b0010; bcd0 <= 4'b0011; end
    24 : begin bcd1 <= 4'b0010; bcd0 <= 4'b0100; end
    25 : begin bcd1 <= 4'b0010; bcd0 <= 4'b0101; end
    26 : begin bcd1 <= 4'b0010; bcd0 <= 4'b0110; end
    27 : begin bcd1 <= 4'b0010; bcd0 <= 4'b0111; end
    28 : begin bcd1 <= 4'b0010; bcd0 <= 4'b1000; end
    29 : begin bcd1 <= 4'b0010; bcd0 <= 4'b1001; end
    30 : begin bcd1 <= 4'b0011; bcd0 <= 4'b0000; end
    31 : begin bcd1 <= 4'b0011; bcd0 <= 4'b0001; end
	 32 : begin bcd1 <= 4'b0011; bcd0 <= 4'b0010; end
    33 : begin bcd1 <= 4'b0011; bcd0 <= 4'b0011; end
    34 : begin bcd1 <= 4'b0011; bcd0 <= 4'b0100; end
    35 : begin bcd1 <= 4'b0011; bcd0 <= 4'b0101; end
    36 : begin bcd1 <= 4'b0011; bcd0 <= 4'b0110; end
    37 : begin bcd1 <= 4'b0011; bcd0 <= 4'b0111; end
    38 : begin bcd1 <= 4'b0011; bcd0 <= 4'b1000; end
    39 : begin bcd1 <= 4'b0011; bcd0 <= 4'b1001; end
    40 : begin bcd1 <= 4'b0100; bcd0 <= 4'b0000; end
    41 : begin bcd1 <= 4'b0100; bcd0 <= 4'b0001; end
    42 : begin bcd1 <= 4'b0100; bcd0 <= 4'b0010; end
    44 : begin bcd1 <= 4'b0100; bcd0 <= 4'b0100; end
    45 : begin bcd1 <= 4'b0100; bcd0 <= 4'b0101; end
    46 : begin bcd1 <= 4'b0100; bcd0 <= 4'b0110; end
    47 : begin bcd1 <= 4'b0100; bcd0 <= 4'b0111; end
    48 : begin bcd1 <= 4'b0100; bcd0 <= 4'b1000; end
    49 : begin bcd1 <= 4'b0100; bcd0 <= 4'b1001; end
    50 : begin bcd1 <= 4'b0101; bcd0 <= 4'b0000; end
    51 : begin bcd1 <= 4'b0101; bcd0 <= 4'b0001; end
    52 : begin bcd1 <= 4'b0101; bcd0 <= 4'b0010; end
    53 : begin bcd1 <= 4'b0101; bcd0 <= 4'b0011; end
    54 : begin bcd1 <= 4'b0101; bcd0 <= 4'b0100; end
    55 : begin bcd1 <= 4'b0101; bcd0 <= 4'b0101; end
    56 : begin bcd1 <= 4'b0101; bcd0 <= 4'b0110; end
    57 : begin bcd1 <= 4'b0101; bcd0 <= 4'b0111; end
    58 : begin bcd1 <= 4'b0101; bcd0 <= 4'b1000; end
    59 : begin bcd1 <= 4'b0101; bcd0 <= 4'b1001; end
    60 : begin bcd1 <= 4'b0110; bcd0 <= 4'b0000; end
    61 : begin bcd1 <= 4'b0110; bcd0 <= 4'b0001; end
    62 : begin bcd1 <= 4'b0110; bcd0 <= 4'b0010; end
    63 : begin bcd1 <= 4'b0110; bcd0 <= 4'b0011; end
	 endcase
	 end
endmodule