-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_4bit_C_cir0 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_4bit_C_cir0;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_4bit_C_cir0 IS

-- Signals
SIGNAL AND2_out1                        : std_logic;
SIGNAL XOR0_out1                        : std_logic;
SIGNAL AND1_out1                        : std_logic;
SIGNAL XOR3_out1                        : std_logic;
SIGNAL AND4_out1                        : std_logic;
SIGNAL NOR5_out1                        : std_logic;
SIGNAL NOR8_out1                        : std_logic;
SIGNAL NAND6_out1                       : std_logic;
SIGNAL AND7_out1                        : std_logic;

BEGIN
AND2_out1 <= Inp(0) AND Inp(0);

XOR0_out1 <= Inp(1) XOR Inp(2);

AND1_out1 <= XOR0_out1 AND Inp(0);

XOR3_out1 <= Inp(0) XOR Inp(3);

AND4_out1 <= Inp(2) AND XOR3_out1;

NOR5_out1 <=  NOT (Inp(1) OR AND4_out1);

NOR8_out1 <=  NOT (AND1_out1 OR NOR5_out1);

NAND6_out1 <=  NOT (Inp(0) AND XOR3_out1);

AND7_out1 <= NAND6_out1 AND Inp(1);

Out1(0) <= AND2_out1;

Out1(1) <= AND2_out1;

Out1(2) <= NOR8_out1;

Out1(3) <= AND7_out1;

END rtl;
