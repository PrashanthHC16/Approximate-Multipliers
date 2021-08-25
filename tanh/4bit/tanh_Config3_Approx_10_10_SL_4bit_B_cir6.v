// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_10_10_SL_4bit_B_cir6
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire NXOR0_out1;
wire NXOR3_out1;
wire AND1_out1;
wire AND2_out1;
wire OR4_out1;
wire NXOR5_out1;
assign NXOR0_out1 =  ~ (In[1] ^ In[0]);
assign NXOR3_out1 =  ~ (In[1] ^ NXOR0_out1);
assign Out1[0] = NXOR3_out1;
assign Out1[1] = NXOR3_out1;
assign AND1_out1 = NXOR0_out1 & In[3];
assign AND2_out1 = In[2] & AND1_out1;
assign OR4_out1 = In[1] | AND2_out1;
assign Out1[2] = OR4_out1;
assign NXOR5_out1 =  ~ (NXOR3_out1 ^ AND1_out1);
assign Out1[3] = NXOR5_out1;
endmodule  // tanh_Config3_Approx_10_10_SL_4bit_B_cir6