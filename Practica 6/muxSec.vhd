library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all; 
 
entity muxSec is
    port (
	 
		  incre 		:  in std_logic_vector(3 downto 0);
		  liga		:  in std_logic_vector(3 downto 0);
		  sel			:  in std_logic;
		  
		  presen 	:  out std_logic_vector(3 downto 0)
		  
    );
end muxSec;
 
architecture behavioral of muxSec is	
begin
	
	process (sel,incre,liga) begin
		if sel = '0' then
			presen <= incre;
		else
			presen <= liga;
		end if;
	end process;
end behavioral;