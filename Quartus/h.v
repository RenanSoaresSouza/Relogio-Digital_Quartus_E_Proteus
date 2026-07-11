module h(
input clk,
input ent,
output reg [3:0] hu,
output reg [3:0] hd
);
	initial hu = 4'b0000;
	initial hd = 4'b0000;
	
	always @ (posedge clk) begin
		hu <= (ent == 1'b1) ? hu + 4'b0001 : hu;
		if (hd == 2 && hu ==3 && ent ==1) begin 
			hd <= 4'b0000;
			hu <= 4'b0000;
		end
		else if (hu == 9 && ent ==1) begin 
			hu <= 4'b0000;
			hd <= hd + 4'b0001;
		end
	end
	
endmodule 