library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_dir is
	Port (  sel : in STD_LOGIC_VECTOR(1 downto 0);
			  E0 : in STD_LOGIC_VECTOR(15 downto 0);
			  E1 : in STD_LOGIC_VECTOR(15 downto 0);
			  E2 : in STD_LOGIC_VECTOR(15 downto 0);
			  sal  : out STD_LOGIC_VECTOR(15 downto 0));
end mux_dir;

architecture Behavioral of mux_dir is
begin
	process (sel, E0, E1, E2)
	begin		
		if sel = "00" then 
			sal <= E0;
		elsif sel = "01" then 
			sal <= E1;
		elsif sel = "10" then 
			sal <= E2;
		end if;
	end process;
end Behavioral;