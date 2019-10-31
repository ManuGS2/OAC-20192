library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_result is
	Port (  selresult : in STD_LOGIC_VECTOR(1 downto 0);
			  res : in STD_LOGIC_VECTOR(15 downto 0);
			  op1 : in STD_LOGIC_VECTOR(15 downto 0);
			  op2 : in STD_LOGIC_VECTOR(15 downto 0);
			  d3 : in STD_LOGIC_VECTOR(15 downto 0);
			  dirw  : out STD_LOGIC_VECTOR(15 downto 0);
			  datow  : out STD_LOGIC_VECTOR(15 downto 0));
end mux_result;

architecture Behavioral of mux_result is
begin
	process (selresult, res, op1, op2, d3)
	begin		
		if selresult = "00" then 
			dirw <= X"0000";
			datow <= X"0000";
		elsif selresult = "01" then 
			dirw <= d3;
			datow <= res;
		elsif selresult = "10" then 
			dirw <= d3;
			datow <= op2;
		elsif selresult = "11" then 
			dirw <= d3;
			datow <= op1;
		end if;
	end process;
end Behavioral;