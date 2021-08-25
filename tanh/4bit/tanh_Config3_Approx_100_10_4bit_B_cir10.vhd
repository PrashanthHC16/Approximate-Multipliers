-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_100_10_4bit_B_cir10 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_100_10_4bit_B_cir10;


ARCHITECTURE rtl OF tanh_Config3_Approx_100_10_4bit_B_cir10 IS

-- Signals
SIGNAL OR1_out1                         : std_logic;
SIGNAL NAND0_out1                       : std_logic;
SIGNAL OR2_out1                         : std_logic;
SIGNAL NXOR5_out1                       : std_logic;
SIGNAL OR3_out1                         : std_logic;
SIGNAL NXOR4_out1                       : std_logic;

BEGIN
OR1_out1 <= Inp(0) OR Inp(0);

NAND0_out1 <=  NOT (Inp(1) AND Inp(0));

OR2_out1 <= Inp(2) OR NAND0_out1;

NXOR5_out1 <=  NOT (OR2_out1 XOR Inp(1));

OR3_out1 <= Inp(3) OR NAND0_out1;

NXOR4_out1 <=  NOT (Inp(1) XOR OR3_out1);

Out1(0) <= OR1_out1;

Out1(1) <= OR1_out1;

Out1(2) <= NXOR5_out1;

Out1(3) <= NXOR4_out1;

END rtl;
