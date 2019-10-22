library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity mux is
    port (
		  prueba :  in std_logic_vector(1 downto 0);
		  A,B,C	:	in std_logic;
		  VF		:	in std_logic;
		  sel		: 	out std_logic;
		  ent		: 	out std_logic
    );
end mux;
 
architecture behavioral of mux is	 
	 signal entrada : std_logic;
begin

	process (A,B,C) begin
		
		case prueba is
			when "00" => entrada <= A;
			when "01" => entrada <= B;
			when "10" => entrada <= C;
			when "11" => entrada <= '1';
			when others => entrada <= '0';
		end case;
		
		sel <= entrada xor VF;
		ent <= entrada;
		
	end process;
end behavioral;