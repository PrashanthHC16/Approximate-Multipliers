-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config2_Approx_100_4bit_B_cir12 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config2_Approx_100_4bit_B_cir12;


ARCHITECTURE rtl OF tanh_Config2_Approx_100_4bit_B_cir12 IS

-- Signals
SIGNAL OR1_out1                         : std_logic;
SIGNAL NOR2_out1                        : std_logic;
SIGNAL OR0_out1                         : std_logic;
SIGNAL AND3_out1                        : std_logic;
SIGNAL OR4_out1                         : std_logic;
SIGNAL AND5_out1                        : std_logic;

BEGIN
OR1_out1 <= Inp(0) OR Inp(0);

NOR2_out1 <=  NOT (Inp(0) OR OR1_out1);

OR0_out1 <= Inp(1) OR Inp(2);

AND3_out1 <= NOR2_out1 AND OR0_out1;

OR4_out1 <= Inp(3) OR AND3_out1;

AND5_out1 <= NOR2_out1 AND OR4_out1;

Out1(0) <= OR1_out1;

Out1(1) <= OR1_out1;

Out1(2) <= AND3_out1;

Out1(3) <= AND5_out1;

END rtl;
