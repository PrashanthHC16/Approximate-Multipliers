-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config2_Approx_100_10_4bit_A_cir1 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config2_Approx_100_10_4bit_A_cir1;


ARCHITECTURE rtl OF tanh_Config2_Approx_100_10_4bit_A_cir1 IS

-- Signals
SIGNAL AND0_out1                        : std_logic;
SIGNAL NOR1_out1                        : std_logic;
SIGNAL NOR2_out1                        : std_logic;
SIGNAL NOR3_out1                        : std_logic;
SIGNAL NOR4_out1                        : std_logic;

BEGIN
AND0_out1 <= Inp(0) AND Inp(0);

NOR1_out1 <=  NOT (Inp(1) OR Inp(2));

NOR2_out1 <=  NOT (Inp(0) OR NOR1_out1);

NOR3_out1 <=  NOT (NOR2_out1 OR Inp(3));

NOR4_out1 <=  NOT (NOR3_out1 OR Inp(0));

Out1(0) <= AND0_out1;

Out1(1) <= AND0_out1;

Out1(2) <= NOR2_out1;

Out1(3) <= NOR4_out1;

END rtl;
