library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity muxSalidas is
    port (
		  sal 	:  in std_logic_vector(7 downto 0);
		  ent		:  in std_logic;
		  salidas:  out std_logic_vector(3 downto 0)
    );
end muxSalidas;
 
architecture behavioral of muxSalidas is	
begin
	
	process (ent) begin

		if ent = '1' then
			salidas <= sal(3 downto 0);
		else
			salidas <= sal(7 downto 4);
		end if;
		
	end process;
end behavioral;