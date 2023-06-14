----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:13:19 01/16/2022 
-- Design Name: 
-- Module Name:    fredkin_gate - Behavioral 
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



-- FREDKIN GATE QUANTUM COST IS 5
entity gate_fredkin is

	port(A,B,C : in std_logic;
		P,Q,R :Out std_logic);

end gate_fredkin;

architecture Behavioral of gate_fredkin is

begin

	P <= A;
	Q <= ((NOT A) AND B) OR (A AND C);
	R <= (A AND B) OR ((NOT A) AND C);

end Behavioral;

