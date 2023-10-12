module tb_threeBitRCA;

    reg [2:0] a;
    reg [2:0] b;
    wire [2:0] s;
    wire cout;
	 wire [6:0] sumBit0;
    wire [6:0] sumBit1;
    wire [6:0] sumBit2;

    // Instantiate the eightBitAdder module
    threeBitRCA test (
        .a(a),
        .b(b),
        .s(s),
        .cout(cout),
		  .sumBit0(sumBit0),
        .sumBit1(sumBit1),
        .sumBit2(sumBit2)
    );

    // Stimulus generation
    initial begin
        
        a = 3'b010;
        b = 3'b101; #10;        
		  
		  a = 3'b011;
        b = 3'b001; #10;
        
        a = 3'b111;
        b = 3'b000; #10;

		  a = 3'b011;
        b = 3'b101; #10;
		  
    end

endmodule
