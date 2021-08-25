-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_4bit_C_cir4 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_4bit_C_cir4;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_4bit_C_cir4 IS

-- Signals
SIGNAL XOR0_out1                        : std_logic;
SIGNAL XOR8_out1                        : std_logic;
SIGNAL NOR2_out1                        : std_logic;
SIGNAL NOR3_out1                        : std_logic;
SIGNAL NOR4_out1                        : std_logic;
SIGNAL OR5_out1                         : std_logic;
SIGNAL OR1_out1                         : std_logic;
SIGNAL AND7_out1                        : std_logic;
SIGNAL NXOR6_out1                       : std_logic;

BEGIN
XOR0_out1 <= Inp(0) XOR Inp(1);

XOR8_out1 <= Inp(1) XOR XOR0_out1;

NOR2_out1 <=  NOT (Inp(0) OR Inp(2));

NOR3_out1 <=  NOT (Inp(3) OR NOR2_out1);

NOR4_out1 <=  NOT (NOR3_out1 OR XOR0_out1);

OR5_out1 <= NOR4_out1 OR Inp(1);

OR1_out1 <= XOR0_out1 OR Inp(2);

AND7_out1 <= OR5_out1 AND OR1_out1;

NXOR6_out1 <=  NOT (Inp(0) XOR NOR4_out1);

Out1(0) <= XOR8_out1;

Out1(1) <= XOR8_out1;

Out1(2) <= AND7_out1;

Out1(3) <= NXOR6_out1;

END rtl;
