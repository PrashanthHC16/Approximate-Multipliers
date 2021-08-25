-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_4bit_C_cir8 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_4bit_C_cir8;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_4bit_C_cir8 IS

-- Signals
SIGNAL NXOR0_out1                       : std_logic;
SIGNAL NXOR6_out1                       : std_logic;
SIGNAL NOR1_out1                        : std_logic;
SIGNAL OR3_out1                         : std_logic;
SIGNAL NAND4_out1                       : std_logic;
SIGNAL XOR5_out1                        : std_logic;
SIGNAL AND7_out1                        : std_logic;
SIGNAL AND2_out1                        : std_logic;
SIGNAL XOR8_out1                        : std_logic;

BEGIN
NXOR0_out1 <=  NOT (Inp(0) XOR Inp(1));

NXOR6_out1 <=  NOT (NXOR0_out1 XOR Inp(1));

NOR1_out1 <=  NOT (Inp(2) OR Inp(1));

OR3_out1 <= Inp(3) OR NOR1_out1;

NAND4_out1 <=  NOT (OR3_out1 AND NXOR0_out1);

XOR5_out1 <= NAND4_out1 XOR Inp(0);

AND7_out1 <= XOR5_out1 AND NAND4_out1;

AND2_out1 <= Inp(2) AND NXOR0_out1;

XOR8_out1 <= AND7_out1 XOR AND2_out1;

Out1(0) <= NXOR6_out1;

Out1(1) <= NXOR6_out1;

Out1(2) <= XOR8_out1;

Out1(3) <= XOR5_out1;

END rtl;
