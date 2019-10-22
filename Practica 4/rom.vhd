library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity rom is
    port (
		  addr 	:	in std_logic_vector(2 downto 0);
		  A,B,C	:	in std_logic;
		  liga 	:	out std_logic_vector(2 downto 0);
		  prue	:  out std_logic_vector(1 downto 0);
		  sal	 	:	out std_logic_vector(4 downto 0)
    );
end rom;
 
architecture behavioral of rom is


    type memoria_rom is array (0 to 7) of std_logic_vector (17 downto 0);
    signal ROM : memoria_rom := (
        "010110010001110011", "110000100000000000",
		  "100011001100001000", "000101001000010000",
		  "110000000000001010", "000000000000000000",
		  "000000000000000000", "000000000000000000"
    );
	 
	 signal entrada : std_logic;
	 signal prueba  : std_logic_vector(1 downto 0);
begin

	process (addr, A,B,C) begin
	
		prueba <= ROM(conv_integer(addr))(17 downto 16);
		
		case prueba is
			when "00" => entrada <= A;
			when "01" => entrada <= B;
			when "10" => entrada <= C;
			when "11" => entrada <= '1';
			when others => entrada <= '0';
		end case;
		prue <= prueba;
		
		if entrada = '1' then
			sal <= ROM(conv_integer(addr))(4 downto 0);
			liga <= ROM(conv_integer(addr))(12 downto 10);
			
		else
			sal <= ROM(conv_integer(addr))(9 downto 5);
			liga <= ROM(conv_integer(addr))(15 downto 13);
		
		end if;
		
	end process;
end behavioral;