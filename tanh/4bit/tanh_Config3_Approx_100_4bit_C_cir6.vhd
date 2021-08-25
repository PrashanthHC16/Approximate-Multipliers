-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_4bit_C_cir6 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_4bit_C_cir6;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_4bit_C_cir6 IS

-- Signals
SIGNAL OR2_out1                         : std_logic;
SIGNAL NXOR0_out1                       : std_logic;
SIGNAL NOR3_out1                        : std_logic;
SIGNAL AND1_out1                        : std_logic;
SIGNAL XOR7_out1                        : std_logic;
SIGNAL OR5_out1                         : std_logic;
SIGNAL NXOR6_out1                       : std_logic;
SIGNAL OR4_out1                         : std_logic;
SIGNAL AND8_out1                        : std_logic;

BEGIN
OR2_out1 <= Inp(0) OR Inp(0);

NXOR0_out1 <=  NOT (Inp(1) XOR Inp(0));

NOR3_out1 <=  NOT (NXOR0_out1 OR OR2_out1);

AND1_out1 <= NXOR0_out1 AND Inp(2);

XOR7_out1 <= NOR3_out1 XOR AND1_out1;

OR5_out1 <= Inp(3) OR NOR3_out1;

NXOR6_out1 <=  NOT (Inp(1) XOR OR5_out1);

OR4_out1 <= Inp(1) OR AND1_out1;

AND8_out1 <= NXOR6_out1 AND OR4_out1;

Out1(0) <= OR2_out1;

Out1(1) <= OR2_out1;

Out1(2) <= XOR7_out1;

Out1(3) <= AND8_out1;

END rtl;
