module ms(
input clk,
input ent,
output reg rco,
output reg [3:0] su,
output reg [3:0] sd
);
	initial su = 4'b0000;
	initial sd = 4'b0000;
	initial rco = 1'b0; 
	
	
	always @ (posedge clk) begin
		su <= (ent == 1'b1)? su + 4'b0001 : su;
		if(su == 9 && sd == 5 && ent ==1) begin
			sd <= 4'b0000;
			su <= 4'b0000;
		end
		else if (su == 9 && ent == 1) begin
			sd <= sd + 4'b0001;
			su <= 4'b0000;
		end
		
	end
	always @(*) begin
		rco <= 1'b0;
		if (su == 9 && sd == 5) begin 
			rco <= 1'b1;
		end
	end
endmodule 