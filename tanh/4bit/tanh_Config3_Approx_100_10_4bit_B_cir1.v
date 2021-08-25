// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_100_10_4bit_B_cir1
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire NOR0_out1;
wire OR2_out1;
wire NAND5_out1;
wire AND3_out1;
wire AND1_out1;
wire OR4_out1;
assign NOR0_out1 =  ~ (In[0] | In[0]);
assign OR2_out1 = In[2] | NOR0_out1;
assign NAND5_out1 =  ~ (NOR0_out1 & OR2_out1);
assign Out1[0] = NAND5_out1;
assign Out1[1] = NAND5_out1;
assign AND3_out1 = In[1] & OR2_out1;
assign Out1[2] = AND3_out1;
assign AND1_out1 = In[1] & In[3];
assign OR4_out1 = AND1_out1 | AND3_out1;
assign Out1[3] = OR4_out1;
endmodule  // tanh_Config3_Approx_100_10_4bit_B_cir1