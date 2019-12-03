-- memoria de solo lectura

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria_inst is
	Port( direccion : in STD_LOGIC_VECTOR (15 downto 0);
			datos : out STD_LOGIC_VECTOR (31 downto 0));
end memoria_inst;

architecture Behavioral of memoria_inst is
   type memory is array(0 to 50) of std_logic_vector(31 downto 0);
	signal memoria : memory;
	
	begin
		
	
		memoria(0) <= x"00860000"; -- LDAA 00 acceso directo a memoria
		memoria(1) <= x"00C60002"; -- LDAB 02 acceso directo a memoria
		memoria(2) <= x"001B0000"; -- ABA A <= A+B
		memoria(3) <= x"007E0002"; -- JMP al x"17"
		memoria(4) <= x"00010000"; -- NOP
		memoria(5) <= x"00010000"; -- NOP
		memoria(6) <= x"00010000"; -- NOP
		
		--        Reg Y|Cod Op|
		-- memoria(0) <= X"001B0000";
--		memoria(0) <= x"00860000"; -- LDAA 00
--		memoria(1) <= x"00B70008"; -- STAA #0008 (SUMA)
--		memoria(2) <= x"00C60001"; -- LDAB 01		
--		memoria(3) <= x"00860003"; -- LDAA 03 (n)
--		memoria(4) <= x"00110000"; -- CBA 
--		memoria(5) <= x"00270013"; -- JB #0013 (si se cumple salta al final x"13"=19)
--		memoria(6) <= x"00010000"; -- NOP
--		memoria(7) <= x"00010000"; -- NOP
--		memoria(8) <= x"00010000"; -- NOP
--		memoria(9) <= x"00960008"; -- LDAA #0000 acceso directo a memoria
--		memoria(10) <= x"001B0000"; -- ABA
--		memoria(11) <= x"005c0000"; -- INCB
--		memoria(12) <= x"00B70008"; -- STAA #0008 (SUMA)
--		memoria(13) <= x"007E0003"; -- JMP al x"03"
--		memoria(14) <= x"00010000"; -- NOP
--		memoria(15) <= x"00010000"; -- NOP
--		memoria(16) <= x"00010000"; -- NOP
--		
--		memoria(19) <= x"00860000"; -- LDAA #0000 acceso directo a memoria
--		memoria(20) <= x"001B0000"; -- ABA
--		memoria(21) <= x"001B0000"; -- INCB
--		memoria(22) <= x"00D70009"; -- STAB #0009 (i)
--		memoria(23) <= x"001B0000"; -- ABA A <= A+B
--		memoria(24) <= x"007E0017"; -- JMP al x"17"
--		memoria(25) <= x"00010000"; -- NOP
--		memoria(26) <= x"00010000"; -- NOP
--		memoria(27) <= x"00010000"; -- NOP
		
		-- Funcion de la memoria
		process(direccion)
		begin			
			datos <= memoria(conv_integer(unsigned(direccion)));
		end process;
end Behavioral;
