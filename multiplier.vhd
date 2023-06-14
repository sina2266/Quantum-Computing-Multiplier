----------------------------------------------------------------------------------
-- Company: 
-- Engineer: SINA2266
-- 
-- Create Date:    13:45:48 01/16/2022 
-- Design Name: 
-- Module Name:    multiplier - Behavioral 
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


-- QUANTUM COST IS 100
entity multiplier is
	generic(bitnumber : integer := 4);
	Port (
				A : in STD_LOGIC_VECTOR (bitnumber-1 downto 0);
				B : in STD_LOGIC_VECTOR (bitnumber-1 downto 0);
				P : out STD_LOGIC_VECTOR ((bitnumber*2)-1 downto 0);
				CARRY_OUT : out STD_LOGIC
			);
end multiplier;

architecture Behavioral of multiplier is
--	SIGNAL P : STD_LOGIC_VECTOR((bitnumber*2)-1 downto 0);
	SIGNAL X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15 : STD_LOGIC;
	SIGNAL S0,S1,S2,S3,S4 : STD_LOGIC;
	SIGNAL C0,C1,C2,C3,C4 : STD_LOGIC;
	SIGNAL T0,T1,T2,T3 : STD_LOGIC;
	
	component gate_bme is
		  	port(A,B,C,D : in STD_LOGIC;
				P,Q,R,S :out STD_LOGIC);
	end component;
  
	component gate_peres
		PORT(A,B,C : IN STD_LOGIC;
			P,Q,R : OUT STD_LOGIC);
	end component;
	
	component gate_hng is
		  	port(A,B,C,D : in STD_LOGIC;
				P,Q,R,S :out STD_LOGIC);
	end component;
begin

	

	BG1: gate_bme PORT MAP(A(0)		,B(0)			,'0'			,B(1)			,OPEN				,P(0)			,X1			,OPEN		);
	BG2: gate_bme PORT MAP(A(1)		,B(0)			,'0'			,B(1)			,OPEN				,X2			,X4			,OPEN		);
	BG3: gate_bme PORT MAP(A(0)		,B(2)			,'0'			,B(3)			,OPEN				,X3			,X6			,OPEN		);
	BG4: gate_bme PORT MAP(A(1)		,B(2)			,'0'			,B(3)			,OPEN				,X7			,X10			,OPEN		);
	BG5: gate_bme PORT MAP(A(2)		,B(0)			,'0'			,B(1)			,OPEN				,X5			,X8			,OPEN		);
	BG6: gate_bme PORT MAP(A(3)		,B(0)			,'0'			,B(1)			,OPEN				,X9			,X12			,OPEN		);
	BG7: gate_bme PORT MAP(A(2)		,B(2)			,'0'			,B(3)			,OPEN				,X11			,X13			,OPEN		);
	BG8: gate_bme PORT MAP(A(3)		,B(2)			,'0'			,B(3)			,OPEN				,X14			,X15			,OPEN		);

	
	PG1: gate_peres PORT MAP(X1			,X2			,'0'			,OPEN			,P(1)				,C0			);
	PG2: gate_peres PORT MAP(C4			,X15			,'0'			,OPEN			,P(6)				,P(7)			);



	HG1: gate_hng PORT MAP(X4			,X3			,X5			,'0'			,OPEN				,OPEN			,S1			,T0		);
	HG2: gate_hng PORT MAP(T0			,C0			,S1			,'0'			,OPEN				,OPEN			,P(2)			,C1		);
	HG3: gate_hng PORT MAP(X6			,X7			,X8			,'0'			,OPEN				,OPEN			,S2			,T1		);
	HG4: gate_hng PORT MAP(C1			,S2			,T1			,'0'			,OPEN				,OPEN			,S3			,T2		);
	HG5: gate_hng PORT MAP(S3			,X9			,T2			,'0'			,OPEN				,OPEN			,P(3)			,C2		);
	HG6: gate_hng PORT MAP(X10			,X12			,X11			,'0'			,OPEN				,OPEN			,S4			,T3		);
	HG7: gate_hng PORT MAP(C2			,T3			,S4			,'0'			,OPEN				,OPEN			,P(4)			,C3		);
	HG8: gate_hng PORT MAP(C3			,X13			,X14			,'0'			,OPEN				,OPEN			,P(5)			,C4		);


end Behavioral;




