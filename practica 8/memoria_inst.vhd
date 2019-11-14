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
		
		memoria(0) <= x"00C60002"; -- LDAB #0002
		memoria(1) <= x"00860000"; -- LDAA #0000
		memoria(2) <= x"00010000"; -- NOP
		memoria(3) <= x"001B0000"; -- ABA A <= A+B
		memoria(4) <= x"007E0003"; -- JMP al x"03"
		memoria(5) <= x"00010000"; -- NOP
		memoria(6) <= x"00010000"; -- NOP
		
		--        Reg Y|Cod Op|
		-- memoria(0) <= X"001B0000";
--		memoria(0) <= x"00860000"; -- LDAA #0000
--		memoria(1) <= x"00C60002"; -- LDAB #0002
--		memoria(2) <= x"00010000"; -- NOP
--		memoria(3) <= x"00010000"; -- NOP
--		memoria(4) <= x"001B0000"; -- ABA A <= A+B
--		memoria(5) <= x"007E0004"; -- JMP al x"02"
--		memoria(6) <= x"00010000"; -- NOP
--		memoria(7) <= x"00010000"; -- NOP
--		memoria(8) <= x"00010000"; -- NOP
		
		
		
		-- Funcion de la memoria
		process(direccion)
		begin			
			datos <= memoria(conv_integer(unsigned(direccion)));
		end process;
end Behavioral;
