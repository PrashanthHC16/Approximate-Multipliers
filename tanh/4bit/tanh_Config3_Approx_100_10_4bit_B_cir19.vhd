-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_10_4bit_B_cir19 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_10_4bit_B_cir19;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_10_4bit_B_cir19 IS

-- Signals
SIGNAL OR2_out1                         : std_logic;
SIGNAL XOR0_out1                        : std_logic;
SIGNAL OR4_out1                         : std_logic;
SIGNAL AND5_out1                        : std_logic;
SIGNAL NOR1_out1                        : std_logic;
SIGNAL XOR3_out1                        : std_logic;

BEGIN
OR2_out1 <= Inp(0) OR Inp(0);

XOR0_out1 <= Inp(0) XOR Inp(1);

OR4_out1 <= XOR0_out1 OR Inp(2);

AND5_out1 <= Inp(1) AND OR4_out1;

NOR1_out1 <=  NOT (XOR0_out1 OR Inp(3));

XOR3_out1 <= Inp(1) XOR NOR1_out1;

Out1(0) <= OR2_out1;

Out1(1) <= OR2_out1;

Out1(2) <= AND5_out1;

Out1(3) <= XOR3_out1;

END rtl;
