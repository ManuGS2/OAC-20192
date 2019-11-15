library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity u_detencion is
	Port( 
            SelRegR : in STD_LOGIC_VECTOR (3 downto 0);
            SelRegWE3 : in STD_LOGIC_VECTOR (2 downto 0); -- ID/EX
            SelRegWE4 : in STD_LOGIC_VECTOR (2 downto 0); -- EX/WB
            SelSrc    : in STD_LOGIC_VECTOR (2 downto 0);
            MemWE4    : in STD_LOGIC;
            PCWrite : out STD_LOGIC := '1';
            IFIDWrite : out STD_LOGIC := '1';
            SelCtrl : out STD_LOGIC := '0';
            SelD    : out STD_LOGIC:='0');
end u_detencion;

architecture Behavioral of u_detencion is
begin
	process (SelRegR,SelRegWE3,SelRegWE4,SelSrc,MemWE4)
	begin
        if SelSrc = "010" and MemWE4 = '1' then
            PCWrite <= '0';
				IFIDWrite <= '0';
				SelCtrl <= '1';
            SelD <= '1';

        elsif SelSrc = "100" and MemWE4 = '1' then
            PCWrite <= '0';
				IFIDWrite <= '0';
				SelCtrl <= '1';
            SelD <= '1';

        elsif SelSrc = "110" and MemWE4 = '1' then
            PCWrite <= '0';
				IFIDWrite <= '0';
				SelCtrl <= '1';
            SelD <= '1';

        elsif SelSrc = "010" and MemWE4 = '0' then
            PCWrite <= '1';
				IFIDWrite <= '1';
				SelCtrl <= '0';
            SelD <= '0';

        elsif SelSrc = "100" and MemWE4 = '0' then
            PCWrite <= '1';
				IFIDWrite <= '1';
				SelCtrl <= '0';
            SelD <= '0';

        elsif SelSrc = "110" and MemWE4 = '0' then
            PCWrite <= '1';
				IFIDWrite <= '1';
				SelCtrl <= '0';
            SelD <= '0';

		elsif SelRegR = X"1" and (SelRegWE3 = "001" or SelRegWE4 = "100" or SelRegWE4 = "001" or SelRegWE3 = "100") then  
            PCWrite <= '0';
				IFIDWrite <= '0';
				SelCtrl <= '1';
            SelD <= '0';

		elsif SelRegR = X"2" and (SelRegWE3 = "010" or SelRegWE4 = "100" or SelRegWE4 = "010" or SelRegWE3 = "100") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';

        elsif SelRegR = X"3" and (SelRegWE3 = "011" or SelRegWE4 = "100" or SelRegWE4 = "011" or SelRegWE3 = "100") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';

        elsif SelRegR = X"4" and (SelRegWE3 = "001" or SelRegWE4 = "001") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';

        elsif SelRegR = X"5" and (SelRegWE3 = "100" or SelRegWE4 = "100") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';

        elsif SelRegR = X"6" and (SelRegWE3 = "001" or SelRegWE4 = "010" or SelRegWE4 = "001" or SelRegWE3 = "010") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';

        elsif SelRegR = X"7" and (SelRegWE3 = "001" or SelRegWE4 = "011" or SelRegWE4 = "001" or SelRegWE3 = "011") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';

        elsif SelRegR = X"8" and (SelRegWE3 = "101" or SelRegWE4 = "101") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';

        elsif SelRegR = X"9" and (SelRegWE3 = "010" or SelRegWE4 = "010") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';
        
        elsif SelRegR = X"A" and (SelRegWE3 = "011" or SelRegWE4 = "011") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';

        elsif SelRegR = X"B" and (SelRegWE3 = "110" or SelRegWE4 = "110") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';

        elsif SelRegR = X"C" and (SelRegWE3 = "001" or SelRegWE4 = "110" or SelRegWE4 = "001" or SelRegWE3 = "110") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';

        elsif SelRegR = X"D" and (SelRegWE3 = "100" or SelRegWE4 = "110" or SelRegWE4 = "100" or SelRegWE3 = "110") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';
        
        elsif SelRegR = X"E" and (SelRegWE3 = "010" or SelRegWE4 = "110" or SelRegWE4 = "010" or SelRegWE3 = "110") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';

        elsif SelRegR = X"F" and (SelRegWE3 = "011" or SelRegWE4 = "110" or SelRegWE4 = "011" or SelRegWE3 = "110") then  
            PCWrite <= '0';
            IFIDWrite <= '0';
            SelCtrl <= '1';
            SelD <= '0';

        else 
            PCWrite <= '1';
            IFIDWrite <= '1';
            SelCtrl <= '0';
            SelD <= '0';

		end if;
		
	end process;
end Behavioral;