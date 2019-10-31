library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
Port ( 
	dir : in STD_LOGIC_VECTOR (11 downto 0);
	data : out STD_LOGIC_VECTOR (93 downto 0));
end memory;

architecture Behavioral of memory is

begin
	process(dir)
	begin
	
		-- DATA FORMAT
		-- |    PRUEBA    |VF| Ins |                LIGA                 |
		--  P4 P3 P2 P1 P0 VF I1 I0 L11 L10 L9 L8 L7 L6 L5 L4 L3 L2 L1 L0 nCRI EB1 EB0 nWB EA1 EA0 nWA selbus UPA9 UPA8 UPA7 UPA6 UPA5 UPA4 UPA3 UPA2 UPA1 UPA0 
		-- nOEUPA nDUPA selmux nEX2 nEX1 nEX0 X2 X1 X0 EnaY nERA2 nERA1 nERA0 RA2 RA1 RA0 nEAP2 nEAP1 nEAP0 AP2 AP1 AP0 nEPC2 nEPC1 nEPC0 PC2 PC1 PC0 nCBD nAS 
		-- nRW BD DINT HINT SET_IRQ SET_XIRQ B9 B8 B7 B6 B5 B4 B3 B2 B1 B0 CC CN CV CZ CI CH CX CS nHB ACCSEC

		-- Cadena por default: "00000" & "0" & "00" & "000000000000" & "10010010000000000011011100001110001110001110001110000000000000000000000010"
		
		--if(dir=    X"000") then data <= "00000" & "0" & "00" & "000000000000" & "10010010000000000011011100001110001110001110001110000000000000000000000010";
		--elsif(dir= X"001") then data <= "00000" & "0" & "00" & "000000000000" & "00000000000000000000000000000000000000000000000000000000000000000000000000"; 
		if(dir=    X"000") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010"; -- nCBD,nEPC2
		elsif(dir= X"001") then data <= "0000000000000000000000010010000000000011011100001110001110001110011010000000000000000000000010"; -- nCRI,nAS,PC0
		elsif(dir= X"002") then data <= "0000001000000000000010010010000000000011011100001110001110001110001110000000000000000000000010"; -- I1
		
		-- JE (Acceso directo)
		elsif(dir= X"270") then data <= "0000000000000000000010011110000100000011011100001110001110001110001110000000000000000000000010"; -- UPA6,EA0,EA1
		elsif(dir= X"271") then data <= "0000000000000000000010010010000000000000011100001011001110001110001110000000000000000000000010"; -- RA2,nERA1,nDUPA,nOEUPA
		elsif(dir= X"272") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010"; -- nEPC2,nCBD
		elsif(dir= X"273") then data <= "0000000000000000000010010010000000000011011100001100111110001110001010000000000000000000000010"; -- nAS,nERA0,RA1,RA0
		elsif(dir= X"274") then data <= "0000000000000000000010010010000000000011011100000110001110001110010110000000000000000000000010"; -- nERA2,nCBD,PC0
		elsif(dir= X"275") then data <= "1001000100100111011110010010000000000011011100001110001110001110001110000000000000000000000010"; -- prueba=18(Z), si vale 1 paso contiguo,MI=01, sino salta a x"277"=001001110111
		elsif(dir= X"276") then data <= "0000000000000000000010010010000000000011011100001000001110001001011110000000000000000000000010"; -- nEPC1,nEPC0,nERA1,nERA0,PC2,PC0
		elsif(dir= X"277") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010"; -- Salto condicional, Prueba=24(Vale 0), es un salto forzado a la direccion x"001" y nEPC1,nCBD
		
		-- CBA (Acceso inherente) N,Z,V,C
		elsif(dir= X"110") then data <= "0000000000000000000011111110001010000111111100001110001110001110001110000000000000000000000011"; -- EB1,EB0,EA1,EA0,UPA7,UPA5,UPA0,selmux,ACCSEC
		elsif(dir= X"111") then data <= "0000000000000000000010010010000000000001011100001110001110001110001110000000000000000000000010";
		elsif(dir= X"112") then data <= "0111111100000000000010010010000000000011011100001110001110001110001110000000000000001111000010"; -- cc,cv,cn,cz,Prueba=15(Int), MI=11
		elsif(dir= X"113") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010"; -- Salto condicional, Prueba=24(Vale 0), es un salto forzado a la direccion x"001" y PC=Pc+1,PC0,nCBD
		
		-- INCB (Acceso inherente)
		elsif(dir= X"5C0") then data <= "0000000000000000000011110010001000001111111100001110001110001110001110000000000000000000000011"; -- EB1,EB0,UPA7,UPA1,UPA0,selmux,ACCSEC
		elsif(dir= X"5C1") then data <= "0000000000000000000010100010000000000000011100001110001110001110001110000000000000000000000010"; -- EB0,nWB,nDUPA,nOEUPA
		elsif(dir= X"5C2") then data <= "0111111100000000000010010010000000000011011100001110001110001110001110000000000000000111000010"; -- CV,CN,CZ,Prueba=15(Int), MI=11
		elsif(dir= X"5C3") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010"; -- Salto condicional, Prueba=24(Vale 0), es un salto forzado a la direccion x"001" y nEPC1,nCBD
		
		-- LDAA (Acceso directo)
		elsif(dir= X"960") then data <= "0000000000000000000010011110000100000011011100001110001110001110001110000000000000000000000010"; -- UPA6,EA0,EA1
		elsif(dir= X"961") then data <= "0000000000000000000010010010000000000000011100001011001110001110001110000000000000000000000010"; -- RA2,nERA1,nDUPA,nOEUPA
		elsif(dir= X"962") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010"; -- nEPC2,nCBD
		elsif(dir= X"963") then data <= "0000000000000000000010010010000000000011011100001100111110001110001010000000000000000000000010"; -- nAS,nERA0,RA1,RA0
		elsif(dir= X"964") then data <= "0000000000000000000010010010000000000011011100000110001110001110010110000000000000000000000010"; -- nERA2,nCBD.PC0
		elsif(dir= X"965") then data <= "0000000000000000000010010100000000000011011100001110001110001110001010000000000000000000000010"; -- nAS,EA0,nWA
		elsif(dir= X"976") then data <= "0000000000000000000010010010000000000011011100001110001110001110001110000000010011000000000010";
		elsif(dir= X"967") then data <= "0111111100000000000010010010000000000011011100001110001110001110001110000000010011000111000010"; -- B6,B3,B2,CN,Cv,CZ,Prueba=15(Int), MI=11
		elsif(dir= X"968") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010"; -- Salto condicional, Prueba=24(Vale 0), es un salto forzado a la direccion x"001" y nEPC1,nCBD
		
		-- LDAB (Acceso directo)
		elsif(dir= X"D60") then data <= "0000000000000000000010011110000100000011011100001110001110001110001110000000000000000000000010"; -- UPA6,EA0,EA1
		elsif(dir= X"D61") then data <= "0000000000000000000010010010000000000000011100001011001110001110001110000000000000000000000010"; -- RA2,nERA1,nDUPA,nOEUPA
		elsif(dir= X"D62") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010"; -- nEPC2,nCBD
		elsif(dir= X"D63") then data <= "0000000000000000000010010010000000000011011100001100111110001110001010000000000000000000000010"; -- nAS,nERA0,RA1,RA0
		elsif(dir= X"D64") then data <= "0000000000000000000010010010000000000011011100000110001110001110010110000000000000000000000010"; -- nERA2,nCBD,PC0
		elsif(dir= X"D65") then data <= "0000000000000000000010100010000000000011011100001110001110001110001010000000000000000000000010"; -- nAS,EB0,nWB
		elsif(dir= X"976") then data <= "0000000000000000000010010010000000000011011100001110001110001110001110000000100101000000000010";
		elsif(dir= X"D67") then data <= "0111111100000000000010010010000000000011011100001110001110001110001110000000100101000111000010"; -- B7,B4,B2,CN,Cv,CZ,Prueba=15(Int), MI=11
		elsif(dir= X"D68") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010"; -- Salto condicional, Prueba=24(Vale 0), es un salto forzado a la direccion x"001" y nEPC1,nCBD
		
		-- STAA (Acceso directo)       
		elsif(dir= X"970") then data <= "0000000000000000000010011110000100000011011100001110001110001110001110000000000000000000000010"; -- UPA6,EA0,EA1
		elsif(dir= X"971") then data <= "0000000000000000000010010010000000000000011100001011001110001110001110000000000000000000000010"; -- RA2,nERA1,nDUPA,nOEUPA
		elsif(dir= X"972") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010"; -- nEPC2,nCBD
		elsif(dir= X"973") then data <= "0000000000000000000010010010000000000011011100001100111110001110001010000000000000000000000010"; -- nAS,nERA0,RA1,RA0
		elsif(dir= X"974") then data <= "0000000000000000000010010010000000000011011100000110001110001110010110000000000000000000000010"; -- nERA2,nCBD,PC0
		elsif(dir= X"975") then data <= "0000000000000000000010010110000000000011011100001110001110001110001000000000000000000000000010"; -- nRW,nAS,EA0
		elsif(dir= X"976") then data <= "0000000000000000000010010010000000000011011100001110001110001110001110000000010011000000000010";
		elsif(dir= X"977") then data <= "0111111100000000000010010010000000000011011100001110001110001110001110000000010011000111000010"; -- B6,B3,B2,CN,Cv,CZ,Prueba=15(Int), MI=11
		elsif(dir= X"978") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010"; -- Salto condicional, Prueba=24(Vale 0), es un salto forzado a la direccion x"001" y nEPC1,nCBD
		
		-- STAB (Acceso directo)
		elsif(dir= X"D70") then data <= "0000000000000000000010011110000100000011011100001110001110001110001110000000000000000000000010"; -- UPA6,EA0,EA1
		elsif(dir= X"D71") then data <= "0000000000000000000010010010000000000000011100001011001110001110001110000000000000000000000010"; -- RA2,nERA1,nDUPA,nOEUPA
		elsif(dir= X"D72") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010"; -- nEPC2,nCBD
		elsif(dir= X"D73") then data <= "0000000000000000000010010010000000000011011100001100111110001110001010000000000000000000000010"; -- nAS,nERA0,RA1,RA0
		elsif(dir= X"D74") then data <= "0000000000000000000010010010000000000011011100000110001110001110010110000000000000000000000010"; -- nERA2,nCBD,PC0
		elsif(dir= X"D75") then data <= "0000000000000000000010110010000000000011011100001110001110001110001000000000000000000000000010"; -- nRW,nAS,EB0
		elsif(dir= X"976") then data <= "0000000000000000000010010010000000000011011100001110001110001110001110000000100101000000000010";
		elsif(dir= X"D77") then data <= "0111111100000000000010010010000000000011011100001110001110001110001110000000100101000111000010"; -- B7,B4,B2,CN,Cv,CZ,Prueba=15(Int), MI=11
		elsif(dir= X"D78") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010"; -- Salto condicional, Prueba=24(Vale 0), es un salto forzado a la direccion x"001" y nEPC1,nCBD
		
		-- LDAA (Acceso inmediato)
		elsif(dir= X"860") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010"; -- nEPC2, nCBD
		elsif(dir= X"861") then data <= "0000000000000000000010010100000000000011011100001110001110001110011010000000000000000000000010"; -- PC0, EA0, nWA,nAS
		elsif(dir= X"862") then data <= "0000000000000000000010010010000000000011011100001110001110001110001110000000010011000000000010"; -- B6,B3,B2
		elsif(dir= X"863") then data <= "0111111100000000000010010010000000000011011100001110001110001110001110000000010011000111000010"; -- B6,B3,B2,CN,Cv,CZ,Prueba=15(Int), MI=11
		elsif(dir= X"864") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010"; -- Salto condicional, Prueba=24(Vale 0), es un salto forzado a la direccion x"001" y nEPC1,nCBD

		-- LDAB (Acceso inmediato)
		elsif(dir= X"C60") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010"; -- nEPC2, nCBD
		elsif(dir= X"C61") then data <= "0000000000000000000010100010000000000011011100001110001110001110011010000000000000000000000010"; -- PC0,nAS,EB0,nWB
		elsif(dir= X"862") then data <= "0000000000000000000010010010000000000011011100001110001110001110001110000000100101000000000010"; -- B7,B4,B2
		elsif(dir= X"C63") then data <= "0111111100000000000010010010000000000011011100001110001110001110001110000000100101000111000010"; -- B7,B4,B2,CN,Cv,CZ,Prueba=15(Int), MI=11
		elsif(dir= X"C64") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010"; -- Salto condicional, Prueba=24(Vale 0), es un salto forzado a la direccion x"001" y nEPC1,nCBD

		-- ABA A=A+B (inherente)
		elsif(dir= X"1B0") then data <= "0000000000000000000011111110000000000111111100001110001110001110001110000000000000000000000010";
		elsif(dir= X"1B1") then data <= "0111111100000000000010010100000000000000011100001110001110001110001110000000000000001111010010";
		elsif(dir= X"1B2") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010";

		-- JPM (Acceso extendido)
		elsif(dir= X"7E0") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010"; -- nEPC2,nCBD
		elsif(dir= X"7E1") then data <= "0000000000000000000010010010000000000011011100001011001110001110011011000000000000000000000010";
		elsif(dir= X"7E2") then data <= "0000000000000000000010010010000000000011011100001110001110000110000110000000000000000000000010"; -- nEPC2,nCBD
		elsif(dir= X"7E3") then data <= "0000000000000000000010010010000000000011011100001100111110001110011010000000000000000000000010";
		elsif(dir= X"7E4") then data <= "0111111100000000000010010010000000000011011100001000001110001001011110000000000000000000000010";
		elsif(dir= X"7E5") then data <= "1100000100000000000110010010000000000011011100001110001110000110000110000000000000000000000010";
				
		else data <= "0000000000000000000010010010000000000011011100001110001110001110001110000000000000000000000010"; -- Default
		end if;
	end process;
end Behavioral;