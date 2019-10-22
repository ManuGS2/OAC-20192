library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity regTrans is
    port (
		  entrada : in std_logic_vector(3 downto 0);
		  maap	 : in std_logic;
		  trans	 : out std_logic_vector(3 downto 0)
    );
end regTrans;
 
architecture behavioral of regTrans is

begin
	
	process (maap) begin
	
		if maap = '0' then
			trans <= entrada;
		else
			trans <= "ZZZZ";
		end if;
		
	end process;
	
end behavioral;