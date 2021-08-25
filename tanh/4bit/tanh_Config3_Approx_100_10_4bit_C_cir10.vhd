-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_10_4bit_C_cir10 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_10_4bit_C_cir10;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_10_4bit_C_cir10 IS

-- Signals
SIGNAL XOR1_out1                        : std_logic;
SIGNAL XOR8_out1                        : std_logic;
SIGNAL OR4_out1                         : std_logic;
SIGNAL NOR0_out1                        : std_logic;
SIGNAL NOR2_out1                        : std_logic;
SIGNAL NOR3_out1                        : std_logic;
SIGNAL OR5_out1                         : std_logic;
SIGNAL AND6_out1                        : std_logic;
SIGNAL NXOR7_out1                       : std_logic;

BEGIN
XOR1_out1 <= Inp(0) XOR Inp(1);

XOR8_out1 <= Inp(1) XOR XOR1_out1;

OR4_out1 <= Inp(2) OR XOR1_out1;

NOR0_out1 <=  NOT (Inp(2) OR Inp(1));

NOR2_out1 <=  NOT (Inp(3) OR NOR0_out1);

NOR3_out1 <=  NOT (NOR2_out1 OR XOR1_out1);

OR5_out1 <= Inp(1) OR NOR3_out1;

AND6_out1 <= OR4_out1 AND OR5_out1;

NXOR7_out1 <=  NOT (NOR3_out1 XOR Inp(0));

Out1(0) <= XOR8_out1;

Out1(1) <= XOR8_out1;

Out1(2) <= AND6_out1;

Out1(3) <= NXOR7_out1;

END rtl;
