library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity rom is
    port (
		  addr 	:	in  std_logic_vector(3 downto 0);
		  pl		:	in std_logic;
		  liga 	:	out std_logic_vector(3 downto 0);
		  sal	 	:	out std_logic_vector(3 downto 0);
		  prueba :  out std_logic_vector(1 downto 0);
		  mi	   :  out std_logic_vector(1 downto 0);
		  VF		:	out std_logic
    );
end rom;
 
architecture behavioral of rom is


    type memoria_rom is array (0 to 15) of std_logic_vector (12 downto 0);
    signal ROM : memoria_rom := (
        "0000000000011", "0000000000110", "0001000001000",
		  "0000100110100", "1011100000001", "1110100010011",
		  "0000000001100", "1110100001000", "0000000000001",
		  "1011100000000", "1110100010011", "0000000001010",
		  "1110100001000", "0110111010100", "1110110010000",
		  "1110100000000"
    );
	 
begin

	process (addr, pl) begin
	
		prueba <= ROM(conv_integer(addr))(12 downto 11);
		VF <= ROM(conv_integer(addr))(10);
		mi <= ROM(conv_integer(addr))(9 downto 8);
		sal <= ROM(conv_integer(addr))(3 downto 0);
		if pl = '0' then
			liga <= ROM(conv_integer(addr))(7 downto 4);
		else
			liga <= "ZZZZ";
		end if;
		
	end process;
	
end behavioral;