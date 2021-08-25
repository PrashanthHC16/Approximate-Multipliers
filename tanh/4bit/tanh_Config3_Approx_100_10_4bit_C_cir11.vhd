-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_10_4bit_C_cir11 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_10_4bit_C_cir11;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_10_4bit_C_cir11 IS

-- Signals
SIGNAL OR0_out1                         : std_logic;
SIGNAL XOR3_out1                        : std_logic;
SIGNAL NOR1_out1                        : std_logic;
SIGNAL NOR2_out1                        : std_logic;
SIGNAL NXOR4_out1                       : std_logic;
SIGNAL NAND5_out1                       : std_logic;
SIGNAL NXOR6_out1                       : std_logic;
SIGNAL OR7_out1                         : std_logic;
SIGNAL XOR8_out1                        : std_logic;

BEGIN
OR0_out1 <= Inp(0) OR Inp(0);

XOR3_out1 <= Inp(2) XOR Inp(1);

NOR1_out1 <=  NOT (OR0_out1 OR Inp(3));

NOR2_out1 <=  NOT (NOR1_out1 OR Inp(1));

NXOR4_out1 <=  NOT (Inp(0) XOR NOR2_out1);

NAND5_out1 <=  NOT (XOR3_out1 AND NXOR4_out1);

NXOR6_out1 <=  NOT (Inp(2) XOR NAND5_out1);

OR7_out1 <= Inp(3) OR NXOR4_out1;

XOR8_out1 <= NOR2_out1 XOR OR7_out1;

Out1(0) <= OR0_out1;

Out1(1) <= OR0_out1;

Out1(2) <= NXOR6_out1;

Out1(3) <= XOR8_out1;

END rtl;
