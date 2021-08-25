// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_10_10_SL_4bit_A_cir3
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire AND1_out1;
wire OR2_out1;
wire XOR3_out1;
wire AND0_out1;
wire OR4_out1;
assign AND1_out1 = In[0] & In[1];
assign OR2_out1 = In[0] | AND1_out1;
assign Out1[0] = OR2_out1;
assign Out1[1] = OR2_out1;
assign XOR3_out1 = AND1_out1 ^ In[1];
assign Out1[2] = XOR3_out1;
assign AND0_out1 = In[1] & In[3];
assign OR4_out1 = AND0_out1 | XOR3_out1;
assign Out1[3] = OR4_out1;
endmodule  // tanh_Config3_Approx_10_10_SL_4bit_A_cir3