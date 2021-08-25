// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config4_Approx_100_10_4bit_C_cir0
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire AND0_out1;
wire NOR1_out1;
wire NOR2_out1;
wire AND3_out1;
wire AND6_out1;
wire OR9_out1;
wire NOR4_out1;
wire NOR5_out1;
assign AND0_out1 = In[0] & In[0];
assign Out1[0] = AND0_out1;
assign Out1[1] = AND0_out1;
assign NOR1_out1 =  ~ (In[1] | In[2]);
assign NOR2_out1 =  ~ (NOR1_out1 | AND0_out1);
assign AND3_out1 = In[1] & In[2];
assign AND6_out1 = AND3_out1 & In[3];
assign OR9_out1 = NOR2_out1 | AND6_out1;
assign Out1[2] = OR9_out1;
assign NOR4_out1 =  ~ (In[3] | NOR2_out1);
assign NOR5_out1 =  ~ (In[0] | NOR4_out1);
assign Out1[3] = NOR5_out1;
endmodule  // tanh_Config4_Approx_100_10_4bit_C_cir0