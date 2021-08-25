-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_10_4bit_C_cir0 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_10_4bit_C_cir0;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_10_4bit_C_cir0 IS

-- Signals
SIGNAL XOR0_out1                        : std_logic;
SIGNAL XOR2_out1                        : std_logic;
SIGNAL NOR1_out1                        : std_logic;
SIGNAL NOR4_out1                        : std_logic;
SIGNAL NOR5_out1                        : std_logic;
SIGNAL NOR6_out1                        : std_logic;
SIGNAL NOR3_out1                        : std_logic;
SIGNAL NOR8_out1                        : std_logic;
SIGNAL NXOR7_out1                       : std_logic;

BEGIN
XOR0_out1 <= Inp(1) XOR Inp(0);

XOR2_out1 <= Inp(1) XOR XOR0_out1;

NOR1_out1 <=  NOT (Inp(2) OR Inp(0));

NOR4_out1 <=  NOT (Inp(3) OR NOR1_out1);

NOR5_out1 <=  NOT (XOR0_out1 OR NOR4_out1);

NOR6_out1 <=  NOT (NOR5_out1 OR Inp(1));

NOR3_out1 <=  NOT (Inp(2) OR XOR0_out1);

NOR8_out1 <=  NOT (NOR6_out1 OR NOR3_out1);

NXOR7_out1 <=  NOT (Inp(0) XOR NOR5_out1);

Out1(0) <= XOR2_out1;

Out1(1) <= XOR2_out1;

Out1(2) <= NOR8_out1;

Out1(3) <= NXOR7_out1;

END rtl;
