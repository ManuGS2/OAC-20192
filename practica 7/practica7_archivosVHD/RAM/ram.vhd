library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ram is
	Port( 
			data : inout std_logic_vector(7 downto 0);
			Wn : in std_logic;
			CSn : in std_logic;
			address : in std_logic_vector(15 downto 0)
			);
end ram;

architecture Behavioral of ram is
	type memory is array(0 to 255) of std_logic_vector(7 downto 0);
	signal mem : memory;
	signal data_out : std_logic_vector(7 downto 0) := X"00";
	
	begin
	
	-- Memory Write Block
	MEM_WRITE: process (address, CSn, Wn, data) 
	begin
		mem(0) <= x"86"; -- LDAA #$00 Cargamos en A 00 por acceso inmediato
		mem(1) <= x"00";
		mem(2) <= x"97"; -- STAA #0050 Cargamos en la dir 50 el contenido de A 'suma'
		mem(3) <= x"50";
		mem(4) <= x"86"; -- LDAA #$01 Cargamos en A 01 que será 'i'
		mem(5) <= x"01";
		mem(6) <= x"97"; -- STAA #0051 Cargamos en la dir 51 el contenido de A
		mem(7) <= x"51";
		mem(8) <= x"D6"; -- LDAB #0051 Cargamos el valor de i en B
		mem(9) <= x"51";
		mem(10) <= x"86"; -- LDAA #$10 Cargamos 10 (0A) en A 'n'
		mem(11) <= x"04";
		mem(12) <= x"11"; -- CBA Comparas A con B (A-B)
		mem(13) <= x"27"; -- JE Si el resultado es igual a 0
		mem(14) <= x"1E"; -- x"1E" = 30 decimal
		mem(15) <= x"96"; -- LDAA #$0050 
		mem(16) <= x"50";
		mem(17) <= x"1B"; -- ABA A <- A+B
		mem(18) <= x"5C"; -- INCB B <- B+1
		mem(19) <= x"97"; -- STAA #0050
		mem(20) <= x"50";
		mem(21) <= x"D7"; -- STAB #0051
		mem(22) <= x"51";
		mem(23) <= x"7E"; -- JMP al inicio
		mem(24) <= x"00";
		mem(25) <= x"0A";
		
		mem(30) <= X"C6";
		mem(31) <= X"02";
		mem(32) <= X"86";
		mem(33) <= X"00";
		mem(34) <= X"1B";
		mem(35) <= X"7E";
		mem(36) <= X"00";
		mem(37) <= X"04";
		
		
		if (CSn = '0' and Wn = '0') then
			mem(conv_integer(unsigned(address))) <= data;
		end if;
	end process;

	TRI_STATE: process (address, CSn, Wn, data_out)
	begin
		if (CSn = '0' and Wn = '1') then
			data <= data_out;
		else 
			data <= (others => 'Z');
		end if;
	end process;
		
 -- Memory Read Block
	MEM_READ: process (address, CSn, Wn, mem) 
	begin
		if (CSn = '0' and Wn = '1') then
			data_out <= mem(conv_integer(unsigned(address)));
		else
			data_out <= (others => '0');
		end if;
	end process;
	
end Behavioral;
