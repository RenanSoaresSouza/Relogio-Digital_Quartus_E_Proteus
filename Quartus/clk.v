module clk (
    input clk_in,      
    output reg clk_1hz,      
	 output reg clk_10hz,
	 output reg clk_100hz
	 
);
	reg [25:0] counter_1hz = 27'd0;
	reg [25:0] counter_10hz = 27'd0;
	reg [25:0] counter_100hz = 27'd0;
	initial clk_1hz = 1'b0;
	initial clk_10hz = 1'b0;
	initial clk_100hz = 1'b0;

	always @(posedge clk_in) begin 
		if (counter_1hz >= 25'd24999999) begin 
			counter_1hz <= 0;
			clk_1hz <= ~clk_1hz;
		end else begin 
			counter_1hz <= counter_1hz + 27'd1;
		end
		if (counter_10hz >= 25'd02499999) begin 
			counter_10hz <= 0;
			clk_10hz <= ~clk_10hz;
		end else begin 
			counter_10hz <= counter_10hz + 27'd1;
		end
		if (counter_100hz >= 25'd00249999) begin 
			counter_100hz <= 0;
			clk_100hz <= ~clk_100hz;
		end else begin 
			counter_100hz <= counter_100hz + 27'd1;
		end
		
	
	end

endmodule 