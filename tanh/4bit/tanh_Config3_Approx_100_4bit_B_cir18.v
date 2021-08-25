// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_100_4bit_B_cir18
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire OR2_out1;
wire AND0_out1;
wire NOR1_out1;
wire NOR3_out1;
wire AND4_out1;
wire OR5_out1;
assign OR2_out1 = In[0] | In[0];
assign Out1[0] = OR2_out1;
assign Out1[1] = OR2_out1;
assign AND0_out1 = In[3] & In[2];
assign NOR1_out1 =  ~ (AND0_out1 | In[1]);
assign NOR3_out1 =  ~ (In[0] | NOR1_out1);
assign AND4_out1 = In[1] & In[2];
assign OR5_out1 = NOR3_out1 | AND4_out1;
assign Out1[2] = OR5_out1;
assign Out1[3] = NOR3_out1;
endmodule  // tanh_Config3_Approx_100_4bit_B_cir18