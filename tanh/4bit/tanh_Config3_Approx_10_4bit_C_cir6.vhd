-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_10_4bit_C_cir6 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_10_4bit_C_cir6;


ARCHITECTURE rtl OF tanh_Config3_Approx_10_4bit_C_cir6 IS

-- Signals
SIGNAL AND4_out1                        : std_logic;
SIGNAL NXOR1_out1                       : std_logic;
SIGNAL NXOR0_out1                       : std_logic;
SIGNAL OR3_out1                         : std_logic;
SIGNAL OR5_out1                         : std_logic;
SIGNAL NXOR6_out1                       : std_logic;
SIGNAL NOR7_out1                        : std_logic;
SIGNAL XOR8_out1                        : std_logic;

BEGIN
AND4_out1 <= Inp(0) AND Inp(0);

NXOR1_out1 <=  NOT (Inp(1) XOR Inp(2));

NXOR0_out1 <=  NOT (Inp(0) XOR Inp(2));

OR3_out1 <= NXOR1_out1 OR NXOR0_out1;

OR5_out1 <= Inp(3) OR OR3_out1;

NXOR6_out1 <=  NOT (OR5_out1 XOR Inp(1));

NOR7_out1 <=  NOT (NXOR6_out1 OR Inp(1));

XOR8_out1 <= NOR7_out1 XOR OR3_out1;

Out1(0) <= AND4_out1;

Out1(1) <= AND4_out1;

Out1(2) <= XOR8_out1;

Out1(3) <= NXOR6_out1;

END rtl;
