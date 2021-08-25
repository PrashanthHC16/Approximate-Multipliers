// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_100_10_4bit_C_cir0
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire XOR0_out1;
wire XOR2_out1;
wire NOR1_out1;
wire NOR4_out1;
wire NOR5_out1;
wire NOR6_out1;
wire NOR3_out1;
wire NOR8_out1;
wire NXOR7_out1;
assign XOR0_out1 = In[1] ^ In[0];
assign XOR2_out1 = In[1] ^ XOR0_out1;
assign Out1[0] = XOR2_out1;
assign Out1[1] = XOR2_out1;
assign NOR1_out1 =  ~ (In[2] | In[0]);
assign NOR4_out1 =  ~ (In[3] | NOR1_out1);
assign NOR5_out1 =  ~ (XOR0_out1 | NOR4_out1);
assign NOR6_out1 =  ~ (NOR5_out1 | In[1]);
assign NOR3_out1 =  ~ (In[2] | XOR0_out1);
assign NOR8_out1 =  ~ (NOR6_out1 | NOR3_out1);
assign Out1[2] = NOR8_out1;
assign NXOR7_out1 =  ~ (In[0] ^ NOR5_out1);
assign Out1[3] = NXOR7_out1;
endmodule  // tanh_Config3_Approx_100_10_4bit_C_cir0