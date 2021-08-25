-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_4bit_A_cir13 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_4bit_A_cir13;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_4bit_A_cir13 IS

-- Signals
SIGNAL OR3_out1                         : std_logic;
SIGNAL AND1_out1                        : std_logic;
SIGNAL NOR2_out1                        : std_logic;
SIGNAL NOR4_out1                        : std_logic;
SIGNAL AND0_out1                        : std_logic;

BEGIN
OR3_out1 <= Inp(0) OR Inp(0);

AND1_out1 <= Inp(3) AND Inp(2);

NOR2_out1 <=  NOT (Inp(1) OR AND1_out1);

NOR4_out1 <=  NOT (OR3_out1 OR NOR2_out1);

AND0_out1 <= Inp(1) AND Inp(3);

Out1(0) <= OR3_out1;

Out1(1) <= OR3_out1;

Out1(2) <= NOR4_out1;

Out1(3) <= AND0_out1;

END rtl;
