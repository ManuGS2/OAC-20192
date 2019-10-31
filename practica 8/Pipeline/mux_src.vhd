library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_src is
	Port (  selsrc : in STD_LOGIC_VECTOR(2 downto 0);
			  D1 : in STD_LOGIC_VECTOR(15 downto 0);
			  D2 : in STD_LOGIC_VECTOR(15 downto 0);
			  D3 : in STD_LOGIC_VECTOR(15 downto 0);
			  D4 : in STD_LOGIC_VECTOR(15 downto 0);
			  D5 : in STD_LOGIC_VECTOR(15 downto 0);
			  OP1  : out STD_LOGIC_VECTOR(15 downto 0);
			  OP2  : out STD_LOGIC_VECTOR(15 downto 0));
end mux_src;

architecture Behavioral of mux_src is
begin
	process (selsrc, D1, D2, D3, D4, D5)
	begin		
		if selsrc = "000" then 
			OP1 <= X"0000";
			OP2 <= X"0000";
		elsif selsrc = "001" then 
			OP1 <= D1;
			OP2 <= D2;
		elsif selsrc = "010" then 
			OP1 <= D1;
			OP2 <= D4;
		elsif selsrc = "011" then 
			OP1 <= D1;
			OP2 <= D5;
		elsif selsrc = "100" then 
			OP1 <= D4;
			OP2 <= D3;
		elsif selsrc = "101" then 
			OP1 <= D2;
			OP2 <= D5;
		elsif selsrc = "110" then 
			OP1 <= D2;
			OP2 <= D4;
		end if;
	end process;
end Behavioral;