----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:15:57 01/16/2022 
-- Design Name: 
-- Module Name:    ngat_urg - Behavioral 
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


-- URG GATE QUANTUM COST IS 12
entity gate_urg is
	PORT(A,B,C : IN STD_LOGIC;
		P,Q,R : OUT STD_LOGIC);
end gate_urg;

architecture Behavioral of gate_urg is
SIGNAL S1,S2 : STD_LOGIC;
begin
	S1 <= A AND B;
	S2 <= A OR B;
	P <= S2 XOR C;
	Q <= B;
	R <= S1 XOR C;
end Behavioral;

