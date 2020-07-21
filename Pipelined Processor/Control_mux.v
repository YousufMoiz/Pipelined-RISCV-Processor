module Control_mux
(
	input[7:0] a,b,
	input control_mux_sel,
	output reg[7:0] control_mux_output
);

	always @ (*)
	begin
		case (control_mux_sel)
		1'b1: control_mux_output = a;
		1'b0: control_mux_output = b;
		endcase
	end
	
endmodule
			