library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity regPC is
    port (
		  clk, rst : in std_logic;
		  presen   : in std_logic_vector(3 downto 0);
		  presente : out std_logic_vector(3 downto 0)
    );
end regPC;
 
architecture behavioral of regPC is

begin
	
	process (clk) begin
	
		if rising_edge(clk) then
		
			presente <= presen;
			if rst = '0' then
				presente <= "0000";
			end if;
		end if;
		
	end process;
	
end behavioral;