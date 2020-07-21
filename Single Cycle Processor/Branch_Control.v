module Branch_Control(

input[3:0] Funct,
input zero, Less,
output reg branch_op

);

	always @ (Funct or zero or Less)
	begin
		if ((Funct[2:0] == 3'b000) && (zero == 1'b1))
			branch_op = 1'b1;
		else if ((Funct[2:0] == 3'b100) && (Less == 1'b1))
			branch_op = 1'b1;
		else
			branch_op = 1'b0;
	end
	
endmodule