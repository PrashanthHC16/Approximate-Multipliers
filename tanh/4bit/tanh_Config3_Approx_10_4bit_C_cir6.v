// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_10_4bit_C_cir6
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire AND4_out1;
wire NXOR1_out1;
wire NXOR0_out1;
wire OR3_out1;
wire OR5_out1;
wire NXOR6_out1;
wire NOR7_out1;
wire XOR8_out1;
assign AND4_out1 = In[0] & In[0];
assign Out1[0] = AND4_out1;
assign Out1[1] = AND4_out1;
assign NXOR1_out1 =  ~ (In[1] ^ In[2]);
assign NXOR0_out1 =  ~ (In[0] ^ In[2]);
assign OR3_out1 = NXOR1_out1 | NXOR0_out1;
assign OR5_out1 = In[3] | OR3_out1;
assign NXOR6_out1 =  ~ (OR5_out1 ^ In[1]);
assign NOR7_out1 =  ~ (NXOR6_out1 | In[1]);
assign XOR8_out1 = NOR7_out1 ^ OR3_out1;
assign Out1[2] = XOR8_out1;
assign Out1[3] = NXOR6_out1;
endmodule  // tanh_Config3_Approx_10_4bit_C_cir6