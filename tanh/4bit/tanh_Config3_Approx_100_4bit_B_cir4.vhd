-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_4bit_B_cir4 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_4bit_B_cir4;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_4bit_B_cir4 IS

-- Signals
SIGNAL OR0_out1                         : std_logic;
SIGNAL XOR1_out1                        : std_logic;
SIGNAL OR2_out1                         : std_logic;
SIGNAL AND3_out1                        : std_logic;
SIGNAL OR4_out1                         : std_logic;
SIGNAL NXOR5_out1                       : std_logic;

BEGIN
OR0_out1 <= Inp(0) OR Inp(0);

XOR1_out1 <= OR0_out1 XOR Inp(1);

OR2_out1 <= XOR1_out1 OR Inp(2);

AND3_out1 <= OR2_out1 AND Inp(1);

OR4_out1 <= Inp(3) OR XOR1_out1;

NXOR5_out1 <=  NOT (Inp(1) XOR OR4_out1);

Out1(0) <= OR0_out1;

Out1(1) <= OR0_out1;

Out1(2) <= AND3_out1;

Out1(3) <= NXOR5_out1;

END rtl;
