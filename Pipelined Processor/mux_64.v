module mux_64(
input[63:0] a,
input[63:0] b,
input sel,
output[63:0] dataout
);



reg[63:0] out;

    always @(*)
	   begin
		case (sel)
			1'b0: out = a;
			1'b1: out = b;
	    endcase
	   
	end
assign dataout = out;
endmodule

