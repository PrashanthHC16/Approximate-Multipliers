// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config2_Approx_100_10_4bit_C_cir1
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire AND6_out1;
wire NOR0_out1;
wire OR1_out1;
wire AND3_out1;
wire NAND4_out1;
wire NAND5_out1;
wire NAND2_out1;
assign AND6_out1 = In[0] & In[0];
assign Out1[0] = AND6_out1;
assign Out1[1] = AND6_out1;
assign NOR0_out1 =  ~ (In[1] | In[2]);
assign OR1_out1 = In[0] | NOR0_out1;
assign AND3_out1 = In[2] & In[1];
assign NAND4_out1 =  ~ (AND3_out1 & In[3]);
assign NAND5_out1 =  ~ (OR1_out1 & NAND4_out1);
assign Out1[2] = NAND5_out1;
assign NAND2_out1 =  ~ (In[0] & OR1_out1);
assign Out1[3] = NAND2_out1;
endmodule  // tanh_Config2_Approx_100_10_4bit_C_cir1