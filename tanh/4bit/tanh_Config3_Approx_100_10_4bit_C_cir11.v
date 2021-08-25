// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_100_10_4bit_C_cir11
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire OR0_out1;
wire XOR3_out1;
wire NOR1_out1;
wire NOR2_out1;
wire NXOR4_out1;
wire NAND5_out1;
wire NXOR6_out1;
wire OR7_out1;
wire XOR8_out1;
assign OR0_out1 = In[0] | In[0];
assign Out1[0] = OR0_out1;
assign Out1[1] = OR0_out1;
assign XOR3_out1 = In[2] ^ In[1];
assign NOR1_out1 =  ~ (OR0_out1 | In[3]);
assign NOR2_out1 =  ~ (NOR1_out1 | In[1]);
assign NXOR4_out1 =  ~ (In[0] ^ NOR2_out1);
assign NAND5_out1 =  ~ (XOR3_out1 & NXOR4_out1);
assign NXOR6_out1 =  ~ (In[2] ^ NAND5_out1);
assign Out1[2] = NXOR6_out1;
assign OR7_out1 = In[3] | NXOR4_out1;
assign XOR8_out1 = NOR2_out1 ^ OR7_out1;
assign Out1[3] = XOR8_out1;
endmodule  // tanh_Config3_Approx_100_10_4bit_C_cir11