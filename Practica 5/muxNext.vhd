library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all; 
 
entity muxNext is
    port (
	 
		  liga 		:  in std_logic_vector(2 downto 0);
		  sel			:  in std_logic;
		  incre		:  in std_logic_vector(2 downto 0);
		  presen 	:  out std_logic_vector(2 downto 0)
		  
    );
end muxNext;
 
architecture behavioral of muxNext is	
begin
	
	process (sel) begin
		if sel = '1' then
			presen <= incre;
		else
			presen <= liga;
		end if;
	end process;
end behavioral;