// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_100_10_4bit_A_cir0
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire OR0_out1;
wire XOR1_out1;
wire NAND2_out1;
wire AND3_out1;
assign OR0_out1 = In[0] | In[0];
assign Out1[0] = OR0_out1;
assign Out1[1] = OR0_out1;
assign XOR1_out1 = In[2] ^ In[0];
assign NAND2_out1 =  ~ (XOR1_out1 & In[0]);
assign AND3_out1 = NAND2_out1 & In[1];
assign Out1[2] = AND3_out1;
assign Out1[3] = AND3_out1;
endmodule  // tanh_Config3_Approx_100_10_4bit_A_cir0