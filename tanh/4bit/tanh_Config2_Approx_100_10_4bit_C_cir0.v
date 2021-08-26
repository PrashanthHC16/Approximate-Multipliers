// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config2_Approx_100_10_4bit_C_cir0
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire OR5_out1;
wire OR1_out1;
wire NAND0_out1;
wire AND3_out1;
wire AND2_out1;
wire AND4_out1;
wire OR6_out1;
assign OR5_out1 = In[0] | In[0];
assign Out1[0] = OR5_out1;
assign Out1[1] = OR5_out1;
assign OR1_out1 = In[1] | In[2];
assign NAND0_out1 =  ~ (In[0] & In[0]);
assign AND3_out1 = OR1_out1 & NAND0_out1;
assign AND2_out1 = In[1] & In[2];
assign AND4_out1 = In[3] & AND2_out1;
assign OR6_out1 = AND3_out1 | AND4_out1;
assign Out1[2] = OR6_out1;
assign Out1[3] = AND3_out1;
endmodule  // tanh_Config2_Approx_100_10_4bit_C_cir0