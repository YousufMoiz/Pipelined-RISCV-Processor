module mux_64_TRIINPUT
(
input[63:0] a,
input[63:0] b,
input[63:0] c,
input[1:0] sel,
output reg[63:0] dataout
);




    always @(*)
	   begin
		case (sel)
			2'b00: dataout = a;
			2'b01: dataout = b;
			2'b10: dataout = c;
	    endcase
	   
	end

endmodule

