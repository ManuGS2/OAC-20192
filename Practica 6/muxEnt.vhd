library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity muxEnt is
    port (
		  
		  X,Y,I	:	in std_logic;
		  prueba :  in std_logic_vector(1 downto 0);
		  VF		:	in std_logic;
		  cc		: 	out std_logic
    );
end muxEnt;
 
architecture behavioral of muxEnt is	 
	 signal entrada : std_logic;
begin

	process (X,Y,I,prueba,entrada,VF) begin
		
		case prueba is
			when "00" => entrada <= X;
			when "01" => entrada <= Y;
			when "10" => entrada <= I;
			when "11" => entrada <= '1';
			when others => entrada <= '0';
		end case;
		
		cc <= entrada xor VF;
		
	end process;
end behavioral;