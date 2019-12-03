library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_regs is
	Port (  selregr : in STD_LOGIC_VECTOR(3 downto 0);
			  ACCA : in STD_LOGIC_VECTOR(15 downto 0);
			  ACCB : in STD_LOGIC_VECTOR(15 downto 0);
			  IX : in STD_LOGIC_VECTOR(15 downto 0);
			  IY : in STD_LOGIC_VECTOR(15 downto 0);
			  SP : in STD_LOGIC_VECTOR(15 downto 0);
			  AUX : in STD_LOGIC_VECTOR(15 downto 0);
			  selregw: in STD_LOGIC_VECTOR(2 downto 0);
			  datow: in STD_LOGIC_VECTOR(15 downto 0);
			  D1  : out STD_LOGIC_VECTOR(15 downto 0);
			  D2  : out STD_LOGIC_VECTOR(15 downto 0));
end mux_regs;

architecture Behavioral of mux_regs is
begin
	process (selregr, ACCA, ACCB, IX, IY, SP, AUX,datow)
	begin		
		if selregr = "0001" and selregw = "001"  then
			D1 <= datow;
			D2 <= ACCB;
		elsif selregr = "0001" and selregw = "100" then
			D1 <= ACCA;
			D2 <= datow;
		elsif selregr = "0010" and selregw = "100" then
			D1 <= datow;
			D2 <= IX;
		elsif selregr = "0010" and selregw = "010" then
			D1 <= ACCB;
			D2 <= datow;
		elsif selregr = "0011" and selregw = "100" then
			D1 <= datow;
			D2 <= IY;
		elsif selregr = "0011" and selregw = "011" then
			D1 <= ACCB;
			D2 <= datow;
		elsif selregr = "0100" and selregw = "001" then
			D1 <= datow;
			D2 <= x"0000";
		elsif selregr = "0101" and selregw = "100" then
			D1 <= datow;
			D2 <= x"0000";
		elsif selregr = "0110" and selregw = "001" then
			D1 <= datow;
			D2 <= IX;
		elsif selregr = "0110" and selregw = "010" then
			D1 <= ACCA;
			D2 <= datow;
		elsif selregr = "0111" and selregw = "001" then
			D1 <= datow;
			D2 <= IY;
		elsif selregr = "0111" and selregw = "011" then
			D1 <= ACCA;
			D2 <= datow;
		elsif selregr = "1000" and selregw = "101" then
			D1 <= datow;
			D2 <= x"0000";
		elsif selregr = "1001" and selregw = "010" then
			D1 <= x"0000";
			D2 <= datow;
		elsif selregr = "1010" and selregw = "011" then
			D1 <= x"0000";
			D2 <= datow;
		elsif selregr = "1011" and selregw = "110" then
			D1 <= x"0000";
			D2 <= datow;
		elsif selregr = "1100" and selregw = "001" then
			D1 <= datow;
			D2 <= SP;
		elsif selregr = "1100" and selregw = "110" then
			D1 <= ACCA;
			D2 <= datow;
		elsif selregr = "1101" and selregw = "100" then
			D1 <= datow;
			D2 <= SP;
		elsif selregr = "1101" and selregw = "110" then
			D1 <= ACCB;
			D2 <= datow;
		elsif selregr = "1110" and selregw = "010" then
			D1 <= datow;
			D2 <= SP;
		elsif selregr = "1110" and selregw = "110" then
			D1 <= IX;
			D2 <= datow;
		elsif selregr = "1111" and selregw = "011" then
			D1 <= datow;
			D2 <= SP;
		elsif selregr = "1111" and selregw = "110" then
			D1 <= IY;
			D2 <= datow;
			
		else
			if selregr = "0000" then 
				D1 <= X"0000";
				D2 <= X"0000";
			elsif selregr = "0001" then 
				D1 <= ACCA;
				D2 <= ACCB;
			elsif selregr = "0010" then 
				D1 <= ACCB;
				D2 <= IX;
			elsif selregr = "0011" then 
				D1 <= ACCB;
				D2 <= IY;
			elsif selregr = "0100" then 
				D1 <= ACCA;
				D2 <= X"0000";
			elsif selregr = "0101" then 
				D1 <= ACCB;
				D2 <= X"0000";
			elsif selregr = "0110" then 
				D1 <= ACCA;
				D2 <= IX;
			elsif selregr = "0111" then 
				D1 <= ACCA;
				D2 <= IY;
			elsif selregr = "1000" then 
				D1 <= AUX;
				D2 <= X"0000";
			elsif selregr = "1001" then 
				D1 <= X"0000";
				D2 <= IX;
			elsif selregr = "1010" then 
				D1 <= X"0000";
				D2 <= IY;
			elsif selregr = "1011" then 
				D1 <= X"0000";
				D2 <= SP;
			elsif selregr = "1100" then 
				D1 <= ACCA;
				D2 <= SP;
			elsif selregr = "1101" then 
				D1 <= ACCB;
				D2 <= SP;
			elsif selregr = "1110" then 
				D1 <= IX;
				D2 <= SP;
			elsif selregr = "1111" then 
				D1 <= IY;
				D2 <= SP;
			end if;
		end if;
	end process;
end Behavioral;