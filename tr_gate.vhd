----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:21:24 01/16/2022 
-- Design Name: 
-- Module Name:    tr_gate - Behavioral 
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


-- TR GATE QUANTUM COST IS 6
entity gate_tr is
	PORT(A,B,C : IN STD_LOGIC;
		P,Q,R : OUT STD_LOGIC);
end gate_tr;

architecture Behavioral of gate_tr is
SIGNAL S1,S2,S3 : STD_LOGIC;
begin
	P <= A;
	S1 <= A AND B;
	S2 <= NOT B;
	S3 <= A AND S2;
	Q <= A XOR B;
	R <= S3 XOR C;
end Behavioral;
