module tb_fulladder;

reg ain, bin, cin;
wire sum;
wire cout;
wire [6:0] segBit;

full_adder test (
    .sum(sum),
    .cout(cout),
    .ain(ain),
    .bin(bin),
    .cin(cin)
);

// Instantiate the seven_segment_decoder module
seven_segment_decoder uut_decoder (
    .binary_input({cin, sum}),
    .segBit(segBit)
);

initial begin
    
    // Test cases
    ain = 1'b0; bin = 1'b0; cin = 1'b0; #10
    ain = 1'b1; bin = 1'b0; cin = 1'b0; #10
    ain = 1'b0; bin = 1'b1; cin = 1'b0; #10
    ain = 1'b1; bin = 1'b1; cin = 1'b0; #10
    ain = 1'b0; bin = 1'b0; cin = 1'b1; #10
    ain = 1'b1; bin = 1'b0; cin = 1'b1; #10
    ain = 1'b0; bin = 1'b1; cin = 1'b1; #10
    ain = 1'b1; bin = 1'b1; cin = 1'b1; #10;
	 
end

endmodule
