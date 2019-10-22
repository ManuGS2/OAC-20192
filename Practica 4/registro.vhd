library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity registro is
    port (
		  clk	 : in std_logic;
		  rst  : in std_logic;
		  liga : in std_logic_vector(2 downto 0);
		  presente : out std_logic_vector(2 downto 0)
    );
end registro;
 
architecture behavioral of registro is

begin
	
	process (clk) begin
		if rising_edge(clk) then
			presente <= liga;
			if rst = '0' then
				presente <= "000";
			end if;
		end if;
	end process;
	
end behavioral;