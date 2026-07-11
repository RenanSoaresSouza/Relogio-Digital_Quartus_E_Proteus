module mux3x1(
input aj,
input A,
input B,
input C,
output reg Z
);
	reg [1:0] counter = 2'b00;
	
	always @(posedge aj) begin 
		counter <= counter + 2'b01;
	end
	
	always @(aj or A or B  or C) begin 
			case (counter)
				2'b00: Z <= 1'b0;
				2'b01: Z <= A;
				2'b10: Z <= B;
				2'b11: Z <= C;
			endcase
	end

endmodule 