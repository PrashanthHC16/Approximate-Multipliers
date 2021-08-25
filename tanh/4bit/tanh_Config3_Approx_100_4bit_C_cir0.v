// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_100_4bit_C_cir0
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire AND2_out1;
wire XOR0_out1;
wire AND1_out1;
wire XOR3_out1;
wire AND4_out1;
wire NOR5_out1;
wire NOR8_out1;
wire NAND6_out1;
wire AND7_out1;
assign AND2_out1 = In[0] & In[0];
assign Out1[0] = AND2_out1;
assign Out1[1] = AND2_out1;
assign XOR0_out1 = In[1] ^ In[2];
assign AND1_out1 = XOR0_out1 & In[0];
assign XOR3_out1 = In[0] ^ In[3];
assign AND4_out1 = In[2] & XOR3_out1;
assign NOR5_out1 =  ~ (In[1] | AND4_out1);
assign NOR8_out1 =  ~ (AND1_out1 | NOR5_out1);
assign Out1[2] = NOR8_out1;
assign NAND6_out1 =  ~ (In[0] & XOR3_out1);
assign AND7_out1 = NAND6_out1 & In[1];
assign Out1[3] = AND7_out1;
endmodule  // tanh_Config3_Approx_100_4bit_C_cir0