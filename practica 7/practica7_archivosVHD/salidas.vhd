library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity salidas is
    port (
		  AccA, AccB,suma,val_i: in std_logic_vector(7 downto 0);
		  sw		  : in std_logic_vector(1 downto 0);
		  leds 	  : out std_logic_vector(7 downto 0)
    );
end salidas;
 
architecture behavioral of salidas is

begin
	
	process (AccA,AccB,suma,val_i,sw) begin
		case sw is
			when "00" => leds <= AccA;
			when "01" => leds <= AccB;
			when "10" => leds <= suma;
			when "11" => leds <= val_i;	
			when others => leds <= (others=>'0');
		 end case;
	end process;
	
end behavioral;