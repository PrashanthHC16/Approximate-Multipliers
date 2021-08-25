-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config4_Approx_100_10_4bit_C_cir17 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config4_Approx_100_10_4bit_C_cir17;


ARCHITECTURE rtl OF tanh_Config4_Approx_100_10_4bit_C_cir17 IS

-- Signals
SIGNAL OR1_out1                         : std_logic;
SIGNAL AND2_out1                        : std_logic;
SIGNAL AND6_out1                        : std_logic;
SIGNAL OR0_out1                         : std_logic;
SIGNAL NOR4_out1                        : std_logic;
SIGNAL NOR5_out1                        : std_logic;
SIGNAL OR7_out1                         : std_logic;
SIGNAL AND8_out1                        : std_logic;

BEGIN
OR1_out1 <= Inp(0) OR Inp(0);

AND2_out1 <= Inp(2) AND Inp(3);

AND6_out1 <= AND2_out1 AND Inp(1);

OR0_out1 <= Inp(1) OR Inp(2);

NOR4_out1 <=  NOT (OR0_out1 OR Inp(3));

NOR5_out1 <=  NOT (OR1_out1 OR NOR4_out1);

OR7_out1 <= AND6_out1 OR NOR5_out1;

AND8_out1 <= OR7_out1 AND OR0_out1;

Out1(0) <= OR1_out1;

Out1(1) <= OR1_out1;

Out1(2) <= AND8_out1;

Out1(3) <= NOR5_out1;

END rtl;
