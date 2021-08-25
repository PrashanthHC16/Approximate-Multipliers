-- Owner : Prashanth H C,( prashanth.c@iiitb.ac.in )
-- File part of SOMALib Activation functions library
-- All circuits : https://github.com/PrashanthHC16/Activation-Functions-Library
-- The file is distributed under MIT License.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tanh_Config3_Approx_10_10_SL_4bit_A_cir0 IS
PORT( Inp                               :   IN    std_logic_vector(3 downto 0);
      Out1                             :   OUT   std_logic_vector(3 downto 0)
      );
END tanh_Config3_Approx_10_10_SL_4bit_A_cir0;


ARCHITECTURE rtl OF tanh_Config3_Approx_10_10_SL_4bit_A_cir0 IS

-- Signals
SIGNAL AND1_out1                        : std_logic;
SIGNAL NAND0_out1                       : std_logic;
SIGNAL NAND3_out1                       : std_logic;
SIGNAL AND4_out1                        : std_logic;

BEGIN
AND1_out1 <= Inp(0) AND Inp(0);

NAND0_out1 <=  NOT (Inp(2) AND Inp(3));

NAND3_out1 <=  NOT (NAND0_out1 AND AND1_out1);

AND4_out1 <= Inp(1) AND NAND3_out1;

Out1(0) <= AND1_out1;

Out1(1) <= AND1_out1;

Out1(2) <= AND4_out1;

Out1(3) <= AND4_out1;

END rtl;
