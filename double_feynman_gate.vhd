----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:31:35 08/26/2020 
-- Design Name: 
-- Module Name:    feynman_gate - Behavioral 
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

entity gate_double_feynman is
	port(A,B,C : in std_logic;
		P,Q,R :Out std_logic);
end gate_double_feynman;

architecture Behavioral of gate_double_feynman is
begin
	P <= A;
	Q <= A XOR B;
	R <= A XOR C;
end Behavioral;

