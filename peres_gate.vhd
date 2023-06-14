----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:01 08/26/2020 
-- Design Name: 
-- Module Name:    peres_gate - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- PERES GATE QUANTUM COST IS 4
entity gate_peres is
	PORT(A,B,C : IN STD_LOGIC;
		P,Q,R : OUT STD_LOGIC);
end gate_peres;

architecture Behavioral of gate_peres is
SIGNAL S1 : STD_LOGIC;
begin
	P <= A;
	S1 <= A AND B;
	Q <= A XOR B;
	R <= S1 XOR C;
end Behavioral;

