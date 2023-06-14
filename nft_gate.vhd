----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:59:33 01/16/2022 
-- Design Name: 
-- Module Name:    nft_gate - Behavioral 
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


-- NFT GATE QUANTUM COST IS 5
entity gate_nft is
	PORT(A,B,C : IN STD_LOGIC;
		P,Q,R : OUT STD_LOGIC);
end gate_nft;

architecture Behavioral of gate_nft is
SIGNAL S1,S2,S3,S4,S5,S6 : STD_LOGIC;
begin
	P <= A XOR B;
	
	S2 <= NOT A;
	S3 <= NOT C;
	S4 <= NOT B;
	S1 <= S4 AND C;
	S5 <= A AND S3;
	Q <= S1 XOR S5;
	S6 <= B AND C;
	R <= S6 XOR S5;
end Behavioral;

