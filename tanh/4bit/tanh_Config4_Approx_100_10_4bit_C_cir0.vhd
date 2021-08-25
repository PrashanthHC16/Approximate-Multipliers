-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config4_Approx_100_10_4bit_C_cir0 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config4_Approx_100_10_4bit_C_cir0;


ARCHITECTURE rtl OF tanh_Config4_Approx_100_10_4bit_C_cir0 IS

-- Signals
SIGNAL AND0_out1                        : std_logic;
SIGNAL NOR1_out1                        : std_logic;
SIGNAL NOR2_out1                        : std_logic;
SIGNAL AND3_out1                        : std_logic;
SIGNAL AND6_out1                        : std_logic;
SIGNAL OR9_out1                         : std_logic;
SIGNAL NOR4_out1                        : std_logic;
SIGNAL NOR5_out1                        : std_logic;

BEGIN
AND0_out1 <= Inp(0) AND Inp(0);

NOR1_out1 <=  NOT (Inp(1) OR Inp(2));

NOR2_out1 <=  NOT (NOR1_out1 OR AND0_out1);

AND3_out1 <= Inp(1) AND Inp(2);

AND6_out1 <= AND3_out1 AND Inp(3);

OR9_out1 <= NOR2_out1 OR AND6_out1;

NOR4_out1 <=  NOT (Inp(3) OR NOR2_out1);

NOR5_out1 <=  NOT (Inp(0) OR NOR4_out1);

Out1(0) <= AND0_out1;

Out1(1) <= AND0_out1;

Out1(2) <= OR9_out1;

Out1(3) <= NOR5_out1;

END rtl;
