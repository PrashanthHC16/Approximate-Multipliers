// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_100_10_4bit_C_cir10
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire XOR1_out1;
wire XOR8_out1;
wire OR4_out1;
wire NOR0_out1;
wire NOR2_out1;
wire NOR3_out1;
wire OR5_out1;
wire AND6_out1;
wire NXOR7_out1;
assign XOR1_out1 = In[0] ^ In[1];
assign XOR8_out1 = In[1] ^ XOR1_out1;
assign Out1[0] = XOR8_out1;
assign Out1[1] = XOR8_out1;
assign OR4_out1 = In[2] | XOR1_out1;
assign NOR0_out1 =  ~ (In[2] | In[1]);
assign NOR2_out1 =  ~ (In[3] | NOR0_out1);
assign NOR3_out1 =  ~ (NOR2_out1 | XOR1_out1);
assign OR5_out1 = In[1] | NOR3_out1;
assign AND6_out1 = OR4_out1 & OR5_out1;
assign Out1[2] = AND6_out1;
assign NXOR7_out1 =  ~ (NOR3_out1 ^ In[0]);
assign Out1[3] = NXOR7_out1;
endmodule  // tanh_Config3_Approx_100_10_4bit_C_cir10