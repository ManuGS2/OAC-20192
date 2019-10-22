library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity rom is
    port (
		  addr 	:	in std_logic_vector(2 downto 0);
		  liga 	:	out std_logic_vector(2 downto 0);
		  sal	 	:	out std_logic_vector(7 downto 0);
		  prueba :  out std_logic_vector(1 downto 0);
		  VF		:	out std_logic
    );
end rom;
 
architecture behavioral of rom is


    type memoria_rom is array (0 to 7) of std_logic_vector (13 downto 0);
    signal ROM : memoria_rom := (
        "01110001111011", "00001110001000",
		  "10010000110001", "11100001010101",
		  "11101000000000", "00000000000000",
		  "00000000000000", "00000000000000"
    );
	 
begin

	process (addr) begin
	
		prueba <= ROM(conv_integer(addr))(13 downto 12);
		VF <= ROM(conv_integer(addr))(11);
		liga <= ROM(conv_integer(addr))(10 downto 8);
		sal <= ROM(conv_integer(addr))(7 downto 0);
		
	end process;
	
end behavioral;