// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_100_4bit_C_cir6
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire OR2_out1;
wire NXOR0_out1;
wire NOR3_out1;
wire AND1_out1;
wire XOR7_out1;
wire OR5_out1;
wire NXOR6_out1;
wire OR4_out1;
wire AND8_out1;
assign OR2_out1 = In[0] | In[0];
assign Out1[0] = OR2_out1;
assign Out1[1] = OR2_out1;
assign NXOR0_out1 =  ~ (In[1] ^ In[0]);
assign NOR3_out1 =  ~ (NXOR0_out1 | OR2_out1);
assign AND1_out1 = NXOR0_out1 & In[2];
assign XOR7_out1 = NOR3_out1 ^ AND1_out1;
assign Out1[2] = XOR7_out1;
assign OR5_out1 = In[3] | NOR3_out1;
assign NXOR6_out1 =  ~ (In[1] ^ OR5_out1);
assign OR4_out1 = In[1] | AND1_out1;
assign AND8_out1 = NXOR6_out1 & OR4_out1;
assign Out1[3] = AND8_out1;
endmodule  // tanh_Config3_Approx_100_4bit_C_cir6