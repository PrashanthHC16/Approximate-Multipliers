-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_10_4bit_A_cir0 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_10_4bit_A_cir0;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_10_4bit_A_cir0 IS

-- Signals
SIGNAL OR0_out1                         : std_logic;
SIGNAL XOR1_out1                        : std_logic;
SIGNAL NAND2_out1                       : std_logic;
SIGNAL AND3_out1                        : std_logic;

BEGIN
OR0_out1 <= Inp(0) OR Inp(0);

XOR1_out1 <= Inp(2) XOR Inp(0);

NAND2_out1 <=  NOT (XOR1_out1 AND Inp(0));

AND3_out1 <= NAND2_out1 AND Inp(1);

Out1(0) <= OR0_out1;

Out1(1) <= OR0_out1;

Out1(2) <= AND3_out1;

Out1(3) <= AND3_out1;

END rtl;
