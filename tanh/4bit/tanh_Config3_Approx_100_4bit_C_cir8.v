// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_100_4bit_C_cir8
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire NXOR0_out1;
wire NXOR6_out1;
wire NOR1_out1;
wire OR3_out1;
wire NAND4_out1;
wire XOR5_out1;
wire AND7_out1;
wire AND2_out1;
wire XOR8_out1;
assign NXOR0_out1 =  ~ (In[0] ^ In[1]);
assign NXOR6_out1 =  ~ (NXOR0_out1 ^ In[1]);
assign Out1[0] = NXOR6_out1;
assign Out1[1] = NXOR6_out1;
assign NOR1_out1 =  ~ (In[2] | In[1]);
assign OR3_out1 = In[3] | NOR1_out1;
assign NAND4_out1 =  ~ (OR3_out1 & NXOR0_out1);
assign XOR5_out1 = NAND4_out1 ^ In[0];
assign AND7_out1 = XOR5_out1 & NAND4_out1;
assign AND2_out1 = In[2] & NXOR0_out1;
assign XOR8_out1 = AND7_out1 ^ AND2_out1;
assign Out1[2] = XOR8_out1;
assign Out1[3] = XOR5_out1;
endmodule  // tanh_Config3_Approx_100_4bit_C_cir8