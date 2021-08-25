-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_10_10_SL_4bit_B_cir6 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_10_10_SL_4bit_B_cir6;


ARCHITECTURE rtl OF tanh_Config3_Approx_10_10_SL_4bit_B_cir6 IS

-- Signals
SIGNAL NXOR0_out1                       : std_logic;
SIGNAL NXOR3_out1                       : std_logic;
SIGNAL AND1_out1                        : std_logic;
SIGNAL AND2_out1                        : std_logic;
SIGNAL OR4_out1                         : std_logic;
SIGNAL NXOR5_out1                       : std_logic;

BEGIN
NXOR0_out1 <=  NOT (Inp(1) XOR Inp(0));

NXOR3_out1 <=  NOT (Inp(1) XOR NXOR0_out1);

AND1_out1 <= NXOR0_out1 AND Inp(3);

AND2_out1 <= Inp(2) AND AND1_out1;

OR4_out1 <= Inp(1) OR AND2_out1;

NXOR5_out1 <=  NOT (NXOR3_out1 XOR AND1_out1);

Out1(0) <= NXOR3_out1;

Out1(1) <= NXOR3_out1;

Out1(2) <= OR4_out1;

Out1(3) <= NXOR5_out1;

END rtl;
