module reg_32(in,Q, writereg, readreg);
 input wire [0:31] in;
 output [0:31] Q;
 input wire writereg;
 input wire readreg;
 wire clk;
 assign clk = (readreg == 1) ? 0 : writereg ;

 reg_d flipflop (.D (in), .clk (clk), .Q (Q));
endmodule

