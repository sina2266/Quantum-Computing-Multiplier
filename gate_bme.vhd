----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:15:36 02/11/2022 
-- Design Name: 
-- Module Name:    gate_bme - Behavioral 
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
entity gate_bme is
	PORT(A,B,C,D : IN STD_LOGIC;
		P,Q,R,S : OUT STD_LOGIC);
end gate_bme;

architecture Behavioral of gate_bme is
	SIGNAL S1,S2,S3,S4,S5 : STD_LOGIC;
begin
	P <= A;
	
	S1 <= A AND B;
	Q <= S1 XOR C;


	S2 <= A AND D;
	R <= S2 XOR C;
	
	S3 <= NOT A;
	S4 <= S3 AND B;
	S5 <= S4 XOR C;
	S <= S5 XOR D;
	
end Behavioral;
