-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_10_4bit_C_cir15 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_10_4bit_C_cir15;


ARCHITECTURE rtl OF tanh_Config3_Approx_10_4bit_C_cir15 IS

-- Signals
SIGNAL NXOR0_out1                       : std_logic;
SIGNAL NXOR2_out1                       : std_logic;
SIGNAL AND3_out1                        : std_logic;
SIGNAL OR6_out1                         : std_logic;
SIGNAL NOR1_out1                        : std_logic;
SIGNAL OR5_out1                         : std_logic;
SIGNAL AND7_out1                        : std_logic;
SIGNAL NXOR4_out1                       : std_logic;

BEGIN
NXOR0_out1 <=  NOT (Inp(0) XOR Inp(1));

NXOR2_out1 <=  NOT (Inp(1) XOR NXOR0_out1);

AND3_out1 <= Inp(3) AND NXOR0_out1;

OR6_out1 <= Inp(1) OR AND3_out1;

NOR1_out1 <=  NOT (Inp(2) OR NXOR0_out1);

OR5_out1 <= Inp(2) OR NOR1_out1;

AND7_out1 <= OR6_out1 AND OR5_out1;

NXOR4_out1 <=  NOT (Inp(0) XOR AND3_out1);

Out1(0) <= NXOR2_out1;

Out1(1) <= NXOR2_out1;

Out1(2) <= AND7_out1;

Out1(3) <= NXOR4_out1;

END rtl;
