library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity u_anticipacion is
	Port( 
			SelRegR : in STD_LOGIC_VECTOR (3 downto 0);
			SelRegWE4 : in STD_LOGIC_VECTOR (2 downto 0);
			SelA : out STD_LOGIC;
			SelB : out STD_LOGIC);
end u_anticipacion;

architecture Behavioral of u_anticipacion is
begin
	process (SelRegR,SelRegWE4)
	begin		
		SelA <= '0';
		SelB <= '0';
--		if SelRegR = X"1" and SelRegWE4 = "001" then  
--            SelA <= '1';
--            SelB <= '0';
--
--		elsif SelRegR = X"1" and SelRegWE4 = "100" then  
--            SelA <= '0';
--            SelB <= '1';
--
--        elsif SelRegR = X"2" and SelRegWE4 = "100" then  
--            SelA <= '1';
--            SelB <= '0';
--
--        elsif SelRegR = X"2" and SelRegWE4 = "010" then  
--            SelA <= '0';
--            SelB <= '1';
--
--        elsif SelRegR = X"3" and SelRegWE4 = "100" then  
--            SelA <= '1';
--            SelB <= '0';
--
--        elsif SelRegR = X"3" and SelRegWE4 = "011" then  
--            SelA <= '0';
--            SelB <= '1';
--
--        elsif SelRegR = X"4" and SelRegWE4 = "001" then  
--            SelA <= '1';
--            SelB <= '0';
--        
--        elsif SelRegR = X"5" and SelRegWE4 = "100" then  
--            SelA <= '1';
--            SelB <= '0';
--
--        elsif SelRegR = X"6" and SelRegWE4 = "001" then  
--            SelA <= '1';
--            SelB <= '0';
--
--        elsif SelRegR = X"6" and SelRegWE4 = "010" then  
--            SelA <= '0';
--            SelB <= '1';
--           
--        elsif SelRegR = X"7" and SelRegWE4 = "001" then  
--            SelA <= '1';
--            SelB <= '0';
--
--        elsif SelRegR = X"7" and SelRegWE4 = "011" then  
--            SelA <= '0';
--            SelB <= '1';
--
--        elsif SelRegR = X"8" and SelRegWE4 = "101" then  
--            SelA <= '1';
--            SelB <= '0';
--
--        elsif SelRegR = X"9" and SelRegWE4 = "010" then  
--            SelA <= '0';
--            SelB <= '1';
--
--        elsif SelRegR = X"A" and SelRegWE4 = "011" then  
--            SelA <= '0';
--            SelB <= '1';
--
--        elsif SelRegR = X"B" and SelRegWE4 = "110" then  
--            SelA <= '0';
--            SelB <= '1';
--
--        elsif SelRegR = X"C" and SelRegWE4 = "001" then  
--            SelA <= '1';
--            SelB <= '0';
--
--        elsif SelRegR = X"C" and SelRegWE4 = "110" then  
--            SelA <= '0';
--            SelB <= '1';
--
--        elsif SelRegR = X"D" and SelRegWE4 = "100" then  
--            SelA <= '1';
--            SelB <= '0';
--
--        elsif SelRegR = X"D" and SelRegWE4 = "110" then  
--            SelA <= '0';
--            SelB <= '1';
--           
--        elsif SelRegR = X"E" and SelRegWE4 = "010" then  
--            SelA <= '1';
--            SelB <= '0';
--
--        elsif SelRegR = X"E" and SelRegWE4 = "110" then  
--            SelA <= '0';
--            SelB <= '1';
--
--        elsif SelRegR = X"F" and SelRegWE4 = "011" then  
--            SelA <= '1';
--            SelB <= '0';
--
--        elsif SelRegR = X"F" and SelRegWE4 = "110" then  
--            SelA <= '0';
--            SelB <= '1';
--
--        else
--            SelA <= '0';
--            SelB <= '0';
--		end if;
		
	end process;
end Behavioral;
