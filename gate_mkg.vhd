----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:34:17 01/16/2022 
-- Design Name: 
-- Module Name:    gate_mkg - Behavioral 
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

-- MKG GATE QUANTUM COST IS 13
entity gate_mkg is
	PORT(A,B,C,D : IN STD_LOGIC;
		P,Q,R,S : OUT STD_LOGIC);
end gate_mkg;

architecture Behavioral of gate_mkg is
	SIGNAL S1,S2,S3,S4,S5,S6,S7,S8 : STD_LOGIC;
begin
	P <= A;
	
	Q <= C;

	S1 <= NOT A;
	S2 <= NOT B;
	S3 <= NOT D;
	S4 <= S1 AND S3;
	S8 <= S4 XOR S2;
	R <= S8 XOR C;
	
	S5 <= A AND B ;
	S6 <= S5 XOR D;
	S7 <= S8 AND C;
	S <= S7 XOR S6;
	
end Behavioral;
