library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity rom is
    port (
		  addr : in std_logic_vector(5 downto 0);
		  sal : out std_logic_vector(4 downto 0);
		  liga : out std_logic_vector(2 downto 0)
    );
end rom;
 
architecture behavioral of rom is


    type memoria_rom is array (0 to 63) of std_logic_vector (7 downto 0);
    signal ROM : memoria_rom := (
        x"6B", x"6B", x"39", x"39", x"6B", x"6B", x"39", x"39", -- Fila con datos 0 a 7
        x"40", x"40", x"40", x"40", x"40", x"40", x"40", x"40", -- Fila con datos 8 a 15
        x"29", x"88", x"29", x"88", x"29", x"88", x"29", x"88", -- Fila con datos 16 a 23
        x"50", x"50", x"50", x"50", x"90", x"90", x"90", x"90", -- Fila con datos 24 a 31
        x"0A", x"0A", x"0A", x"0A", x"0A", x"0A", x"0A", x"0A", -- Fila con datos 32 a 39
        x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- Fila con datos 40 a 47
        x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- Fila con datos 48 a 55
        x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00" -- Fila con datos 55 a 63
    );
begin
	sal <= ROM(conv_integer(addr))(4 downto 0);
	liga <= ROM(conv_integer(addr))(7 downto 5);
end behavioral;