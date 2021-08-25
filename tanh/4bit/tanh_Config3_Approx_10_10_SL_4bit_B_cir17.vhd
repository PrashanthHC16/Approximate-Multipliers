-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_10_10_SL_4bit_B_cir17 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_10_10_SL_4bit_B_cir17;


ARCHITECTURE rtl OF tanh_Config3_Approx_10_10_SL_4bit_B_cir17 IS

-- Signals
SIGNAL OR1_out1                         : std_logic;
SIGNAL AND0_out1                        : std_logic;
SIGNAL XOR2_out1                        : std_logic;
SIGNAL NAND3_out1                       : std_logic;
SIGNAL AND4_out1                        : std_logic;
SIGNAL OR5_out1                         : std_logic;

BEGIN
OR1_out1 <= Inp(0) OR Inp(0);

AND0_out1 <= Inp(2) AND Inp(1);

XOR2_out1 <= OR1_out1 XOR Inp(3);

NAND3_out1 <=  NOT (Inp(0) AND XOR2_out1);

AND4_out1 <= NAND3_out1 AND Inp(1);

OR5_out1 <= AND0_out1 OR AND4_out1;

Out1(0) <= OR1_out1;

Out1(1) <= OR1_out1;

Out1(2) <= OR5_out1;

Out1(3) <= AND4_out1;

END rtl;
