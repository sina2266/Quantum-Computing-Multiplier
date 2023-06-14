----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:22:03 01/16/2022 
-- Design Name: 
-- Module Name:    gate_mtsg - Behavioral 
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

-- MTSG/PFAG GATE QUANTUM COST IS 6
entity gate_mtsg is
	PORT(A,B,C,D : IN STD_LOGIC;
		P,Q,R,S : OUT STD_LOGIC);
end gate_mtsg;

architecture Behavioral of gate_mtsg is
SIGNAL S1,S2,S3 : STD_LOGIC;
begin
	P <= A;
	S1 <= A XOR B;
	Q <= S1;
	R <= S1 XOR C;
	S2 <= S1 AND C;
	S3 <= A AND B;
	S <= S2 XOR S3 XOR D;
end Behavioral;
