library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity salidas is
    port (
		  AccA, AccB: in std_logic_vector(7 downto 0);
		  sw		  : in std_logic;
		  leds 	  : out std_logic_vector(7 downto 0)
    );
end salidas;
 
architecture behavioral of salidas is

begin
	
	process (AccA,AccB,sw) begin
		if sw = '1' then
			leds <= AccA;
		else
			leds <= AccB;
		end if;
	end process;
	
end behavioral;