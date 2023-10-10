module tb_eightBitAdder;

    reg [7:0] a;
    reg [7:0] b;
    wire [7:0] s;
    wire cout;

    // Instantiate the eightBitAdder module
    eightBitAdder uut (
        .a(a),
        .b(b),
        .s(s),
        .cout(cout)
    );

    // Stimulus generation
    initial begin
        $monitor("a = %b, b = %b, sum = %b, cout = %b", a, b, s, cout);

        
        a = 8'b11011010;
        b = 8'b01100101; #10;        
		  
		  a = 8'b10011011;
        b = 8'b01101101; #10;
        
        a = 8'b10101111;
        b = 8'b01011000; #10;

        $finish;
    end

endmodule
