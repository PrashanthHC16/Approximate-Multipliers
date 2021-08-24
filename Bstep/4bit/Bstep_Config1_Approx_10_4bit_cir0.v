// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module Bstep_Config1_Approx_10_4bit_cir0
(In,Out1);
input [3:0]In;
output [0:0]Out1;
wire NAND3_out1;
assign NAND3_out1 =  ~ (In[0] & In[0]);
assign Out1[0] = NAND3_out1;
endmodule  // Bstep_Config1_Approx_10_4bit_cir0