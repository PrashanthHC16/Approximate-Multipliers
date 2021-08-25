-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config2_Approx_100_10_4bit_C_cir0 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config2_Approx_100_10_4bit_C_cir0;


ARCHITECTURE rtl OF tanh_Config2_Approx_100_10_4bit_C_cir0 IS

-- Signals
SIGNAL OR5_out1                         : std_logic;
SIGNAL OR1_out1                         : std_logic;
SIGNAL NAND0_out1                       : std_logic;
SIGNAL AND3_out1                        : std_logic;
SIGNAL AND2_out1                        : std_logic;
SIGNAL AND4_out1                        : std_logic;
SIGNAL OR6_out1                         : std_logic;

BEGIN
OR5_out1 <= Inp(0) OR Inp(0);

OR1_out1 <= Inp(1) OR Inp(2);

NAND0_out1 <=  NOT (Inp(0) AND Inp(0));

AND3_out1 <= OR1_out1 AND NAND0_out1;

AND2_out1 <= Inp(1) AND Inp(2);

AND4_out1 <= Inp(3) AND AND2_out1;

OR6_out1 <= AND3_out1 OR AND4_out1;

Out1(0) <= OR5_out1;

Out1(1) <= OR5_out1;

Out1(2) <= OR6_out1;

Out1(3) <= AND3_out1;

END rtl;
