library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity divisor is
    Port ( 
				reloj	:	in  	STD_LOGIC;	-- Reloj de 50 MHz
				clk 	:	out  	STD_LOGIC);	-- salida del divisor
end divisor;

architecture Behavioral of divisor is

signal div: STD_LOGIC := '0';

begin
	process (reloj, div) --Variable sensitiva reloj la declaramos dentro del process
		--Declaramos la variable cuenta y limite que solo trabajaran en el bloque del proceso
		variable limite: INTEGER := 25000000;
		variable cuenta: INTEGER range 0 to 25000000 := 0;
		begin
		
			if rising_edge(reloj) then 
				if cuenta = limite then
					cuenta := 0;
					div <= not(div);
				else
					cuenta := cuenta+1;
				end if;
			end if;
			clk <= div;
		end process;
end Behavioral;
