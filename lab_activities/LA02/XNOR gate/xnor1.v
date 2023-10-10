module xnor1 (b, a, z);
	input a,b;
	output reg [6:0]z;
	wire c;
	assign c = a^~b;
	
	always @*
        case (c)
            1'b0 :          
            z = 7'b1000000;
				1'b1 :          
            z = 7'b1111001;
				default:
				z = 7'b1111111;
			endcase
			
endmodule
