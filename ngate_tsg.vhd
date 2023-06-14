----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:20:30 01/16/2022 
-- Design Name: 
-- Module Name:    ngate_tsg - Behavioral 
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

-- TSG GATE QUANTUM COST IS 14
entity gate_tsg is
	PORT(A,B,C,D : IN STD_LOGIC;
		P,Q,R,S : OUT STD_LOGIC);
end gate_tsg;

architecture Behavioral of gate_tsg is
SIGNAL S1,S2,S3,S4,S5,S6,S7,S8 : STD_LOGIC;
begin
	P <= A;
	S1 <= NOT A;
	S2 <= NOT B;
	S3 <= NOT C;
	S4 <= S1 AND S3;
	S8 <= S4 XOR S2;
	Q <= S8;
	R <= S8 XOR D;
	S5 <= A AND B ;
	S6 <= S5 XOR C;
	S7 <= S8 AND D;
	S <= S7 XOR S6;
end Behavioral;
