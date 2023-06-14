----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:31:05 01/16/2022 
-- Design Name: 
-- Module Name:    gate_hng - Behavioral 
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

-- HNG GATE QUANTUM COST IS 6
entity gate_hng is
	PORT(A,B,C,D : IN STD_LOGIC;
		P,Q,R,S : OUT STD_LOGIC);
end gate_hng;

architecture Behavioral of gate_hng is
	SIGNAL S1,S2,S3,S4 : STD_LOGIC;
begin
	P <= A;
	
	Q <= B;


	S1 <= A XOR B;
	R <= S1 XOR C;
	
	S2 <= S1 AND C;
	S3 <= A AND B;
	S4 <= S2 XOR S3;
	S <= S4 XOR D;
	
end Behavioral;

