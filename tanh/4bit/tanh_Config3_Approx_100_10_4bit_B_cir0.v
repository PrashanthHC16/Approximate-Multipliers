// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_100_10_4bit_B_cir0
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire NAND0_out1;
wire AND1_out1;
wire OR3_out1;
wire AND2_out1;
wire NOR4_out1;
wire NOR5_out1;
assign NAND0_out1 =  ~ (In[2] & In[1]);
assign AND1_out1 = In[0] & NAND0_out1;
assign OR3_out1 = In[0] | AND1_out1;
assign Out1[0] = OR3_out1;
assign Out1[1] = OR3_out1;
assign AND2_out1 = In[3] & In[2];
assign NOR4_out1 =  ~ (AND2_out1 | In[1]);
assign NOR5_out1 =  ~ (NOR4_out1 | AND1_out1);
assign Out1[2] = NOR5_out1;
assign Out1[3] = NOR5_out1;
endmodule  // tanh_Config3_Approx_100_10_4bit_B_cir0