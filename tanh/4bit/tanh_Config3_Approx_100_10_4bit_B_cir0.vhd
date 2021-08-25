-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_10_4bit_B_cir0 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_10_4bit_B_cir0;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_10_4bit_B_cir0 IS

-- Signals
SIGNAL NAND0_out1                       : std_logic;
SIGNAL AND1_out1                        : std_logic;
SIGNAL OR3_out1                         : std_logic;
SIGNAL AND2_out1                        : std_logic;
SIGNAL NOR4_out1                        : std_logic;
SIGNAL NOR5_out1                        : std_logic;

BEGIN
NAND0_out1 <=  NOT (Inp(2) AND Inp(1));

AND1_out1 <= Inp(0) AND NAND0_out1;

OR3_out1 <= Inp(0) OR AND1_out1;

AND2_out1 <= Inp(3) AND Inp(2);

NOR4_out1 <=  NOT (AND2_out1 OR Inp(1));

NOR5_out1 <=  NOT (NOR4_out1 OR AND1_out1);

Out1(0) <= OR3_out1;

Out1(1) <= OR3_out1;

Out1(2) <= NOR5_out1;

Out1(3) <= NOR5_out1;

END rtl;
