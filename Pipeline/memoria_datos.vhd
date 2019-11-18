-- memoria de solo lectura

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria_datos is
	Port( direccion : in STD_LOGIC_VECTOR (15 downto 0);
	      datoW : in STD_LOGIC_VECTOR (15 downto 0);
			memW : in STD_LOGIC;
			datos : out STD_LOGIC_VECTOR (15 downto 0);
			suma	: out STD_LOGIC_VECTOR (15 downto 0);
			i_val : out STD_LOGIC_VECTOR (15 downto 0));
end memoria_datos;

architecture Behavioral of memoria_datos is
   type memory is array(0 to 50) of std_logic_vector(15 downto 0);
	signal memoria : memory;
	
	begin
		-- Las direcciones las indicamos en decimal
		
		-- Llenamos la memoria CARTA A
		--memoria(0) <= "000000000010" & "01" & "01" & '1' & "11000";
		--memoria(1) <= "000000000011" & "01" & "11" & '1' & "01001";
		--memoria(2) <= "000000000100" & "01" & "00" & '1' & "00100";
		--memoria(3) <= "000000000001" & "01" & "10" & '0' & "00110";
		--memoria(4) <= "000000000000" & "01" & "11" & '1' & "01010";
		
		
		-- Funcion de la memoria
		process(direccion, datoW, memW)
		begin
			if memW = '0' then
				datos <= memoria(conv_integer(unsigned(direccion)));
			else
				memoria(conv_integer(unsigned(direccion))) <= datoW;
			end if;
		end process;
		suma <= memoria(8);
		i_val <= memoria(9);
end Behavioral;
