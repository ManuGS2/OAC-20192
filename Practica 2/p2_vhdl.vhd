library ieee;
use ieee.std_logic_1164.all;

entity p2_vhdl is
	port (
		clk:	in std_logic;
		E:		in std_logic;
		S:		out std_logic
	);

end p2_vhdl;

architecture arqui of p2_vhdl is

-- Definimos los estados de nuestro sistema y los convertimos en tipo de dato
type edo is (A, B, C, D);
signal edo_actual, edo_sig: edo;


begin

	process (clk)
	begin
		if rising_edge(clk) then
			edo_actual <= edo_sig;
		end if;
	end process;
	
	process (E, edo_actual)
	begin
	
		case edo_actual is
			when A => 
				if E = '1' then
					edo_sig <= B;
				else
					edo_sig <= A;
				end if;
				
			when B =>
				if E = '1' then
					edo_sig <= C;
				else
					edo_sig <= A;
				end if;
				
			when C =>
				if E = '1' then
					edo_sig <= D;
				else
					edo_sig <= A;
				end if;
				
			when D =>
				if E = '1' then
					edo_sig <= D;
				else
					edo_sig <= A;
				end if;
				
		end case;
		
	end process;
	
	S <= '1' when (edo_actual = D) else '0';

end arqui;