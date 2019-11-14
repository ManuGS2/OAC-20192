library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_detencion is
	Port (
			selctrl: in std_logic;
			selregri : in STD_LOGIC_VECTOR (3 downto 0);
			sels1i : in STD_LOGIC;
			sri : in STD_LOGIC;
			cini : in STD_LOGIC;
			sels2i : in STD_LOGIC;
			seldatoi : in STD_LOGIC;
			selsrci : in STD_LOGIC_VECTOR (2 downto 0);
			seldiri : in STD_LOGIC_VECTOR(1 downto 0);
			selopi : in STD_LOGIC_VECTOR (3 downto 0);
			selresulti : in STD_LOGIC_VECTOR (1 downto 0);
			selci : in STD_LOGIC;
			cadji : in STD_LOGIC;
			selfalgsi : in STD_LOGIC_VECTOR (3 downto 0);
			selbranchi : in STD_LOGIC_VECTOR (2 downto 0);
			vfi : in STD_LOGIC;
			selregwi : in STD_LOGIC_VECTOR (2 downto 0);
			memwi : in STD_LOGIC;
			seldirwi : in STD_LOGIC_VECTOR (1 downto 0);
			selregro : out STD_LOGIC_VECTOR (3 downto 0);
			sels1o : out STD_LOGIC;
			sro : out STD_LOGIC;
			cino : out STD_LOGIC;
			sels2o : out STD_LOGIC;
			seldatoo : out STD_LOGIC;
			selsrco : out STD_LOGIC_VECTOR (2 downto 0);
			seldiro : out STD_LOGIC_VECTOR(1 downto 0);
			selopo : out STD_LOGIC_VECTOR (3 downto 0);
			selresulto : out STD_LOGIC_VECTOR (1 downto 0);
			selco : out STD_LOGIC;
			cadjo : out STD_LOGIC;
			selfalgso : out STD_LOGIC_VECTOR (3 downto 0);
			selbrancho : out STD_LOGIC_VECTOR (2 downto 0);
			vfo : out STD_LOGIC;
			selregwo : out STD_LOGIC_VECTOR (2 downto 0);
			memwo : out STD_LOGIC;
			seldirwo : out STD_LOGIC_VECTOR (1 downto 0));
end mux_detencion;

architecture Behavioral of mux_detencion is
begin
	process (selregri,sels1i,sri,cini,sels2i,seldatoi,selsrci,seldiri,selopi,selresulti,selci,cadji,selfalgsi,selbranchi,vfi,selregwi,memwi,seldirwi,selctrl)
	begin
		if(selctrl = '1') then
			selregro <= X"0";
			sels1o <= '0';
			sro <= '0';
			cino <= '0';
			sels2o <= '0';
			seldatoo <= '0';
			selsrco <= "000";
			seldiro <= "00";
			selopo <= X"0";
			selresulto <= "00";
			selco <= '0';
			cadjo <= '0';
			selfalgso <= X"0";
			selbrancho <= "000";
			vfo <= '1';
			selregwo <= "000";
			memwo <= '0';
			seldirwo <= "00";
		else
			selregro <= selregri;
			sels1o <= sels1i;
			sro <= sri;
			cino <= cini;
			sels2o <= sels2i;
			seldatoo <= seldatoi;
			selsrco <= selsrci;
			seldiro <= seldiri;
			selopo <= selopi;
			selresulto <= selresulti;
			selco <= selci;
			cadjo <= cadji;
			selfalgso <= selfalgsi;
			selbrancho <= selbranchi;
			vfo <= vfi;
			selregwo <= selregwi;
			memwo <= memwi;
			seldirwo <= seldirwi;
		end if;
	end process;
end Behavioral;