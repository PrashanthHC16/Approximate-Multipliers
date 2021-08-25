-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_10_4bit_B_cir1 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_10_4bit_B_cir1;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_10_4bit_B_cir1 IS

-- Signals
SIGNAL NOR0_out1                        : std_logic;
SIGNAL OR2_out1                         : std_logic;
SIGNAL NAND5_out1                       : std_logic;
SIGNAL AND3_out1                        : std_logic;
SIGNAL AND1_out1                        : std_logic;
SIGNAL OR4_out1                         : std_logic;

BEGIN
NOR0_out1 <=  NOT (Inp(0) OR Inp(0));

OR2_out1 <= Inp(2) OR NOR0_out1;

NAND5_out1 <=  NOT (NOR0_out1 AND OR2_out1);

AND3_out1 <= Inp(1) AND OR2_out1;

AND1_out1 <= Inp(1) AND Inp(3);

OR4_out1 <= AND1_out1 OR AND3_out1;

Out1(0) <= NAND5_out1;

Out1(1) <= NAND5_out1;

Out1(2) <= AND3_out1;

Out1(3) <= OR4_out1;

END rtl;
