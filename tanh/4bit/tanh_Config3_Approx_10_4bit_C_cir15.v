// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_10_4bit_C_cir15
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire NXOR0_out1;
wire NXOR2_out1;
wire AND3_out1;
wire OR6_out1;
wire NOR1_out1;
wire OR5_out1;
wire AND7_out1;
wire NXOR4_out1;
assign NXOR0_out1 =  ~ (In[0] ^ In[1]);
assign NXOR2_out1 =  ~ (In[1] ^ NXOR0_out1);
assign Out1[0] = NXOR2_out1;
assign Out1[1] = NXOR2_out1;
assign AND3_out1 = In[3] & NXOR0_out1;
assign OR6_out1 = In[1] | AND3_out1;
assign NOR1_out1 =  ~ (In[2] | NXOR0_out1);
assign OR5_out1 = In[2] | NOR1_out1;
assign AND7_out1 = OR6_out1 & OR5_out1;
assign Out1[2] = AND7_out1;
assign NXOR4_out1 =  ~ (In[0] ^ AND3_out1);
assign Out1[3] = NXOR4_out1;
endmodule  // tanh_Config3_Approx_10_4bit_C_cir15