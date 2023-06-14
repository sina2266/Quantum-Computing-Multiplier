----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:00:00 01/16/2022 
-- Design Name: 
-- Module Name:    ngate_tks - Behavioral 
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


-- TKS GATE QUANTUM COST IS -
entity ngate_tks is
	PORT(A,B,C : IN STD_LOGIC;
		P,Q,R : OUT STD_LOGIC);
end ngate_tks;

architecture Behavioral of ngate_tks is
SIGNAL S1,S2,S3,S4,S5,S6,S7 : STD_LOGIC;
begin
	S1 <= NOT C;
	S2 <= A AND S1;
	S3 <= B AND C;
	P <= S2 OR S3;
	S4 <= A XOR B;
	Q <= S4 XOR C;
	S6 <= B AND S1;
	S7 <= A AND C;
	R <= S7 XOR S6;
end Behavioral;

