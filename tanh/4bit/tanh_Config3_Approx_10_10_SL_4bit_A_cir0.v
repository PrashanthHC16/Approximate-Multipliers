// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_10_10_SL_4bit_A_cir0
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire AND1_out1;
wire NAND0_out1;
wire NAND3_out1;
wire AND4_out1;
assign AND1_out1 = In[0] & In[0];
assign Out1[0] = AND1_out1;
assign Out1[1] = AND1_out1;
assign NAND0_out1 =  ~ (In[2] & In[3]);
assign NAND3_out1 =  ~ (NAND0_out1 & AND1_out1);
assign AND4_out1 = In[1] & NAND3_out1;
assign Out1[2] = AND4_out1;
assign Out1[3] = AND4_out1;
endmodule  // tanh_Config3_Approx_10_10_SL_4bit_A_cir0