-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_10_4bit_A_cir10 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_10_4bit_A_cir10;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_10_4bit_A_cir10 IS

-- Signals
SIGNAL OR3_out1                         : std_logic;
SIGNAL NAND1_out1                       : std_logic;
SIGNAL NOR2_out1                        : std_logic;
SIGNAL OR4_out1                         : std_logic;
SIGNAL AND0_out1                        : std_logic;

BEGIN
OR3_out1 <= Inp(0) OR Inp(0);

NAND1_out1 <=  NOT (Inp(2) AND Inp(3));

NOR2_out1 <=  NOT (Inp(0) OR NAND1_out1);

OR4_out1 <= NOR2_out1 OR Inp(1);

AND0_out1 <= Inp(1) AND Inp(3);

Out1(0) <= OR3_out1;

Out1(1) <= OR3_out1;

Out1(2) <= OR4_out1;

Out1(3) <= AND0_out1;

END rtl;
