library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity u_control is
	Port( inst : in STD_LOGIC_VECTOR (15 downto 0);
			selregr : out STD_LOGIC_VECTOR (3 downto 0);
			sels1 : out STD_LOGIC;
			sr : out STD_LOGIC;
			cin : out STD_LOGIC;
			sels2 : out STD_LOGIC;
			seldato : out STD_LOGIC;
			selsrc : out STD_LOGIC_VECTOR (2 downto 0);
			seldir : out STD_LOGIC_VECTOR(1 downto 0);
			selop : out STD_LOGIC_VECTOR (3 downto 0);
			selresult : out STD_LOGIC_VECTOR (1 downto 0);
			selc : out STD_LOGIC;
			cadj : out STD_LOGIC;
			selfalgs : out STD_LOGIC_VECTOR (3 downto 0);
			selbranch : out STD_LOGIC_VECTOR (2 downto 0);
			vf : out STD_LOGIC;
			selregw : out STD_LOGIC_VECTOR (2 downto 0);
			memw : out STD_LOGIC;
			seldirw : out STD_LOGIC_VECTOR (1 downto 0));
end u_control;

architecture Behavioral of u_control is
begin
	process (inst)
	begin		
		if inst = X"001B" then  -- ABA
			selregr <= X"1";
			sels1 <= '0';
			sr <= '1';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "001";
			seldir <= "00";
			selop <= X"1";
			selresult <= "01";
			selc <= '1';
			cadj <= '0';
			selfalgs <= X"2";
			selbranch <= "000";
			vf <= '1';
			selregw <= "001";
			memw <= '0';
			seldirw <= "00";
			
		elsif inst = X"0086" then -- LDAA #valor(16 bits)
			selregr <= X"0";
			sels1 <= '0';
			sr <= '1';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "011";
			seldir <= "00";
			selop <= X"4";
			selresult <= "01";
			selc <= '1';
			cadj <= '0';
			selfalgs <= X"1";
			selbranch <= "000";
			vf <= '1';
			selregw <= "001";
			memw <= '0';
			seldirw <= "00";
			
		elsif inst = X"00C6" then -- LDAB #valor(16 bits)
			selregr <= X"0";
			sels1 <= '0';
			sr <= '1';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1';
			selsrc <= "011";
			seldir <= "00";
			selop <= X"4";
			selresult <= "01";
			selc <= '1';
			cadj <= '0';
			selfalgs <= X"1";
			selbranch <= "000";
			vf <= '1';
			selregw <= "100";
			memw <= '0';
			seldirw <= "00";
			
		elsif inst = X"007E" then -- JMP #direccion(16 bits)
			selregr <= X"0"; -- D1 y D2 = x"0000"
			sels1 <= '0';
			sr <= '0';
			cin <= '0';
			sels2 <= '0';
			seldato <= '1'; -- D5 = inst[15:0]
			selsrc <= "011"; -- OP1=D1 y OP2=D5
			seldir <= "00"; -- D3 = 0
			selop <= X"4";   -- resultUPA = OP1 or OP2
			selresult <= "01"; -- datow = ResultUPA, dirw=d3
			selc <= '0';  -- Accarreo = Cadj
			cadj <= '0';
			selfalgs <= X"0"; -- No hace nada con las banderas
			selbranch <= "000";  -- branch <= vf xnor '0';
			vf <= '0'; -- Queremos que branch = '1' para que tome la sig dir sea datoW	
			selregw <= "000"; -- No se escribe en ningun registro 
			memw <= '0';
			seldirw <= "00";
			
		elsif inst = X"0001" then -- NOP
			selregr <= X"0";
			sels1 <= '0';
			sr <= '0';
			cin <= '0';
			sels2 <= '0';
			seldato <= '0';
			selsrc <= "000";
			seldir <= "00";
			selop <= X"0";
			selresult <= "00";
			selc <= '0';
			cadj <= '0';
			selfalgs <= X"0";
			selbranch <= "000";
			vf <= '1';
			selregw <= "000";
			memw <= '0';
			seldirw <= "00";

		end if;
		
		
	end process;
end Behavioral;
