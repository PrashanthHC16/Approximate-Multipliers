-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_10_10_SL_4bit_A_cir3 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_10_10_SL_4bit_A_cir3;


ARCHITECTURE rtl OF tanh_Config3_Approx_10_10_SL_4bit_A_cir3 IS

-- Signals
SIGNAL AND1_out1                        : std_logic;
SIGNAL OR2_out1                         : std_logic;
SIGNAL XOR3_out1                        : std_logic;
SIGNAL AND0_out1                        : std_logic;
SIGNAL OR4_out1                         : std_logic;

BEGIN
AND1_out1 <= Inp(0) AND Inp(1);

OR2_out1 <= Inp(0) OR AND1_out1;

XOR3_out1 <= AND1_out1 XOR Inp(1);

AND0_out1 <= Inp(1) AND Inp(3);

OR4_out1 <= AND0_out1 OR XOR3_out1;

Out1(0) <= OR2_out1;

Out1(1) <= OR2_out1;

Out1(2) <= XOR3_out1;

Out1(3) <= OR4_out1;

END rtl;
