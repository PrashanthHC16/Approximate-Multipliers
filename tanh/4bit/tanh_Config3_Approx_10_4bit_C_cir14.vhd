-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_10_4bit_C_cir14 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_10_4bit_C_cir14;


ARCHITECTURE rtl OF tanh_Config3_Approx_10_4bit_C_cir14 IS

-- Signals
SIGNAL AND0_out1                        : std_logic;
SIGNAL XOR1_out1                        : std_logic;
SIGNAL XOR2_out1                        : std_logic;
SIGNAL NAND3_out1                       : std_logic;
SIGNAL NOR4_out1                        : std_logic;
SIGNAL OR6_out1                         : std_logic;
SIGNAL NXOR8_out1                       : std_logic;
SIGNAL XOR7_out1                        : std_logic;

BEGIN
AND0_out1 <= Inp(0) AND Inp(0);

XOR1_out1 <= Inp(2) XOR Inp(0);

XOR2_out1 <= Inp(2) XOR Inp(1);

NAND3_out1 <=  NOT (XOR1_out1 AND XOR2_out1);

NOR4_out1 <=  NOT (Inp(3) OR NAND3_out1);

OR6_out1 <= NOR4_out1 OR Inp(1);

NXOR8_out1 <=  NOT (OR6_out1 XOR NAND3_out1);

XOR7_out1 <= Inp(1) XOR NOR4_out1;

Out1(0) <= AND0_out1;

Out1(1) <= AND0_out1;

Out1(2) <= NXOR8_out1;

Out1(3) <= XOR7_out1;

END rtl;
