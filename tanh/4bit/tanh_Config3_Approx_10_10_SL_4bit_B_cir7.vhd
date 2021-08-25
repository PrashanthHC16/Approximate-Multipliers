-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_10_10_SL_4bit_B_cir7 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_10_10_SL_4bit_B_cir7;


ARCHITECTURE rtl OF tanh_Config3_Approx_10_10_SL_4bit_B_cir7 IS

-- Signals
SIGNAL NAND0_out1                       : std_logic;
SIGNAL XOR2_out1                        : std_logic;
SIGNAL NAND5_out1                       : std_logic;
SIGNAL OR1_out1                         : std_logic;
SIGNAL AND4_out1                        : std_logic;
SIGNAL AND3_out1                        : std_logic;

BEGIN
NAND0_out1 <=  NOT (Inp(3) AND Inp(0));

XOR2_out1 <= Inp(0) XOR NAND0_out1;

NAND5_out1 <=  NOT (XOR2_out1 AND NAND0_out1);

OR1_out1 <= NAND0_out1 OR Inp(2);

AND4_out1 <= OR1_out1 AND Inp(1);

AND3_out1 <= XOR2_out1 AND Inp(1);

Out1(0) <= NAND5_out1;

Out1(1) <= NAND5_out1;

Out1(2) <= AND4_out1;

Out1(3) <= AND3_out1;

END rtl;
