module banco_reg (sel, selA, selB, data, ReadData1, ReadData2);
 input  [0:5] sel;
 input  [0:5] selA;
 input  [0:5] selB;
 output wire ReadData1[0:31];
 output wire ReadData2[0:31];
 input data[0:31];
 reg enable[0:31];
 integer i;
 integer index;
 integer indexA;
 integer indexB;
 wire Q[0:31][0:31];
always @(*) begin
  for (i=0;i<32;i=i+1)
    enable[i] =0;
case(selA) 
   (5'b00000) : indexA = 0;
   (5'b00001) : indexA = 1;     
   (5'b00010) :  indexA = 2;
   (5'b00011) :  indexA = 3; 
   (5'b00100) :  indexA = 4;     
   (5'b00101) :  indexA = 5;
   (5'b00110) :  indexA = 6;
   (5'b00111) :  indexA = 7;
   (5'b01000) :  indexA = 8;
   (5'b01001) :  indexA = 9;
   (5'b01010) :  indexA = 10;
   (5'b01011) :  indexA = 11;
   (5'b01100) :  indexA = 12;
   (5'b01101) :  indexA = 13;
   (5'b01110) :  indexA = 14; 
   (5'b01111) :  indexA = 15; 
   (5'b10000) :  indexA = 16;
   (5'b10001) :  indexA = 17;
   (5'b10010) :  indexA = 18;
   (5'b10011) :  indexA = 19; 
   (5'b10100) :  indexA = 20;
   (5'b10101) :  indexA = 21;
   (5'b10110) :  indexA = 22;
   (5'b10111) :  indexA = 23; 
   (5'b11000) :  indexA = 24;
   (5'b11001) :  indexA = 25;
   (5'b11010) :  indexA = 26;  
   (5'b11011) :  indexA = 27;  
   (5'b11100) :  indexA = 28;  
   (5'b11101) :  indexA = 29;  
   (5'b11110) :  indexA = 30;  
   (5'b11111) :  indexA = 31;
   endcase
case(selB)
   (5'b00000) : indexB = 0;
   (5'b00001) : indexB = 1;     
   (5'b00010) :  indexB = 2;
   (5'b00011) :  indexB = 3; 
   (5'b00100) :  indexB = 4;     
   (5'b00101) :  indexB = 5;
   (5'b00110) :  indexB = 6;
   (5'b00111) :  indexB = 7;
   (5'b01000) :  indexB = 8;
   (5'b01001) :  indexB = 9;
   (5'b01010) :  indexB = 10;
   (5'b01011) :  indexB = 11;
   (5'b01100) :  indexB = 12;
   (5'b01101) :  indexB = 13;
   (5'b01110) :  indexB = 14; 
   (5'b01111) :  indexB = 15; 
   (5'b10000) :  indexB = 16;
   (5'b10001) :  indexB = 17;
   (5'b10010) :  indexB = 18;
   (5'b10011) :  indexB = 19; 
   (5'b10100) :  indexB = 20;
   (5'b10101) :  indexB = 21;
   (5'b10110) :  indexB = 22;
   (5'b10111) :  indexB = 23; 
   (5'b11000) :  indexB = 24;
   (5'b11001) :  indexB = 25;
   (5'b11010) :  indexB = 26;  
   (5'b11011) :  indexB = 27;  
   (5'b11100) :  indexB = 28;  
   (5'b11101) :  indexB = 29;  
   (5'b11110) :  indexB = 30;  
   (5'b11111) :  indexB = 31;
   endcase
case(sel) 
   (5'b00001) : enable[1] = 1;     
   (5'b00010) : enable[2] = 1;
   (5'b00011) : enable[3] = 1; 
   (5'b00100) : enable[4] = 1;     
   (5'b00101) : enable[5] = 1;
   (5'b00110) : enable[6] = 1;
   (5'b00111) : enable[7] = 1;
   (5'b01000) : enable[8] = 1;
   (5'b01001) : enable[9] = 1;
   (5'b01010) : enable[10] = 1;
   (5'b01011) : enable[11] = 1;
   (5'b01100) : enable[12] = 1;
   (5'b01101) : enable[13] = 1;
   (5'b01110) : enable[14] = 1; 
   (5'b01111) : enable[15] = 1; 
   (5'b10000) : enable[16] = 1;
   (5'b10001) : enable[17] = 1;
   (5'b10010) : enable[18] = 1;
   (5'b10011) : enable[19] = 1; 
   (5'b10100) : enable[20] = 1;
   (5'b10101) : enable[21] = 1;
   (5'b10110) : enable[22] = 1;
   (5'b10111) : enable[23] = 1; 
   (5'b11000) : enable[24] = 1;
   (5'b11001) : enable[25] = 1;
   (5'b11010) : enable[26] = 1;  
   (5'b11011) : enable[27] = 1;  
   (5'b11100) : enable[28] = 1;  
   (5'b11101) : enable[29] = 1;  
   (5'b11110) : enable[30] = 1;  
   (5'b11111) : enable[31] = 1;
   endcase
end

reg_32 zero(.in(data),.Q (Q[0]), .writereg (enable[0]),.readreg(0)); 
reg_32 at(.in(data),.Q (Q[1]), .writereg (enable[1]),.readreg(0));     
reg_32 v0(.in(data),.Q (Q[2]), .writereg (enable[2]),.readreg(0));
reg_32 v1(.in(data),.Q (Q[3]), .writereg (enable[3]),.readreg(0)); 
reg_32 a0(.in(data),.Q (Q[4]), .writereg (enable[4]),.readreg(0));     
reg_32 a1(.in(data),.Q (Q[5]), .writereg (enable[5]),.readreg(0));
reg_32 a2(.in(data),.Q (Q[6]), .writereg (enable[6]),.readreg(0));
reg_32 a3(.in(data),.Q (Q[7]), .writereg (enable[7]),.readreg(0));
reg_32 t0(.in(data),.Q (Q[8]), .writereg (enable[8]),.readreg(0));
reg_32 t1(.in(data),.Q (Q[9]), .writereg (enable[9]),.readreg(0));
reg_32 t2(.in(data),.Q (Q[10]), .writereg (enable[10]),.readreg(0));
reg_32 t3(.in(data),.Q (Q[11]), .writereg (enable[11]),.readreg(0));
reg_32 t4(.in(data),.Q (Q[12]), .writereg (enable[12]),.readreg(0));
reg_32 t5(.in(data),.Q (Q[13]), .writereg (enable[13]),.readreg(0));
reg_32 t6(.in(data),.Q (Q[14]), .writereg (enable[14]),.readreg(0)); 
reg_32 t7(.in(data),.Q (Q[15]), .writereg (enable[15]),.readreg(0)); 
reg_32 s0(.in(data),.Q (Q[16]), .writereg (enable[16]),.readreg(0));
reg_32 s1(.in(data),.Q (Q[17]), .writereg (enable[17]),.readreg(0));
reg_32 s2(.in(data),.Q (Q[18]), .writereg (enable[18]),.readreg(0));
reg_32 s3(.in(data),.Q (Q[19]), .writereg (enable[19]),.readreg(0)); 
reg_32 s4(.in(data),.Q (Q[20]), .writereg (enable[20]),.readreg(0));
reg_32 s5(.in(data),.Q (Q[21]), .writereg (enable[21]),.readreg(0));
reg_32 s6(.in(data),.Q (Q[22]), .writereg (enable[22]),.readreg(0));
reg_32 s7(.in(data),.Q (Q[23]), .writereg (enable[23]),.readreg(0)); 
reg_32 t8(.in(data),.Q (Q[24]), .writereg (enable[24]),.readreg(0));
reg_32 t9(.in(data),.Q (Q[25]), .writereg (enable[25]),.readreg(0));
reg_32 k0(.in(data),.Q (Q[26]), .writereg (enable[26]),.readreg(0));  
reg_32 k1(.in(data),.Q (Q[27]), .writereg (enable[27]),.readreg(0));  
reg_32 gp(.in(data),.Q (Q[28]), .writereg (enable[28]),.readreg(0));  
reg_32 sp(.in(data),.Q (Q[29]), .writereg (enable[29]),.readreg(0));  
reg_32 fp(.in(data),.Q (Q[30]), .writereg (enable[30]),.readreg(0));  
reg_32 ra(.in(data),.Q (Q[31]), .writereg (enable[31]),.readreg(0));

//always @(*) begin
assign ReadData1[0:31] = Q[0];
//end

endmodule

