library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity salidas is
    port (
		  presente	 : in std_logic_vector(2 downto 0);
		  liga  	 	: in std_logic_vector (2 downto 0);
		  salidas	: in std_logic_vector(3 downto 0);
		  prueba  : in std_logic_vector (1 downto 0);
		  sw			 : in std_logic;
		  leds : out std_logic_vector(6 downto 0)
    );
end salidas;
 
architecture behavioral of salidas is

begin
	
	process (salidas, liga, presente, sw) begin
		if sw = '0' then
			leds <= liga & salidas;
		else
			leds <= presente & "00" & prueba;
		end if;
	end process;
	
end behavioral;