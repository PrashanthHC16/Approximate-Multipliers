// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_10_10_SL_4bit_A_cir1
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire AND2_out1;
wire NOR0_out1;
wire OR1_out1;
wire AND3_out1;
assign AND2_out1 = In[0] & In[0];
assign Out1[0] = AND2_out1;
assign Out1[1] = AND2_out1;
assign NOR0_out1 =  ~ (In[0] | In[3]);
assign OR1_out1 = In[3] | NOR0_out1;
assign AND3_out1 = OR1_out1 & In[1];
assign Out1[2] = AND3_out1;
assign Out1[3] = AND3_out1;
endmodule  // tanh_Config3_Approx_10_10_SL_4bit_A_cir1