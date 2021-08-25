-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_10_10_SL_4bit_C_cir10 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_10_10_SL_4bit_C_cir10;


ARCHITECTURE rtl OF tanh_Config3_Approx_10_10_SL_4bit_C_cir10 IS

-- Signals
SIGNAL NOR0_out1                        : std_logic;
SIGNAL OR1_out1                         : std_logic;
SIGNAL AND4_out1                        : std_logic;
SIGNAL XOR3_out1                        : std_logic;
SIGNAL NOR5_out1                        : std_logic;
SIGNAL NOR7_out1                        : std_logic;
SIGNAL AND2_out1                        : std_logic;
SIGNAL OR8_out1                         : std_logic;
SIGNAL XOR6_out1                        : std_logic;

BEGIN
NOR0_out1 <=  NOT (Inp(1) OR Inp(2));

OR1_out1 <= NOR0_out1 OR Inp(0);

AND4_out1 <= OR1_out1 AND Inp(0);

XOR3_out1 <= OR1_out1 XOR Inp(1);

NOR5_out1 <=  NOT (Inp(3) OR XOR3_out1);

NOR7_out1 <=  NOT (OR1_out1 OR NOR5_out1);

AND2_out1 <= Inp(2) AND Inp(1);

OR8_out1 <= NOR7_out1 OR AND2_out1;

XOR6_out1 <= NOR5_out1 XOR Inp(1);

Out1(0) <= AND4_out1;

Out1(1) <= AND4_out1;

Out1(2) <= OR8_out1;

Out1(3) <= XOR6_out1;

END rtl;
