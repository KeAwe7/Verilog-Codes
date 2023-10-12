module threeBitRCA (
    output cout,
    output [2:0] s,
    input  [2:0] a,
    input  [2:0] b,
    output reg [6:0] sumBit0,
    output reg [6:0] sumBit1,
    output reg [6:0] sumBit2
);
    wire cin;
    assign cin = 1'b0;

    // Instantiate fullAdder(cout, sum, ain, bin, cin)
    wire [3:1] carry;    
    fullAdder FA0(carry[1], s[0], a[0], b[0], cin);
    fullAdder FA1(carry[2], s[1], a[1], b[1], carry[1]);
    fullAdder FA2(carry[3], s[2], a[2], b[2], carry[2]);

    assign cout = cin ^ carry[3];

    reg [6:0] pattern_0 = 7'b1000000; // Display '0'
    reg [6:0] pattern_1 = 7'b1111001; // Display '1'

    always @* begin
        
        case(s)
            3'b000: begin
                sumBit0 = pattern_0;
                sumBit1 = pattern_0;
                sumBit2 = pattern_0;
            end
            3'b001: begin
                sumBit0 = pattern_1;
                sumBit1 = pattern_0;
                sumBit2 = pattern_0;
            end
            3'b010: begin
                sumBit0 = pattern_0;
                sumBit1 = pattern_1;
                sumBit2 = pattern_0;
            end
            3'b011: begin
                sumBit0 = pattern_1;
                sumBit1 = pattern_1;
                sumBit2 = pattern_0;
            end
            3'b100: begin
                sumBit0 = pattern_0;
                sumBit1 = pattern_0;
                sumBit2 = pattern_1;
            end
            3'b101: begin
                sumBit0 = pattern_1;
                sumBit1 = pattern_0;
                sumBit2 = pattern_1;
            end
            3'b110: begin
                sumBit0 = pattern_0;
                sumBit1 = pattern_1;
                sumBit2 = pattern_1;
            end
            3'b111: begin
                sumBit0 = pattern_1;
                sumBit1 = pattern_1;
                sumBit2 = pattern_1;
            end
            default: begin
                // Handle other cases (optional)
                sumBit0 = 7'b1111111; // Blank
                sumBit1 = 7'b1111111; // Blank
                sumBit2 = 7'b1111111; // Blank
            end
        endcase
    end

endmodule
