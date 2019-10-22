library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all; 
 
entity incremento is
    port (
		  presen   : in std_logic_vector(3 downto 0);
		  incre : out std_logic_vector (3 downto 0)
    );
end incremento;
 
architecture behavioral of incremento is

begin
	
	incre <= std_logic_vector( unsigned(presen) + 1 );
	
end behavioral;