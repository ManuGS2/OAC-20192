library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity regInt is
    port (
		  
		  entrada : in std_logic_vector(3 downto 0);
		  vect 	 : in std_logic;
		  inte 	 : out std_logic_vector(3 downto 0)
    );
end regInt;
 
architecture behavioral of regInt is

begin
	
	process (vect) begin
	
		if vect = '0' then
			inte <= entrada;
		else
			inte <= "ZZZZ";
		end if;
		
	end process;
	
end behavioral;