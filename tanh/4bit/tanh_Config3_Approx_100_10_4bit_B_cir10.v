// Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
// File part of SOMALib Activation functions library
// All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
// The file is distributed under MIT License.
`timescale 1 ns / 1 ns
module tanh_Config3_Approx_100_10_4bit_B_cir10
(In,Out1);
input [3:0]In;
output [3:0]Out1;
wire OR1_out1;
wire NAND0_out1;
wire OR2_out1;
wire NXOR5_out1;
wire OR3_out1;
wire NXOR4_out1;
assign OR1_out1 = In[0] | In[0];
assign Out1[0] = OR1_out1;
assign Out1[1] = OR1_out1;
assign NAND0_out1 =  ~ (In[1] & In[0]);
assign OR2_out1 = In[2] | NAND0_out1;
assign NXOR5_out1 =  ~ (OR2_out1 ^ In[1]);
assign Out1[2] = NXOR5_out1;
assign OR3_out1 = In[3] | NAND0_out1;
assign NXOR4_out1 =  ~ (In[1] ^ OR3_out1);
assign Out1[3] = NXOR4_out1;
endmodule  // tanh_Config3_Approx_100_10_4bit_B_cir10