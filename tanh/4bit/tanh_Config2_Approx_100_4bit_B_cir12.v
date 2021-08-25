// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config2_Approx_100_4bit_B_cir12
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire OR1_out1;
wire NOR2_out1;
wire OR0_out1;
wire AND3_out1;
wire OR4_out1;
wire AND5_out1;
assign OR1_out1 = In[0] | In[0];
assign Out1[0] = OR1_out1;
assign Out1[1] = OR1_out1;
assign NOR2_out1 =  ~ (In[0] | OR1_out1);
assign OR0_out1 = In[1] | In[2];
assign AND3_out1 = NOR2_out1 & OR0_out1;
assign Out1[2] = AND3_out1;
assign OR4_out1 = In[3] | AND3_out1;
assign AND5_out1 = NOR2_out1 & OR4_out1;
assign Out1[3] = AND5_out1;
endmodule  // tanh_Config2_Approx_100_4bit_B_cir12