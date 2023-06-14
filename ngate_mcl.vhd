----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:07:43 01/16/2022 
-- Design Name: 
-- Module Name:    ngate_mcl - Behavioral 
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

-- MCL GATE QUANTUM COST IS -
entity ngate_mcl is
	PORT(A,B,C : IN STD_LOGIC;
		P,Q,R : OUT STD_LOGIC);
end ngate_mcl;

architecture Behavioral of ngate_mcl is
SIGNAL S1,S2,S3 : STD_LOGIC;
begin
	R <= A;
	S1 <= NOT A;
	S2 <= NOT C;
	S3 <= NOT B;
	P <= S3 AND S2;
	Q <= S1 AND S3;

end Behavioral;

