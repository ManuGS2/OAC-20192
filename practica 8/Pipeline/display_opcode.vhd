library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
entity display_opcode is
    Port ( 
			  clk, reset: in STD_LOGIC;
           codigo : in std_logic_vector(15 downto 0);
           first_digit : out STD_LOGIC_VECTOR (6 downto 0);
			  second_digit : out STD_LOGIC_VECTOR (6 downto 0);
			  third_digit : out STD_LOGIC_VECTOR (6 downto 0);
			  fourth_digit : out STD_LOGIC_VECTOR (6 downto 0));
end display_opcode;

architecture Behavioral of display_opcode is

signal first_value: STD_LOGIC_VECTOR (3 downto 0);
signal second_value: STD_LOGIC_VECTOR (3 downto 0);
signal third_value: STD_LOGIC_VECTOR (3 downto 0);
signal fourth_value: STD_LOGIC_VECTOR (3 downto 0);

begin
	
	process(clk,reset)
	begin 
		 if(reset='0') then
			  first_value <= (others => '0');
			  second_value <= (others => '0');
			  third_value <= (others => '0');
			  fourth_value <= (others => '0');
		 elsif(rising_edge(clk)) then
			  first_value <= codigo(3 downto 0);
			  second_value <= codigo(7 downto 4);
			  third_value <= codigo(11 downto 8);
			  fourth_value <= codigo(15 downto 12);
		 end if;
	end process;
	
	process(first_value,second_value,third_value,fourth_value)
	begin
		 case first_value is
			 when "0000" => first_digit <= "0000001"; -- "0"     
			 when "0001" => first_digit <= "1001111"; -- "1" 
			 when "0010" => first_digit <= "0010010"; -- "2" 
			 when "0011" => first_digit <= "0000110"; -- "3" 
			 when "0100" => first_digit <= "1001100"; -- "4" 
			 when "0101" => first_digit <= "0100100"; -- "5" 
			 when "0110" => first_digit <= "0100000"; -- "6" 
			 when "0111" => first_digit <= "0001111"; -- "7" 
			 when "1000" => first_digit <= "0000000"; -- "8"     
			 when "1001" => first_digit <= "0000100"; -- "9" 
			 when "1010" => first_digit <= "0000010"; -- a

			 when "1011" => first_digit <= "1100000"; -- b
			 when "1100" => first_digit <= "0110001"; -- C
			 when "1101" => first_digit <= "1000010"; -- d
			 when "1110" => first_digit <= "0110000"; -- E
			 when "1111" => first_digit <= "0111000"; -- F
		 end case;
		 
		 case second_value is
			 when "0000" => second_digit <= "0000001"; -- "0"     
			 when "0001" => second_digit <= "1001111"; -- "1" 
			 when "0010" => second_digit <= "0010010"; -- "2" 
			 when "0011" => second_digit <= "0000110"; -- "3" 
			 when "0100" => second_digit <= "1001100"; -- "4" 
			 when "0101" => second_digit <= "0100100"; -- "5" 
			 when "0110" => second_digit <= "0100000"; -- "6" 
			 when "0111" => second_digit <= "0001111"; -- "7" 
			 when "1000" => second_digit <= "0000000"; -- "8"     
			 when "1001" => second_digit <= "0000100"; -- "9" 
			 when "1010" => second_digit <= "0000010"; -- a

			 when "1011" => second_digit <= "1100000"; -- b
			 when "1100" => second_digit <= "0110001"; -- C
			 when "1101" => second_digit <= "1000010"; -- d
			 when "1110" => second_digit <= "0110000"; -- E
			 when "1111" => second_digit <= "0111000"; -- F
		 end case;
		 
		 case third_value is
			 when "0000" => third_digit <= "0000001"; -- "0"     
			 when "0001" => third_digit <= "1001111"; -- "1" 
			 when "0010" => third_digit <= "0010010"; -- "2" 
			 when "0011" => third_digit <= "0000110"; -- "3" 
			 when "0100" => third_digit <= "1001100"; -- "4" 
			 when "0101" => third_digit <= "0100100"; -- "5" 
			 when "0110" => third_digit <= "0100000"; -- "6" 
			 when "0111" => third_digit <= "0001111"; -- "7" 
			 when "1000" => third_digit <= "0000000"; -- "8"     
			 when "1001" => third_digit <= "0000100"; -- "9" 
			 when "1010" => third_digit <= "0000010"; -- a

			 when "1011" => third_digit <= "1100000"; -- b
			 when "1100" => third_digit <= "0110001"; -- C
			 when "1101" => third_digit <= "1000010"; -- d
			 when "1110" => third_digit <= "0110000"; -- E
			 when "1111" => third_digit <= "0111000"; -- F
		 end case;
		 
		 case fourth_value is
			 when "0000" => fourth_digit <= "0000001"; -- "0"     
			 when "0001" => fourth_digit <= "1001111"; -- "1" 
			 when "0010" => fourth_digit <= "0010010"; -- "2" 
			 when "0011" => fourth_digit <= "0000110"; -- "3" 
			 when "0100" => fourth_digit <= "1001100"; -- "4" 
			 when "0101" => fourth_digit <= "0100100"; -- "5" 
			 when "0110" => fourth_digit <= "0100000"; -- "6" 
			 when "0111" => fourth_digit <= "0001111"; -- "7" 
			 when "1000" => fourth_digit <= "0000000"; -- "8"     
			 when "1001" => fourth_digit <= "0000100"; -- "9" 
			 when "1010" => fourth_digit <= "0000010"; -- a

			 when "1011" => fourth_digit <= "1100000"; -- b
			 when "1100" => fourth_digit <= "0110001"; -- C
			 when "1101" => fourth_digit <= "1000010"; -- d
			 when "1110" => fourth_digit <= "0110000"; -- E
			 when "1111" => fourth_digit <= "0111000"; -- F
		 end case;
		 
	end process;

end Behavioral;
