// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_100_10_4bit_A_cir10
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire OR3_out1;
wire NAND1_out1;
wire NOR2_out1;
wire OR4_out1;
wire AND0_out1;
assign OR3_out1 = In[0] | In[0];
assign Out1[0] = OR3_out1;
assign Out1[1] = OR3_out1;
assign NAND1_out1 =  ~ (In[2] & In[3]);
assign NOR2_out1 =  ~ (In[0] | NAND1_out1);
assign OR4_out1 = NOR2_out1 | In[1];
assign Out1[2] = OR4_out1;
assign AND0_out1 = In[1] & In[3];
assign Out1[3] = AND0_out1;
endmodule  // tanh_Config3_Approx_100_10_4bit_A_cir10