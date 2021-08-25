// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_10_10_SL_4bit_C_cir10
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire NOR0_out1;
wire OR1_out1;
wire AND4_out1;
wire XOR3_out1;
wire NOR5_out1;
wire NOR7_out1;
wire AND2_out1;
wire OR8_out1;
wire XOR6_out1;
assign NOR0_out1 =  ~ (In[1] | In[2]);
assign OR1_out1 = NOR0_out1 | In[0];
assign AND4_out1 = OR1_out1 & In[0];
assign Out1[0] = AND4_out1;
assign Out1[1] = AND4_out1;
assign XOR3_out1 = OR1_out1 ^ In[1];
assign NOR5_out1 =  ~ (In[3] | XOR3_out1);
assign NOR7_out1 =  ~ (OR1_out1 | NOR5_out1);
assign AND2_out1 = In[2] & In[1];
assign OR8_out1 = NOR7_out1 | AND2_out1;
assign Out1[2] = OR8_out1;
assign XOR6_out1 = NOR5_out1 ^ In[1];
assign Out1[3] = XOR6_out1;
endmodule  // tanh_Config3_Approx_10_10_SL_4bit_C_cir10