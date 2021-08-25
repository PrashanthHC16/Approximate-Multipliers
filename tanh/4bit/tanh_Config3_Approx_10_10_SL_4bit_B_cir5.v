// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_10_10_SL_4bit_B_cir5
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire OR3_out1;
wire NOR0_out1;
wire OR1_out1;
wire AND4_out1;
wire AND2_out1;
wire OR5_out1;
assign OR3_out1 = In[0] | In[0];
assign Out1[0] = OR3_out1;
assign Out1[1] = OR3_out1;
assign NOR0_out1 =  ~ (In[0] | In[3]);
assign OR1_out1 = In[2] | NOR0_out1;
assign AND4_out1 = In[1] & OR1_out1;
assign Out1[2] = AND4_out1;
assign AND2_out1 = In[1] & In[3];
assign OR5_out1 = NOR0_out1 | AND2_out1;
assign Out1[3] = OR5_out1;
endmodule  // tanh_Config3_Approx_10_10_SL_4bit_B_cir5