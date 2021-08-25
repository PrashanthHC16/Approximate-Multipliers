-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_4bit_B_cir18 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_4bit_B_cir18;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_4bit_B_cir18 IS

-- Signals
SIGNAL OR2_out1                         : std_logic;
SIGNAL AND0_out1                        : std_logic;
SIGNAL NOR1_out1                        : std_logic;
SIGNAL NOR3_out1                        : std_logic;
SIGNAL AND4_out1                        : std_logic;
SIGNAL OR5_out1                         : std_logic;

BEGIN
OR2_out1 <= Inp(0) OR Inp(0);

AND0_out1 <= Inp(3) AND Inp(2);

NOR1_out1 <=  NOT (AND0_out1 OR Inp(1));

NOR3_out1 <=  NOT (Inp(0) OR NOR1_out1);

AND4_out1 <= Inp(1) AND Inp(2);

OR5_out1 <= NOR3_out1 OR AND4_out1;

Out1(0) <= OR2_out1;

Out1(1) <= OR2_out1;

Out1(2) <= OR5_out1;

Out1(3) <= NOR3_out1;

END rtl;
