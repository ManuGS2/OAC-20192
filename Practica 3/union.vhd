library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity union is
    port (
		  presente : in std_logic_vector(2 downto 0);
		  A, B, C: in std_logic;
		  add : out std_logic_vector(5 downto 0)
    );
end union;
 
architecture behavioral of union is

begin
	
	add <= presente & A & B & C;
	
end behavioral;