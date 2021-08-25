-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config2_Approx_100_10_4bit_C_cir1 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config2_Approx_100_10_4bit_C_cir1;


ARCHITECTURE rtl OF tanh_Config2_Approx_100_10_4bit_C_cir1 IS

-- Signals
SIGNAL AND6_out1                        : std_logic;
SIGNAL NOR0_out1                        : std_logic;
SIGNAL OR1_out1                         : std_logic;
SIGNAL AND3_out1                        : std_logic;
SIGNAL NAND4_out1                       : std_logic;
SIGNAL NAND5_out1                       : std_logic;
SIGNAL NAND2_out1                       : std_logic;

BEGIN
AND6_out1 <= Inp(0) AND Inp(0);

NOR0_out1 <=  NOT (Inp(1) OR Inp(2));

OR1_out1 <= Inp(0) OR NOR0_out1;

AND3_out1 <= Inp(2) AND Inp(1);

NAND4_out1 <=  NOT (AND3_out1 AND Inp(3));

NAND5_out1 <=  NOT (OR1_out1 AND NAND4_out1);

NAND2_out1 <=  NOT (Inp(0) AND OR1_out1);

Out1(0) <= AND6_out1;

Out1(1) <= AND6_out1;

Out1(2) <= NAND5_out1;

Out1(3) <= NAND2_out1;

END rtl;
