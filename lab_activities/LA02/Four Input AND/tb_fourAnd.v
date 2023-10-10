module tb_fourAndTest;

    reg a, b, c, d;
    wire out;
    wire [6:0] segA, segB, segC, segD, segOut;

    // Instantiate the module to be tested
    fourAndTest dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .out(out),
        .segA(segA),
        .segB(segB),
        .segC(segC),
        .segD(segD),
        .segOut(segOut)
    );

    // Stimulus generation
    initial begin
        $monitor("a=%b, b=%b, c=%b, d=%b | out=%b | segA=%h, segB=%h, segC=%h, segD=%h, segOut=%h", 
                 a, b, c, d, out, segA, segB, segC, segD, segOut);

        // Test case 1: All inputs are 0, so the output should be 0
        a = 1'b0;
        b = 1'b0;
        c = 1'b0;
        d = 1'b0;
        #10;

        // Test case 2: Turn on input 'a', so the output should be 0 but segA displays 1
        a = 1'b1;
        b = 1'b0;
        c = 1'b0;
        d = 1'b0;
        #10;

        // Test case 3: Turn on input 'b', so the output should be 0 but segB displays 1
        a = 1'b0;
        b = 1'b1;
        c = 1'b0;
        d = 1'b0;
        #10;

        // Test case 4: Turn on inputs 'c' and 'd', so the output should be 0, and segC and segD display 1
        a = 1'b0;
        b = 1'b0;
        c = 1'b1;
        d = 1'b1;
        #10;
		  
		  // Test case 5: Turn on all inputs, output should be 1
		  a = 1'b1;
        b = 1'b1;
        c = 1'b1;
        d = 1'b1;
        #10;

        // Add more test cases as needed

        $finish;
    end
endmodule
