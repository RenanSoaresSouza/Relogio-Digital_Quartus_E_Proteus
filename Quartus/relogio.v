module rel(
input clk_in,
input aj,
output [6:0] su,
output [6:0] sd,
output [6:0] mu,
output [6:0] md,
output [6:0] hu,
output [6:0] hd
);

wire rco;
wire rcom;
wire clk_1hz;
wire clk_10hz;
wire clk_100hz;
wire clk_out;
wire rcoh = rco && rcom;
wire [3:0] suw;
wire [3:0] sdw;
wire [3:0] muw;
wire [3:0] mdw;
wire [3:0] huw;
wire [3:0] hdw;

clk div(clk_in,clk_1hz,clk_10hz,clk_100hz);

mux3x1 esc(aj,clk_1hz,clk_10hz,clk_100hz,clk_out);


ms segundo(clk_out,1'b1,rco,suw,sdw);
ms minuto (clk_out,rco,rcom,muw,mdw);
h hora(clk_out,rcoh,huw,hdw);

bcd_7_seg Sd(sd,sdw);
bcd_7_seg Su(su,suw);
bcd_7_seg Md(md,mdw);
bcd_7_seg Mu(mu,muw);
bcd_7_seg Hd(hd,hdw);
bcd_7_seg Hu(hu,huw);

endmodule 