library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all; 
 
entity logica is
    port (
		  cc		:  in std_logic;
		  mi 		:  in std_logic_vector(1 downto 0);
		  sel, pl, vect, maap:  out std_logic		  
    );
end logica;
 
architecture behavioral of logica is	
begin
	
	process (mi, CC) begin
		case mi&cc is
			when "000" => 
				sel <= '0';  pl <=  '1';
				maap <= '1'; vect <= '1';
			when "001" =>
				sel <= '0';  pl <=  '1';
				maap <= '1'; vect <= '1';
			when "010" => 
				sel <= '1';  pl <=  '0';
				maap <= '1'; vect <= '1';
			when "011" => 
				sel <= '0';  pl <=  '1';
				maap <= '1'; vect <= '1';
			when "100" => 
				sel <= '1';  pl <=  '1';
				maap <= '0'; vect <= '1';
			when "101" => 
				sel <= '1';  pl <=  '1';
				maap <= '0'; vect <= '1';
			when "110" =>
				sel <= '1';  pl <=  '1';
				maap <= '1'; vect <= '0';
			when "111" =>
				sel <= '0';  pl <=  '1';
				maap <= '1'; vect <= '1';
			when others =>
				sel <= '0';  pl <=  '1';
				maap <= '1'; vect <= '1';
		end case;
	end process;
end behavioral;