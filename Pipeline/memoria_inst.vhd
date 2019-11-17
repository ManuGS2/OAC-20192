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
		
--		memoria(0) <= x"00C60002"; -- LDAB #0002
--		memoria(1) <= x"00860000"; -- LDAA #0000
--		memoria(2) <= x"001B0000"; -- ABA A <= A+B
--		memoria(3) <= x"007E0002"; -- JMP al x"03"
--		memoria(4) <= x"00010000"; -- NOP
--		memoria(5) <= x"00010000"; -- NOP
		
--		memoria(0) <= x"00860005"; -- LDAA 05
--		memoria(1) <= x"00C60003"; -- LDAB 03
--		memoria(2) <= x"00B70000"; -- STAA #0000 (SUMA)
--		memoria(3) <= x"00D70001"; -- STAB #0001 (i)
--		memoria(4) <= x"00010000"; -- NOP
--		memoria(3) <= x"00D70001"; -- STAB #0001 (i)
--		memoria(4) <= x"00C60001"; -- 
--		memoria(5) <= x"00860004"; -- NOP
--		memoria(6) <= x"00D70001"; -- NOP	
--		memoria(7) <= x"00B70000"; -- STAB #0001 (i)
--		memoria(8) <= x"00D70001"; -- NOP
--		memoria(9) <= x"00010000"; -- NOP
--		memoria(10) <= x"00960000"; -- LDAA #0000
--		memoria(11) <= x"00C60007"; -- LDAB 01
--		memoria(12) <= x"00010000"; -- NOP
--		memoria(13) <= x"00010000"; -- NOP
--		memoria(14) <= x"00C60003"; -- LDAB 01
--		memoria(15) <= x"00010000"; -- NOP
--		memoria(16) <= x"00010000"; -- NOP
		
		--        Reg Y|Cod Op|
		-- memoria(0) <= X"001B0000";
		memoria(0) <= x"00860000"; -- LDAA 00
		memoria(1) <= x"00B70000"; -- STAA #0002 (SUMA)
		memoria(2) <= x"00C60001"; -- LDAB 01		
		memoria(3) <= x"00860001"; -- LDAA 03 (n)
		memoria(4) <= x"00110000"; -- CBA 
		memoria(5) <= x"00270014"; -- JB #0014 (si se cumple salta al final x"14"=20)
		memoria(6) <= x"00010000"; -- NOP
		memoria(7) <= x"00010000"; -- NOP
		memoria(8) <= x"00010000"; -- NOP
		memoria(9) <= x"00960000"; -- LDAA #0002
		memoria(10) <= x"001B0000"; -- ABA
		memoria(11) <= x"005c0000"; -- INCB
		memoria(12) <= x"00B70000"; -- STAA #0002 (SUMA)
		memoria(13) <= x"007E0003"; -- JMP al x"03"
		memoria(14) <= x"00010000"; -- NOP
		memoria(15) <= x"00010000"; -- NOP
		memoria(16) <= x"00010000"; -- NOP
		
		
		memoria(20) <= x"00D70001"; -- STAB #0003 (i)		
		memoria(21) <= x"00C60002"; -- LDAB #0002
		memoria(22) <= x"00860000"; -- LDAA #0000
		memoria(23) <= x"001B0000"; -- ABA A <= A+B
		memoria(24) <= x"007E0017"; -- JMP al x"03"
		memoria(25) <= x"00010000"; -- NOP
		memoria(26) <= x"00010000"; -- NOP
		memoria(27) <= x"00010000"; -- NOP
		
		-- Funcion de la memoria
		process(direccion)
		begin			
			datos <= memoria(conv_integer(unsigned(direccion)));
		end process;
end Behavioral;
