-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config2_Approx_100_10_4bit_A_cir0 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config2_Approx_100_10_4bit_A_cir0;


ARCHITECTURE rtl OF tanh_Config2_Approx_100_10_4bit_A_cir0 IS

-- Signals
SIGNAL XOR1_out1                        : std_logic;
SIGNAL NXOR2_out1                       : std_logic;
SIGNAL NAND4_out1                       : std_logic;
SIGNAL OR0_out1                         : std_logic;
SIGNAL AND3_out1                        : std_logic;

BEGIN
XOR1_out1 <= Inp(0) XOR Inp(1);

NXOR2_out1 <=  NOT (XOR1_out1 XOR Inp(1));

NAND4_out1 <=  NOT (NXOR2_out1 AND NXOR2_out1);

OR0_out1 <= Inp(2) OR Inp(1);

AND3_out1 <= OR0_out1 AND NXOR2_out1;

Out1(0) <= NAND4_out1;

Out1(1) <= NAND4_out1;

Out1(2) <= AND3_out1;

Out1(3) <= AND3_out1;

END rtl;
