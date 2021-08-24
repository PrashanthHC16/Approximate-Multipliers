-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Bstep_Config1_Approx_10_8bit_cir0 IS
PORT( Inp                               :   IN    std_logic_vector(7 downto 0);
      Out1                             :   OUT   std_logic_vector(0 downto 0)
      );
END Bstep_Config1_Approx_10_8bit_cir0;


ARCHITECTURE rtl OF Bstep_Config1_Approx_10_8bit_cir0 IS

-- Signals
SIGNAL NOR7_out1                        : std_logic;

BEGIN
NOR7_out1 <=  NOT (Inp(0) OR Inp(0));

Out1(0) <= NOR7_out1;

END rtl;
