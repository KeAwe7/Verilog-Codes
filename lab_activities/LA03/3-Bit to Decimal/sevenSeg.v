//Tumanda, Keane Kiechel B.

module sevenSeg(
    input  [2:0] x,       			// 3-bit binary input
    output reg [6:0] segDecimal, // Display for the decimal equivalent
	 output [6:0] segX2,
	 output [6:0] segX1,
	 output [6:0] segX0
);

assign segX2 = (x[2] == 1'b1) ? 7'b1111001 : 7'b1000000;
assign segX1 = (x[1] == 1'b1) ? 7'b1111001 : 7'b1000000;
assign segX0 = (x[0] == 1'b1) ? 7'b1111001 : 7'b1000000;

always @*
begin
    case (x)
        3'b000 : segDecimal = 7'b1000000; // Decimal 0
        3'b001 : segDecimal = 7'b1111001; // Decimal 1
        3'b010 : segDecimal = 7'b0100100; // Decimal 2
        3'b011 : segDecimal = 7'b0110000; // Decimal 3
        3'b100 : segDecimal = 7'b0011001; // Decimal 4
        3'b101 : segDecimal = 7'b0010010; // Decimal 5
        3'b110 : segDecimal = 7'b0000010; // Decimal 6
        3'b111 : segDecimal = 7'b1111000; // Decimal 7
        default: segDecimal = 7'b1111111; 
    endcase
end

endmodule
