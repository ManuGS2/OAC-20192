library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity u_detencion is
	Port( 
            SelSrc    : in STD_LOGIC_VECTOR (2 downto 0);
            MemWE4    : in STD_LOGIC;
            PCWrite 	 : out STD_LOGIC := '1';
            IFIDWrite : out STD_LOGIC := '1';
            SelCtrl 	 : out STD_LOGIC := '0';
            SelD    	 : out STD_LOGIC:='0');
end u_detencion;

architecture Behavioral of u_detencion is

begin
	process (SelSrc,MemWE4) begin
		if SelSrc = "010" and MemWE4 = '1' then
			SelD <= '1';
			PCWrite <= '0';
			IFIDWrite <= '0';
			SelCtrl <= '1';

		elsif SelSrc = "100" and MemWE4 = '1' then
			SelD <= '1';
			PCWrite <= '0';
			IFIDWrite <= '0';
			SelCtrl <= '1';

		elsif SelSrc = "110" and MemWE4 = '1' then
			SelD <= '1';
			PCWrite <= '0';
			IFIDWrite <= '0';
			SelCtrl <= '1';

		else
			SelD <= '0';
			PCWrite <= '1';
			IFIDWrite <= '1';
			SelCtrl <= '0';
		end if;
	end process;

	
end Behavioral;
