module seven_segment_decoder (
    input wire [2:0] binary_input,
    output reg [6:0] segBit
);

always @(*) begin
    case (binary_input)
        3'b000: segBit = 7'b1000000; // Display '0' on 7-segment
        3'b001: segBit = 7'b1111001; // Display '1' on 7-segment
        3'b010: segBit = 7'b0100100; // Display '2' on 7-segment
        3'b011: segBit = 7'b0110000; // Display '3' on 7-segment
        3'b100: segBit = 7'b0011001; // Display '4' on 7-segment
        3'b101: segBit = 7'b0010010; // Display '5' on 7-segment
        3'b110: segBit = 7'b0000010; // Display '6' on 7-segment
        3'b111: segBit = 7'b1111000; // Display '7' on 7-segment
        default: segBit = 7'b0000110; // Display 'E' (Error) on 7-segment for invalid input
    endcase
end

endmodule
