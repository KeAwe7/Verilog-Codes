module tb_xnor1;

    // Inputs
    reg a, b;
    // Outputs
    wire [6:0] z;
	 wire [6:0] w;

    // Instantiate the xnor1 module
    xnor1 instance_1 (
        .a(a),
        .b(b),
        .z(z)
    );

    initial
    begin
        // Initialize Inputs
        a = 0;
        b = 0;

        // Switch values at input for intervals of 20 timescale
        #20 a = 0; b = 0;
        #20 a = 0; b = 1;
        #20 a = 1; b = 0;
		  #20 a = 1; b = 1;
		  #20 a = 0; b = 0;
        #20 a = 0; b = 1;
        #20 a = 1; b = 0;
        #20 a = 1; b = 1;
		  #40
        // Add more test cases as needed

        // Finish simulation
        $finish;
    end

    // Print the outputs for the transcript window
    initial
    begin
        $monitor("a=%b, b=%b, z=%7b", a, b, z);
    end

endmodule
