module reg_d(D,clk, Q);
input D; // Data input 
output reg Q; // output Q 
input clk; // clock input 
always @(posedge clk) 
begin
 Q <= D; 
end 
endmodule