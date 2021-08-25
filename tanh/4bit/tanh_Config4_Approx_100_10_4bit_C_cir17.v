// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config4_Approx_100_10_4bit_C_cir17
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire OR1_out1;
wire AND2_out1;
wire AND6_out1;
wire OR0_out1;
wire NOR4_out1;
wire NOR5_out1;
wire OR7_out1;
wire AND8_out1;
assign OR1_out1 = In[0] | In[0];
assign Out1[0] = OR1_out1;
assign Out1[1] = OR1_out1;
assign AND2_out1 = In[2] & In[3];
assign AND6_out1 = AND2_out1 & In[1];
assign OR0_out1 = In[1] | In[2];
assign NOR4_out1 =  ~ (OR0_out1 | In[3]);
assign NOR5_out1 =  ~ (OR1_out1 | NOR4_out1);
assign OR7_out1 = AND6_out1 | NOR5_out1;
assign AND8_out1 = OR7_out1 & OR0_out1;
assign Out1[2] = AND8_out1;
assign Out1[3] = NOR5_out1;
endmodule  // tanh_Config4_Approx_100_10_4bit_C_cir17