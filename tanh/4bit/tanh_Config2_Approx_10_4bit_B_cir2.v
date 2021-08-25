// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config2_Approx_10_4bit_B_cir2
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire XOR0_out1;
wire XOR4_out1;
wire NOR2_out1;
wire NAND1_out1;
wire AND3_out1;
wire NOR5_out1;
assign XOR0_out1 = In[0] ^ In[2];
assign XOR4_out1 = In[2] ^ XOR0_out1;
assign Out1[0] = XOR4_out1;
assign Out1[1] = XOR4_out1;
assign NOR2_out1 =  ~ (XOR0_out1 | In[1]);
assign NAND1_out1 =  ~ (In[2] & In[3]);
assign AND3_out1 = In[0] & NAND1_out1;
assign NOR5_out1 =  ~ (NOR2_out1 | AND3_out1);
assign Out1[2] = NOR5_out1;
assign Out1[3] = NOR5_out1;
endmodule  // tanh_Config2_Approx_10_4bit_B_cir2