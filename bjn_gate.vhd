----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:42 01/16/2022 
-- Design Name: 
-- Module Name:    bjn_gate - Behavioral 
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


-- BJN GATE QUANTUM COST IS 5
entity gate_bjn is
	PORT(A,B,C : IN STD_LOGIC;
		P,Q,R : OUT STD_LOGIC);
end gate_bjn;

architecture Behavioral of gate_bjn is
SIGNAL S1 : STD_LOGIC;
begin
	P <= A;
	Q <= B;
	S1 <= A OR B;
	R <= S1 XOR C;
end Behavioral;


