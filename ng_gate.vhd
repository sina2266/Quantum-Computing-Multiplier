----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:28:25 01/16/2022 
-- Design Name: 
-- Module Name:    ng_gate - Behavioral 
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

-- NG GATE QUANTUM COST IS 7
entity gate_ng is
	PORT(A,B,C : IN STD_LOGIC;
		P,Q,R : OUT STD_LOGIC);
end gate_ng;

architecture Behavioral of gate_ng is
SIGNAL S1,S2,S3,S4,S5 : STD_LOGIC;
begin
	P <= A;
	S1 <= A AND B;
	S2 <= NOT A;
	S3 <= NOT C;
	S4 <= NOT B;
	S5 <= S2 AND S3;
	Q <= S1 XOR B;
	R <= S5 XOR S4;
end Behavioral;

