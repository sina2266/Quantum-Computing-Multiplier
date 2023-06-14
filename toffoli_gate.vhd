----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:04 01/16/2022 
-- Design Name: 
-- Module Name:    toffoli_gate - Behavioral 
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

entity gate_toffoli is
	port(A,B,C : in std_logic;
		P,Q,R :Out std_logic);
end gate_toffoli;

architecture Behavioral of gate_toffoli is

begin

	P <= A;
	Q <= B;
	R <= (A AND B) XOR C;

end Behavioral;




