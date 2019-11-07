-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/06/2019 18:56:13"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pipeline IS
    PORT (
	n : OUT std_logic;
	clk : IN std_logic;
	RESET : IN std_logic;
	z : OUT std_logic;
	v : OUT std_logic;
	c : OUT std_logic;
	h : OUT std_logic;
	i : OUT std_logic;
	clk_out : OUT std_logic;
	disp1 : OUT std_logic_vector(6 DOWNTO 0);
	sw : IN std_logic;
	disp2 : OUT std_logic_vector(6 DOWNTO 0);
	disp3 : OUT std_logic_vector(6 DOWNTO 0);
	disp4 : OUT std_logic_vector(6 DOWNTO 0);
	disp5 : OUT std_logic_vector(6 DOWNTO 0);
	disp6 : OUT std_logic_vector(6 DOWNTO 0)
	);
END pipeline;

-- Design Ports Information
-- n	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[4]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[6]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[5]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[4]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[5]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[4]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp4[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[6]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[5]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[4]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp5[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[6]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[5]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp6[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipeline IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_h : std_logic;
SIGNAL ww_i : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sw : std_logic;
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp6 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|inst3|vi~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|opres[16]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|div~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \n~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \h~output_o\ : std_logic;
SIGNAL \i~output_o\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \disp1[6]~output_o\ : std_logic;
SIGNAL \disp1[5]~output_o\ : std_logic;
SIGNAL \disp1[4]~output_o\ : std_logic;
SIGNAL \disp1[3]~output_o\ : std_logic;
SIGNAL \disp1[2]~output_o\ : std_logic;
SIGNAL \disp1[1]~output_o\ : std_logic;
SIGNAL \disp1[0]~output_o\ : std_logic;
SIGNAL \disp2[6]~output_o\ : std_logic;
SIGNAL \disp2[5]~output_o\ : std_logic;
SIGNAL \disp2[4]~output_o\ : std_logic;
SIGNAL \disp2[3]~output_o\ : std_logic;
SIGNAL \disp2[2]~output_o\ : std_logic;
SIGNAL \disp2[1]~output_o\ : std_logic;
SIGNAL \disp2[0]~output_o\ : std_logic;
SIGNAL \disp3[6]~output_o\ : std_logic;
SIGNAL \disp3[5]~output_o\ : std_logic;
SIGNAL \disp3[4]~output_o\ : std_logic;
SIGNAL \disp3[3]~output_o\ : std_logic;
SIGNAL \disp3[2]~output_o\ : std_logic;
SIGNAL \disp3[1]~output_o\ : std_logic;
SIGNAL \disp3[0]~output_o\ : std_logic;
SIGNAL \disp4[6]~output_o\ : std_logic;
SIGNAL \disp4[5]~output_o\ : std_logic;
SIGNAL \disp4[4]~output_o\ : std_logic;
SIGNAL \disp4[3]~output_o\ : std_logic;
SIGNAL \disp4[2]~output_o\ : std_logic;
SIGNAL \disp4[1]~output_o\ : std_logic;
SIGNAL \disp4[0]~output_o\ : std_logic;
SIGNAL \disp5[6]~output_o\ : std_logic;
SIGNAL \disp5[5]~output_o\ : std_logic;
SIGNAL \disp5[4]~output_o\ : std_logic;
SIGNAL \disp5[3]~output_o\ : std_logic;
SIGNAL \disp5[2]~output_o\ : std_logic;
SIGNAL \disp5[1]~output_o\ : std_logic;
SIGNAL \disp5[0]~output_o\ : std_logic;
SIGNAL \disp6[6]~output_o\ : std_logic;
SIGNAL \disp6[5]~output_o\ : std_logic;
SIGNAL \disp6[4]~output_o\ : std_logic;
SIGNAL \disp6[3]~output_o\ : std_logic;
SIGNAL \disp6[2]~output_o\ : std_logic;
SIGNAL \disp6[1]~output_o\ : std_logic;
SIGNAL \disp6[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|cuenta~11_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|cuenta~10_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|cuenta~12_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|cuenta~13_combout\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|cuenta~14_combout\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|cuenta~15_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst5|Add0~33\ : std_logic;
SIGNAL \inst5|Add0~34_combout\ : std_logic;
SIGNAL \inst5|cuenta~16_combout\ : std_logic;
SIGNAL \inst5|Add0~35\ : std_logic;
SIGNAL \inst5|Add0~36_combout\ : std_logic;
SIGNAL \inst5|Add0~37\ : std_logic;
SIGNAL \inst5|Add0~38_combout\ : std_logic;
SIGNAL \inst5|cuenta~17_combout\ : std_logic;
SIGNAL \inst5|Add0~39\ : std_logic;
SIGNAL \inst5|Add0~40_combout\ : std_logic;
SIGNAL \inst5|cuenta~18_combout\ : std_logic;
SIGNAL \inst5|Add0~41\ : std_logic;
SIGNAL \inst5|Add0~42_combout\ : std_logic;
SIGNAL \inst5|cuenta~19_combout\ : std_logic;
SIGNAL \inst5|Add0~43\ : std_logic;
SIGNAL \inst5|Add0~44_combout\ : std_logic;
SIGNAL \inst5|cuenta~20_combout\ : std_logic;
SIGNAL \inst5|Add0~45\ : std_logic;
SIGNAL \inst5|Add0~46_combout\ : std_logic;
SIGNAL \inst5|cuenta~21_combout\ : std_logic;
SIGNAL \inst5|Add0~47\ : std_logic;
SIGNAL \inst5|Add0~48_combout\ : std_logic;
SIGNAL \inst5|Add0~49\ : std_logic;
SIGNAL \inst5|Add0~50_combout\ : std_logic;
SIGNAL \inst5|cuenta~22_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Equal0~7_combout\ : std_logic;
SIGNAL \inst5|div~0_combout\ : std_logic;
SIGNAL \inst5|div~feeder_combout\ : std_logic;
SIGNAL \inst5|div~q\ : std_logic;
SIGNAL \inst5|div~clkctrl_outclk\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst|inst3|SALIDA[0]~6_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[2]~11\ : std_logic;
SIGNAL \inst|inst3|SALIDA[3]~12_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~4_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~2_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal3~1_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~9_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~14_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~8_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|inst206|selregr[3]~0_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~11_combout\ : std_logic;
SIGNAL \inst2|inst107|selregw[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~13_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~12_combout\ : std_logic;
SIGNAL \inst2|inst107|selregw[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|inst10|selop[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~5_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[2]~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|Mux30~0_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|opres[13]~27_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|opres[9]~19_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|opres[7]~15_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~9\ : std_logic;
SIGNAL \inst2|inst|Add0~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[4]~9_combout\ : std_logic;
SIGNAL \inst2|inst|opres[4]~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~2_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~2clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~11\ : std_logic;
SIGNAL \inst2|inst|Add0~12_combout\ : std_logic;
SIGNAL \inst2|inst|opres[5]~11_combout\ : std_logic;
SIGNAL \inst2|inst|opres[5]~12_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~13\ : std_logic;
SIGNAL \inst2|inst|Add0~14_combout\ : std_logic;
SIGNAL \inst2|inst|opres[6]~13_combout\ : std_logic;
SIGNAL \inst2|inst|opres[6]~14_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~15\ : std_logic;
SIGNAL \inst2|inst|Add0~16_combout\ : std_logic;
SIGNAL \inst2|inst|opres[7]~16_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~17\ : std_logic;
SIGNAL \inst2|inst|Add0~18_combout\ : std_logic;
SIGNAL \inst2|inst|opres[8]~17_combout\ : std_logic;
SIGNAL \inst2|inst|opres[8]~18_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~19\ : std_logic;
SIGNAL \inst2|inst|Add0~20_combout\ : std_logic;
SIGNAL \inst2|inst|opres[9]~20_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~21\ : std_logic;
SIGNAL \inst2|inst|Add0~22_combout\ : std_logic;
SIGNAL \inst2|inst|opres[10]~21_combout\ : std_logic;
SIGNAL \inst2|inst|opres[10]~22_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~23\ : std_logic;
SIGNAL \inst2|inst|Add0~24_combout\ : std_logic;
SIGNAL \inst2|inst|opres[11]~23_combout\ : std_logic;
SIGNAL \inst2|inst|opres[11]~24_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~25\ : std_logic;
SIGNAL \inst2|inst|Add0~26_combout\ : std_logic;
SIGNAL \inst2|inst|opres[12]~25_combout\ : std_logic;
SIGNAL \inst2|inst|opres[12]~26_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[12]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~27\ : std_logic;
SIGNAL \inst2|inst|Add0~28_combout\ : std_logic;
SIGNAL \inst2|inst|opres[13]~28_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~29\ : std_logic;
SIGNAL \inst2|inst|Add0~30_combout\ : std_logic;
SIGNAL \inst2|inst|opres[14]~29_combout\ : std_logic;
SIGNAL \inst2|inst|opres[14]~30_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~31\ : std_logic;
SIGNAL \inst2|inst|Add0~33\ : std_logic;
SIGNAL \inst2|inst|Add0~34_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~33_combout\ : std_logic;
SIGNAL \inst2|inst3|ci~combout\ : std_logic;
SIGNAL \inst3|inst206|comb~15_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~10_combout\ : std_logic;
SIGNAL \inst3|inst206|selc~combout\ : std_logic;
SIGNAL \inst3|inst10|selc~q\ : std_logic;
SIGNAL \inst2|inst|Add0~1_cout\ : std_logic;
SIGNAL \inst2|inst|Add0~3\ : std_logic;
SIGNAL \inst2|inst|Add0~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[1]~3_combout\ : std_logic;
SIGNAL \inst2|inst|opres[1]~4_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[1]~2_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[1]~3_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~5\ : std_logic;
SIGNAL \inst2|inst|Add0~6_combout\ : std_logic;
SIGNAL \inst2|inst|opres[2]~5_combout\ : std_logic;
SIGNAL \inst2|inst|opres[2]~6_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[2]~0_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~7\ : std_logic;
SIGNAL \inst2|inst|Add0~8_combout\ : std_logic;
SIGNAL \inst2|inst|opres[3]~7_combout\ : std_logic;
SIGNAL \inst2|inst|opres[3]~8_combout\ : std_logic;
SIGNAL \inst3|inst206|selregr[3]~1_combout\ : std_logic;
SIGNAL \inst3|inst206|vf~combout\ : std_logic;
SIGNAL \inst3|inst10|vf~0_combout\ : std_logic;
SIGNAL \inst3|inst10|vf~q\ : std_logic;
SIGNAL \inst2|inst100|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst2|inst100|valor_interno~q\ : std_logic;
SIGNAL \inst|inst3|SALIDA[3]~13\ : std_logic;
SIGNAL \inst|inst3|SALIDA[4]~14_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[4]~15\ : std_logic;
SIGNAL \inst|inst3|SALIDA[5]~16_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~1_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal4~0_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~7_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~2_combout\ : std_logic;
SIGNAL \inst2|inst|opres[0]~31_combout\ : std_logic;
SIGNAL \inst2|inst|opres[0]~32_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[0]~7\ : std_logic;
SIGNAL \inst|inst3|SALIDA[1]~8_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[1]~9\ : std_logic;
SIGNAL \inst|inst3|SALIDA[2]~10_combout\ : std_logic;
SIGNAL \inst|inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~32_combout\ : std_logic;
SIGNAL \inst2|inst1|sal~0_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~0_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~1_combout\ : std_logic;
SIGNAL \inst3|inst206|comb~6_combout\ : std_logic;
SIGNAL \inst3|inst10|selfalgs[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst3|vi~0_combout\ : std_logic;
SIGNAL \inst2|inst3|vi~0clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst3|ni~combout\ : std_logic;
SIGNAL \inst2|inst101|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst|WideOr0~1_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~2_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~3_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~4_combout\ : std_logic;
SIGNAL \inst2|inst3|zi~combout\ : std_logic;
SIGNAL \inst2|inst102|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst3|vi~1_combout\ : std_logic;
SIGNAL \inst2|inst3|vi~combout\ : std_logic;
SIGNAL \inst2|inst103|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst104|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst2|inst104|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst3|vi~2_combout\ : std_logic;
SIGNAL \inst2|inst3|hi~combout\ : std_logic;
SIGNAL \inst2|inst105|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst2|inst105|valor_interno~q\ : std_logic;
SIGNAL \sw~input_o\ : std_logic;
SIGNAL \inst4|first_value~1_combout\ : std_logic;
SIGNAL \inst4|first_value~2_combout\ : std_logic;
SIGNAL \inst4|first_value~3_combout\ : std_logic;
SIGNAL \inst4|first_value~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst4|second_value~2_combout\ : std_logic;
SIGNAL \inst4|second_value~1_combout\ : std_logic;
SIGNAL \inst4|second_value~3_combout\ : std_logic;
SIGNAL \inst4|second_value~0_combout\ : std_logic;
SIGNAL \inst4|Mux7~0_combout\ : std_logic;
SIGNAL \inst4|Mux8~0_combout\ : std_logic;
SIGNAL \inst4|Mux9~0_combout\ : std_logic;
SIGNAL \inst4|Mux10~0_combout\ : std_logic;
SIGNAL \inst4|Mux11~0_combout\ : std_logic;
SIGNAL \inst4|Mux12~0_combout\ : std_logic;
SIGNAL \inst4|Mux13~0_combout\ : std_logic;
SIGNAL \inst4|third_value~0_combout\ : std_logic;
SIGNAL \inst4|third_value~2_combout\ : std_logic;
SIGNAL \inst4|third_value~1_combout\ : std_logic;
SIGNAL \inst4|third_value~3_combout\ : std_logic;
SIGNAL \inst4|Mux14~0_combout\ : std_logic;
SIGNAL \inst4|Mux15~0_combout\ : std_logic;
SIGNAL \inst4|Mux16~0_combout\ : std_logic;
SIGNAL \inst4|Mux17~0_combout\ : std_logic;
SIGNAL \inst4|Mux18~0_combout\ : std_logic;
SIGNAL \inst4|Mux19~0_combout\ : std_logic;
SIGNAL \inst4|Mux20~0_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|second_value[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|Mux7~0_combout\ : std_logic;
SIGNAL \inst6|Mux8~0_combout\ : std_logic;
SIGNAL \inst6|Mux9~0_combout\ : std_logic;
SIGNAL \inst6|Mux10~0_combout\ : std_logic;
SIGNAL \inst6|Mux11~0_combout\ : std_logic;
SIGNAL \inst6|Mux12~0_combout\ : std_logic;
SIGNAL \inst6|Mux13~0_combout\ : std_logic;
SIGNAL \inst3|inst206|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|inst2|datow\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|inst3|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|first_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst206|selregr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|first_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst10|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|second_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst206|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst5|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|second_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst10|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|third_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|cuenta\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst3|inst700666|ACCB|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst700666|ACCA|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst6|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst8|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selresult\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|inst700|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst202|OP2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst202|OP1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst3|inst206|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst206|selsrc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst206|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|ALT_INV_div~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_div~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

n <= ww_n;
ww_clk <= clk;
ww_RESET <= RESET;
z <= ww_z;
v <= ww_v;
c <= ww_c;
h <= ww_h;
i <= ww_i;
clk_out <= ww_clk_out;
disp1 <= ww_disp1;
ww_sw <= sw;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
disp4 <= ww_disp4;
disp5 <= ww_disp5;
disp6 <= ww_disp6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst2|inst3|vi~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst3|vi~0_combout\);

\inst2|inst|opres[16]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst|opres[16]~2_combout\);

\inst5|div~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|div~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst5|ALT_INV_div~clkctrl_outclk\ <= NOT \inst5|div~clkctrl_outclk\;
\inst6|ALT_INV_Mux13~0_combout\ <= NOT \inst6|Mux13~0_combout\;
\inst6|ALT_INV_Mux6~0_combout\ <= NOT \inst6|Mux6~0_combout\;
\inst4|ALT_INV_Mux20~0_combout\ <= NOT \inst4|Mux20~0_combout\;
\inst4|ALT_INV_Mux13~0_combout\ <= NOT \inst4|Mux13~0_combout\;
\inst4|ALT_INV_Mux6~0_combout\ <= NOT \inst4|Mux6~0_combout\;
\inst5|ALT_INV_div~q\ <= NOT \inst5|div~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N23
\n~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst101|valor_interno~q\,
	devoe => ww_devoe,
	o => \n~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst102|valor_interno~q\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\v~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst103|valor_interno~q\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\c~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst104|valor_interno~q\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\h~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst105|valor_interno~q\,
	devoe => ww_devoe,
	o => \h~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\i~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\clk_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_div~q\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\disp1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \disp1[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\disp1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \disp1[5]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\disp1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \disp1[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\disp1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp1[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\disp1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \disp1[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\disp1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp1[1]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\disp1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp1[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\disp2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \disp2[6]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\disp2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \disp2[5]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\disp2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \disp2[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\disp2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \disp2[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\disp2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \disp2[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\disp2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \disp2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\disp2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \disp2[0]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\disp3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \disp3[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\disp3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \disp3[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\disp3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \disp3[4]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\disp3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \disp3[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\disp3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \disp3[2]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\disp3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \disp3[1]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\disp3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => \disp3[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\disp4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \disp4[6]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\disp4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \disp4[5]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\disp4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \disp4[4]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\disp4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp4[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\disp4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \disp4[2]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\disp4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp4[1]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\disp4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\disp5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \disp5[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\disp5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \disp5[5]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\disp5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \disp5[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\disp5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \disp5[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\disp5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \disp5[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\disp5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \disp5[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\disp5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \disp5[0]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\disp6[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp6[6]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\disp6[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp6[5]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\disp6[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp6[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\disp6[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp6[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\disp6[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp6[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\disp6[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp6[1]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\disp6[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp6[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X71_Y44_N6
\inst5|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|cuenta\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X71_Y44_N2
\inst5|cuenta~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~11_combout\ = (\inst5|Add0~0_combout\ & ((!\inst5|Equal0~7_combout\) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~0_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Equal0~7_combout\,
	combout => \inst5|cuenta~11_combout\);

-- Location: FF_X71_Y44_N3
\inst5|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(0));

-- Location: LCCOMB_X71_Y44_N8
\inst5|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|cuenta\(1) & (!\inst5|Add0~1\)) # (!\inst5|cuenta\(1) & ((\inst5|Add0~1\) # (GND)))
-- \inst5|Add0~3\ = CARRY((!\inst5|Add0~1\) # (!\inst5|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: FF_X71_Y44_N9
\inst5|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(1));

-- Location: LCCOMB_X71_Y44_N10
\inst5|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|cuenta\(2) & (\inst5|Add0~3\ $ (GND))) # (!\inst5|cuenta\(2) & (!\inst5|Add0~3\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst5|cuenta\(2) & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: FF_X71_Y44_N11
\inst5|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(2));

-- Location: LCCOMB_X71_Y44_N12
\inst5|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|cuenta\(3) & (!\inst5|Add0~5\)) # (!\inst5|cuenta\(3) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst5|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: FF_X71_Y44_N13
\inst5|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(3));

-- Location: LCCOMB_X72_Y44_N30
\inst5|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (!\inst5|cuenta\(3) & (!\inst5|cuenta\(1) & (!\inst5|cuenta\(2) & !\inst5|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(3),
	datab => \inst5|cuenta\(1),
	datac => \inst5|cuenta\(2),
	datad => \inst5|cuenta\(0),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X71_Y44_N14
\inst5|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|cuenta\(4) & (\inst5|Add0~7\ $ (GND))) # (!\inst5|cuenta\(4) & (!\inst5|Add0~7\ & VCC))
-- \inst5|Add0~9\ = CARRY((\inst5|cuenta\(4) & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: FF_X71_Y44_N15
\inst5|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(4));

-- Location: LCCOMB_X71_Y44_N16
\inst5|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|cuenta\(5) & (!\inst5|Add0~9\)) # (!\inst5|cuenta\(5) & ((\inst5|Add0~9\) # (GND)))
-- \inst5|Add0~11\ = CARRY((!\inst5|Add0~9\) # (!\inst5|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: FF_X71_Y44_N17
\inst5|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(5));

-- Location: LCCOMB_X71_Y44_N18
\inst5|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|cuenta\(6) & (\inst5|Add0~11\ $ (GND))) # (!\inst5|cuenta\(6) & (!\inst5|Add0~11\ & VCC))
-- \inst5|Add0~13\ = CARRY((\inst5|cuenta\(6) & !\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: FF_X71_Y44_N19
\inst5|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(6));

-- Location: LCCOMB_X71_Y44_N20
\inst5|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|cuenta\(7) & (!\inst5|Add0~13\)) # (!\inst5|cuenta\(7) & ((\inst5|Add0~13\) # (GND)))
-- \inst5|Add0~15\ = CARRY((!\inst5|Add0~13\) # (!\inst5|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: LCCOMB_X71_Y44_N0
\inst5|cuenta~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~10_combout\ = (\inst5|Add0~14_combout\ & ((!\inst5|Equal0~7_combout\) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~14_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Equal0~7_combout\,
	combout => \inst5|cuenta~10_combout\);

-- Location: FF_X71_Y44_N1
\inst5|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(7));

-- Location: LCCOMB_X71_Y44_N22
\inst5|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|cuenta\(8) & (\inst5|Add0~15\ $ (GND))) # (!\inst5|cuenta\(8) & (!\inst5|Add0~15\ & VCC))
-- \inst5|Add0~17\ = CARRY((\inst5|cuenta\(8) & !\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: FF_X71_Y44_N23
\inst5|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(8));

-- Location: LCCOMB_X71_Y44_N24
\inst5|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|cuenta\(9) & (!\inst5|Add0~17\)) # (!\inst5|cuenta\(9) & ((\inst5|Add0~17\) # (GND)))
-- \inst5|Add0~19\ = CARRY((!\inst5|Add0~17\) # (!\inst5|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: FF_X71_Y44_N25
\inst5|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(9));

-- Location: LCCOMB_X71_Y44_N26
\inst5|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|cuenta\(10) & (\inst5|Add0~19\ $ (GND))) # (!\inst5|cuenta\(10) & (!\inst5|Add0~19\ & VCC))
-- \inst5|Add0~21\ = CARRY((\inst5|cuenta\(10) & !\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: FF_X71_Y44_N27
\inst5|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(10));

-- Location: LCCOMB_X71_Y44_N28
\inst5|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|cuenta\(11) & (!\inst5|Add0~21\)) # (!\inst5|cuenta\(11) & ((\inst5|Add0~21\) # (GND)))
-- \inst5|Add0~23\ = CARRY((!\inst5|Add0~21\) # (!\inst5|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: FF_X71_Y44_N29
\inst5|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(11));

-- Location: LCCOMB_X71_Y44_N30
\inst5|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|cuenta\(12) & (\inst5|Add0~23\ $ (GND))) # (!\inst5|cuenta\(12) & (!\inst5|Add0~23\ & VCC))
-- \inst5|Add0~25\ = CARRY((\inst5|cuenta\(12) & !\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: LCCOMB_X71_Y44_N4
\inst5|cuenta~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~12_combout\ = (\inst5|Add0~24_combout\ & ((!\inst5|Equal0~4_combout\) # (!\inst5|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~7_combout\,
	datac => \inst5|Add0~24_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|cuenta~12_combout\);

-- Location: FF_X71_Y44_N5
\inst5|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(12));

-- Location: LCCOMB_X71_Y43_N0
\inst5|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|cuenta\(13) & (!\inst5|Add0~25\)) # (!\inst5|cuenta\(13) & ((\inst5|Add0~25\) # (GND)))
-- \inst5|Add0~27\ = CARRY((!\inst5|Add0~25\) # (!\inst5|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: LCCOMB_X72_Y43_N20
\inst5|cuenta~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~13_combout\ = (\inst5|Add0~26_combout\ & ((!\inst5|Equal0~4_combout\) # (!\inst5|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~7_combout\,
	datac => \inst5|Add0~26_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|cuenta~13_combout\);

-- Location: FF_X72_Y43_N21
\inst5|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(13));

-- Location: LCCOMB_X71_Y43_N2
\inst5|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|cuenta\(14) & (\inst5|Add0~27\ $ (GND))) # (!\inst5|cuenta\(14) & (!\inst5|Add0~27\ & VCC))
-- \inst5|Add0~29\ = CARRY((\inst5|cuenta\(14) & !\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: LCCOMB_X71_Y43_N26
\inst5|cuenta~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~14_combout\ = (\inst5|Add0~28_combout\ & ((!\inst5|Equal0~4_combout\) # (!\inst5|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~7_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Add0~28_combout\,
	combout => \inst5|cuenta~14_combout\);

-- Location: FF_X71_Y43_N27
\inst5|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(14));

-- Location: LCCOMB_X71_Y43_N4
\inst5|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = (\inst5|cuenta\(15) & (!\inst5|Add0~29\)) # (!\inst5|cuenta\(15) & ((\inst5|Add0~29\) # (GND)))
-- \inst5|Add0~31\ = CARRY((!\inst5|Add0~29\) # (!\inst5|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(15),
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: LCCOMB_X72_Y43_N30
\inst5|cuenta~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~15_combout\ = (\inst5|Add0~30_combout\ & ((!\inst5|Equal0~4_combout\) # (!\inst5|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~7_combout\,
	datac => \inst5|Add0~30_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|cuenta~15_combout\);

-- Location: FF_X72_Y43_N31
\inst5|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(15));

-- Location: LCCOMB_X72_Y43_N24
\inst5|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (\inst5|cuenta\(15) & (\inst5|cuenta\(13) & (\inst5|cuenta\(14) & \inst5|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(15),
	datab => \inst5|cuenta\(13),
	datac => \inst5|cuenta\(14),
	datad => \inst5|cuenta\(12),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X72_Y44_N4
\inst5|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (!\inst5|cuenta\(5) & (!\inst5|cuenta\(6) & (\inst5|cuenta\(7) & !\inst5|cuenta\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(5),
	datab => \inst5|cuenta\(6),
	datac => \inst5|cuenta\(7),
	datad => \inst5|cuenta\(4),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y44_N8
\inst5|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|cuenta\(9) & (!\inst5|cuenta\(11) & (!\inst5|cuenta\(10) & !\inst5|cuenta\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(9),
	datab => \inst5|cuenta\(11),
	datac => \inst5|cuenta\(10),
	datad => \inst5|cuenta\(8),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X72_Y43_N0
\inst5|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~1_combout\ & (\inst5|Equal0~3_combout\ & (\inst5|Equal0~0_combout\ & \inst5|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~1_combout\,
	datab => \inst5|Equal0~3_combout\,
	datac => \inst5|Equal0~0_combout\,
	datad => \inst5|Equal0~2_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X71_Y43_N6
\inst5|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = (\inst5|cuenta\(16) & (\inst5|Add0~31\ $ (GND))) # (!\inst5|cuenta\(16) & (!\inst5|Add0~31\ & VCC))
-- \inst5|Add0~33\ = CARRY((\inst5|cuenta\(16) & !\inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(16),
	datad => VCC,
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\,
	cout => \inst5|Add0~33\);

-- Location: FF_X71_Y43_N7
\inst5|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(16));

-- Location: LCCOMB_X71_Y43_N8
\inst5|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~34_combout\ = (\inst5|cuenta\(17) & (!\inst5|Add0~33\)) # (!\inst5|cuenta\(17) & ((\inst5|Add0~33\) # (GND)))
-- \inst5|Add0~35\ = CARRY((!\inst5|Add0~33\) # (!\inst5|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(17),
	datad => VCC,
	cin => \inst5|Add0~33\,
	combout => \inst5|Add0~34_combout\,
	cout => \inst5|Add0~35\);

-- Location: LCCOMB_X71_Y43_N28
\inst5|cuenta~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~16_combout\ = (\inst5|Add0~34_combout\ & ((!\inst5|Equal0~7_combout\) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~4_combout\,
	datac => \inst5|Add0~34_combout\,
	datad => \inst5|Equal0~7_combout\,
	combout => \inst5|cuenta~16_combout\);

-- Location: FF_X71_Y43_N29
\inst5|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(17));

-- Location: LCCOMB_X71_Y43_N10
\inst5|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~36_combout\ = (\inst5|cuenta\(18) & (\inst5|Add0~35\ $ (GND))) # (!\inst5|cuenta\(18) & (!\inst5|Add0~35\ & VCC))
-- \inst5|Add0~37\ = CARRY((\inst5|cuenta\(18) & !\inst5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(18),
	datad => VCC,
	cin => \inst5|Add0~35\,
	combout => \inst5|Add0~36_combout\,
	cout => \inst5|Add0~37\);

-- Location: FF_X71_Y43_N11
\inst5|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(18));

-- Location: LCCOMB_X71_Y43_N12
\inst5|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~38_combout\ = (\inst5|cuenta\(19) & (!\inst5|Add0~37\)) # (!\inst5|cuenta\(19) & ((\inst5|Add0~37\) # (GND)))
-- \inst5|Add0~39\ = CARRY((!\inst5|Add0~37\) # (!\inst5|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(19),
	datad => VCC,
	cin => \inst5|Add0~37\,
	combout => \inst5|Add0~38_combout\,
	cout => \inst5|Add0~39\);

-- Location: LCCOMB_X72_Y43_N4
\inst5|cuenta~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~17_combout\ = (\inst5|Add0~38_combout\ & ((!\inst5|Equal0~7_combout\) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datac => \inst5|Equal0~7_combout\,
	datad => \inst5|Add0~38_combout\,
	combout => \inst5|cuenta~17_combout\);

-- Location: FF_X72_Y43_N5
\inst5|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(19));

-- Location: LCCOMB_X71_Y43_N14
\inst5|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~40_combout\ = (\inst5|cuenta\(20) & (\inst5|Add0~39\ $ (GND))) # (!\inst5|cuenta\(20) & (!\inst5|Add0~39\ & VCC))
-- \inst5|Add0~41\ = CARRY((\inst5|cuenta\(20) & !\inst5|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(20),
	datad => VCC,
	cin => \inst5|Add0~39\,
	combout => \inst5|Add0~40_combout\,
	cout => \inst5|Add0~41\);

-- Location: LCCOMB_X72_Y43_N28
\inst5|cuenta~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~18_combout\ = (\inst5|Add0~40_combout\ & ((!\inst5|Equal0~7_combout\) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datac => \inst5|Equal0~7_combout\,
	datad => \inst5|Add0~40_combout\,
	combout => \inst5|cuenta~18_combout\);

-- Location: FF_X72_Y43_N29
\inst5|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(20));

-- Location: LCCOMB_X71_Y43_N16
\inst5|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~42_combout\ = (\inst5|cuenta\(21) & (!\inst5|Add0~41\)) # (!\inst5|cuenta\(21) & ((\inst5|Add0~41\) # (GND)))
-- \inst5|Add0~43\ = CARRY((!\inst5|Add0~41\) # (!\inst5|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cuenta\(21),
	datad => VCC,
	cin => \inst5|Add0~41\,
	combout => \inst5|Add0~42_combout\,
	cout => \inst5|Add0~43\);

-- Location: LCCOMB_X72_Y43_N18
\inst5|cuenta~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~19_combout\ = (\inst5|Add0~42_combout\ & ((!\inst5|Equal0~4_combout\) # (!\inst5|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~7_combout\,
	datac => \inst5|Add0~42_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|cuenta~19_combout\);

-- Location: FF_X72_Y43_N19
\inst5|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(21));

-- Location: LCCOMB_X71_Y43_N18
\inst5|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~44_combout\ = (\inst5|cuenta\(22) & (\inst5|Add0~43\ $ (GND))) # (!\inst5|cuenta\(22) & (!\inst5|Add0~43\ & VCC))
-- \inst5|Add0~45\ = CARRY((\inst5|cuenta\(22) & !\inst5|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(22),
	datad => VCC,
	cin => \inst5|Add0~43\,
	combout => \inst5|Add0~44_combout\,
	cout => \inst5|Add0~45\);

-- Location: LCCOMB_X71_Y43_N30
\inst5|cuenta~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~20_combout\ = (\inst5|Add0~44_combout\ & ((!\inst5|Equal0~4_combout\) # (!\inst5|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~7_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Add0~44_combout\,
	combout => \inst5|cuenta~20_combout\);

-- Location: FF_X71_Y43_N31
\inst5|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(22));

-- Location: LCCOMB_X71_Y43_N20
\inst5|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~46_combout\ = (\inst5|cuenta\(23) & (!\inst5|Add0~45\)) # (!\inst5|cuenta\(23) & ((\inst5|Add0~45\) # (GND)))
-- \inst5|Add0~47\ = CARRY((!\inst5|Add0~45\) # (!\inst5|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(23),
	datad => VCC,
	cin => \inst5|Add0~45\,
	combout => \inst5|Add0~46_combout\,
	cout => \inst5|Add0~47\);

-- Location: LCCOMB_X72_Y43_N6
\inst5|cuenta~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~21_combout\ = (\inst5|Add0~46_combout\ & ((!\inst5|Equal0~7_combout\) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datac => \inst5|Equal0~7_combout\,
	datad => \inst5|Add0~46_combout\,
	combout => \inst5|cuenta~21_combout\);

-- Location: FF_X72_Y43_N7
\inst5|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(23));

-- Location: LCCOMB_X71_Y43_N22
\inst5|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~48_combout\ = (\inst5|cuenta\(24) & (\inst5|Add0~47\ $ (GND))) # (!\inst5|cuenta\(24) & (!\inst5|Add0~47\ & VCC))
-- \inst5|Add0~49\ = CARRY((\inst5|cuenta\(24) & !\inst5|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(24),
	datad => VCC,
	cin => \inst5|Add0~47\,
	combout => \inst5|Add0~48_combout\,
	cout => \inst5|Add0~49\);

-- Location: FF_X71_Y43_N23
\inst5|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(24));

-- Location: LCCOMB_X71_Y43_N24
\inst5|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~50_combout\ = \inst5|Add0~49\ $ (\inst5|cuenta\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|cuenta\(25),
	cin => \inst5|Add0~49\,
	combout => \inst5|Add0~50_combout\);

-- Location: LCCOMB_X72_Y43_N26
\inst5|cuenta~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|cuenta~22_combout\ = (\inst5|Add0~50_combout\ & ((!\inst5|Equal0~7_combout\) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datac => \inst5|Equal0~7_combout\,
	datad => \inst5|Add0~50_combout\,
	combout => \inst5|cuenta~22_combout\);

-- Location: FF_X72_Y43_N27
\inst5|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cuenta~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cuenta\(25));

-- Location: LCCOMB_X72_Y43_N8
\inst5|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (\inst5|cuenta\(23) & (\inst5|cuenta\(20) & (\inst5|cuenta\(21) & \inst5|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(23),
	datab => \inst5|cuenta\(20),
	datac => \inst5|cuenta\(21),
	datad => \inst5|cuenta\(22),
	combout => \inst5|Equal0~6_combout\);

-- Location: LCCOMB_X72_Y43_N10
\inst5|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (!\inst5|cuenta\(18) & (\inst5|cuenta\(19) & (!\inst5|cuenta\(16) & \inst5|cuenta\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(18),
	datab => \inst5|cuenta\(19),
	datac => \inst5|cuenta\(16),
	datad => \inst5|cuenta\(17),
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X72_Y43_N22
\inst5|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (\inst5|cuenta\(25) & (!\inst5|cuenta\(24) & (\inst5|Equal0~6_combout\ & \inst5|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cuenta\(25),
	datab => \inst5|cuenta\(24),
	datac => \inst5|Equal0~6_combout\,
	datad => \inst5|Equal0~5_combout\,
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X72_Y43_N14
\inst5|div~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|div~0_combout\ = \inst5|div~q\ $ (((\inst5|Equal0~7_combout\ & \inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~7_combout\,
	datac => \inst5|div~q\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|div~0_combout\);

-- Location: LCCOMB_X72_Y43_N12
\inst5|div~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|div~feeder_combout\ = \inst5|div~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|div~0_combout\,
	combout => \inst5|div~feeder_combout\);

-- Location: FF_X72_Y43_N13
\inst5|div\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|div~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|div~q\);

-- Location: CLKCTRL_G8
\inst5|div~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|div~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|div~clkctrl_outclk\);

-- Location: IOIBUF_X46_Y54_N29
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X58_Y49_N18
\inst|inst3|SALIDA[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[0]~6_combout\ = \inst|inst3|SALIDA\(0) $ (VCC)
-- \inst|inst3|SALIDA[0]~7\ = CARRY(\inst|inst3|SALIDA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(0),
	datad => VCC,
	combout => \inst|inst3|SALIDA[0]~6_combout\,
	cout => \inst|inst3|SALIDA[0]~7\);

-- Location: LCCOMB_X58_Y49_N22
\inst|inst3|SALIDA[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[2]~10_combout\ = (\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA[1]~9\ $ (GND))) # (!\inst|inst3|SALIDA\(2) & (!\inst|inst3|SALIDA[1]~9\ & VCC))
-- \inst|inst3|SALIDA[2]~11\ = CARRY((\inst|inst3|SALIDA\(2) & !\inst|inst3|SALIDA[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(2),
	datad => VCC,
	cin => \inst|inst3|SALIDA[1]~9\,
	combout => \inst|inst3|SALIDA[2]~10_combout\,
	cout => \inst|inst3|SALIDA[2]~11\);

-- Location: LCCOMB_X58_Y49_N24
\inst|inst3|SALIDA[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[3]~12_combout\ = (\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA[2]~11\)) # (!\inst|inst3|SALIDA\(3) & ((\inst|inst3|SALIDA[2]~11\) # (GND)))
-- \inst|inst3|SALIDA[3]~13\ = CARRY((!\inst|inst3|SALIDA[2]~11\) # (!\inst|inst3|SALIDA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(3),
	datad => VCC,
	cin => \inst|inst3|SALIDA[2]~11\,
	combout => \inst|inst3|SALIDA[3]~12_combout\,
	cout => \inst|inst3|SALIDA[3]~13\);

-- Location: LCCOMB_X59_Y49_N2
\inst|inst1|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~0_combout\ = (!\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(5) & (!\inst|inst3|SALIDA\(4) & !\inst|inst3|SALIDA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux10~0_combout\);

-- Location: LCCOMB_X58_Y49_N16
\inst|inst1|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~1_combout\ = (\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA\(0) & \inst|inst1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(2),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst1|Mux10~0_combout\,
	combout => \inst|inst1|Mux10~1_combout\);

-- Location: FF_X58_Y49_N17
\inst|inst5|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst1|Mux10~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(21));

-- Location: FF_X59_Y49_N3
\inst|inst5|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst1|Mux10~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(17));

-- Location: LCCOMB_X58_Y49_N8
\inst|inst1|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~0_combout\ = (\inst|inst3|SALIDA\(1) & (!\inst|inst3|SALIDA\(3))) # (!\inst|inst3|SALIDA\(1) & (!\inst|inst3|SALIDA\(0) & (\inst|inst3|SALIDA\(3) $ (\inst|inst3|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux15~0_combout\);

-- Location: LCCOMB_X59_Y49_N18
\inst|inst1|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~1_combout\ = (!\inst|inst3|SALIDA\(5) & (!\inst|inst3|SALIDA\(4) & \inst|inst1|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst1|Mux15~0_combout\,
	combout => \inst|inst1|Mux15~1_combout\);

-- Location: FF_X59_Y49_N19
\inst|inst5|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst1|Mux15~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(16));

-- Location: LCCOMB_X59_Y49_N12
\inst|inst1|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux8~0_combout\ = (!\inst|inst3|SALIDA\(2) & \inst|inst1|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(2),
	datad => \inst|inst1|Mux10~0_combout\,
	combout => \inst|inst1|Mux8~0_combout\);

-- Location: FF_X59_Y49_N13
\inst|inst5|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst1|Mux8~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(23));

-- Location: LCCOMB_X58_Y49_N10
\inst3|inst206|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal1~0_combout\ = (\inst|inst5|valor_interno\(17) & (!\inst|inst5|valor_interno\(16) & (\inst|inst5|valor_interno\(18) & \inst|inst5|valor_interno\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(17),
	datab => \inst|inst5|valor_interno\(16),
	datac => \inst|inst5|valor_interno\(18),
	datad => \inst|inst5|valor_interno\(23),
	combout => \inst3|inst206|Equal1~0_combout\);

-- Location: LCCOMB_X59_Y50_N18
\inst3|inst206|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~4_combout\ = (\inst|inst5|valor_interno\(19)) # ((\inst|inst5|valor_interno\(21)) # (!\inst3|inst206|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(19),
	datac => \inst|inst5|valor_interno\(21),
	datad => \inst3|inst206|Equal1~0_combout\,
	combout => \inst3|inst206|comb~4_combout\);

-- Location: LCCOMB_X58_Y49_N2
\inst|inst1|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~2_combout\ = (\inst|inst3|SALIDA\(0) & \inst|inst1|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst1|Mux10~0_combout\,
	combout => \inst|inst1|Mux10~2_combout\);

-- Location: FF_X58_Y49_N3
\inst|inst5|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst1|Mux10~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(22));

-- Location: LCCOMB_X59_Y48_N4
\inst3|inst206|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal3~0_combout\ = (\inst|inst5|valor_interno\(18) & (\inst|inst5|valor_interno\(17) & (!\inst|inst5|valor_interno\(16) & !\inst|inst5|valor_interno\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(18),
	datab => \inst|inst5|valor_interno\(17),
	datac => \inst|inst5|valor_interno\(16),
	datad => \inst|inst5|valor_interno\(23),
	combout => \inst3|inst206|Equal3~0_combout\);

-- Location: LCCOMB_X59_Y50_N16
\inst3|inst206|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal3~1_combout\ = (\inst|inst5|valor_interno\(19) & (\inst|inst5|valor_interno\(21) & (\inst|inst5|valor_interno\(22) & \inst3|inst206|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(19),
	datab => \inst|inst5|valor_interno\(21),
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst3|inst206|Equal3~0_combout\,
	combout => \inst3|inst206|Equal3~1_combout\);

-- Location: LCCOMB_X59_Y50_N2
\inst3|inst206|comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~9_combout\ = (\inst3|inst206|comb~4_combout\ & (!\inst3|inst206|Equal3~1_combout\ & ((\inst3|inst206|Equal4~0_combout\) # (\inst3|inst206|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal4~0_combout\,
	datab => \inst3|inst206|comb~4_combout\,
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst206|Equal3~1_combout\,
	combout => \inst3|inst206|comb~9_combout\);

-- Location: LCCOMB_X59_Y50_N22
\inst3|inst206|comb~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~14_combout\ = (\inst3|inst206|Equal3~1_combout\) # ((!\inst|inst5|valor_interno\(19) & (!\inst|inst5|valor_interno\(21) & \inst3|inst206|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(19),
	datab => \inst3|inst206|Equal3~1_combout\,
	datac => \inst|inst5|valor_interno\(21),
	datad => \inst3|inst206|Equal1~0_combout\,
	combout => \inst3|inst206|comb~14_combout\);

-- Location: LCCOMB_X57_Y50_N16
\inst3|inst206|selsrc[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selsrc\(1) = (!\inst3|inst206|comb~9_combout\ & ((\inst3|inst206|comb~14_combout\) # (\inst3|inst206|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~9_combout\,
	datac => \inst3|inst206|comb~14_combout\,
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst206|selsrc\(1));

-- Location: LCCOMB_X52_Y50_N8
\inst3|inst206|comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~8_combout\ = (\inst3|inst206|comb~4_combout\ & (!\inst3|inst206|Equal0~1_combout\ & !\inst3|inst206|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~4_combout\,
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst206|Equal3~1_combout\,
	combout => \inst3|inst206|comb~8_combout\);

-- Location: LCCOMB_X54_Y50_N10
\inst3|inst206|selsrc[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selsrc\(0) = (!\inst3|inst206|comb~7_combout\ & ((\inst3|inst206|selsrc\(0)) # (!\inst3|inst206|comb~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~7_combout\,
	datac => \inst3|inst206|comb~8_combout\,
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst206|selsrc\(0));

-- Location: LCCOMB_X58_Y51_N30
\inst3|inst700666|ACCB|SALIDA[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[3]~feeder_combout\ = \inst2|inst6|SALIDA\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(3),
	combout => \inst3|inst700666|ACCB|SALIDA[3]~feeder_combout\);

-- Location: LCCOMB_X59_Y50_N0
\inst3|inst206|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal2~0_combout\ = (!\inst|inst5|valor_interno\(19) & (!\inst|inst5|valor_interno\(21) & (\inst|inst5|valor_interno\(22) & \inst3|inst206|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(19),
	datab => \inst|inst5|valor_interno\(21),
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst3|inst206|Equal1~0_combout\,
	combout => \inst3|inst206|Equal2~0_combout\);

-- Location: LCCOMB_X59_Y50_N30
\inst3|inst206|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal1~1_combout\ = (!\inst|inst5|valor_interno\(19) & (!\inst|inst5|valor_interno\(21) & \inst3|inst206|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(19),
	datac => \inst|inst5|valor_interno\(21),
	datad => \inst3|inst206|Equal1~0_combout\,
	combout => \inst3|inst206|Equal1~1_combout\);

-- Location: LCCOMB_X59_Y50_N20
\inst3|inst206|selregr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr[3]~0_combout\ = (\inst3|inst206|Equal1~1_combout\) # ((\inst3|inst206|Equal3~1_combout\) # (\inst3|inst206|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal1~1_combout\,
	datab => \inst3|inst206|Equal3~1_combout\,
	datad => \inst3|inst206|Equal4~0_combout\,
	combout => \inst3|inst206|selregr[3]~0_combout\);

-- Location: LCCOMB_X59_Y50_N14
\inst3|inst206|comb~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~11_combout\ = (\inst3|inst206|Equal1~1_combout\ & (!\inst|inst5|valor_interno\(22) & ((\inst3|inst206|Equal0~1_combout\) # (\inst3|inst206|selregr[3]~0_combout\)))) # (!\inst3|inst206|Equal1~1_combout\ & 
-- ((\inst3|inst206|Equal0~1_combout\) # ((\inst3|inst206|selregr[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal1~1_combout\,
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst3|inst206|selregr[3]~0_combout\,
	combout => \inst3|inst206|comb~11_combout\);

-- Location: LCCOMB_X59_Y50_N24
\inst3|inst206|selregw[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregw\(2) = (!\inst3|inst206|comb~11_combout\ & ((\inst3|inst206|Equal2~0_combout\) # (\inst3|inst206|selregw\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal2~0_combout\,
	datac => \inst3|inst206|comb~11_combout\,
	datad => \inst3|inst206|selregw\(2),
	combout => \inst3|inst206|selregw\(2));

-- Location: FF_X59_Y50_N25
\inst3|inst10|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst206|selregw\(2),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregw\(2));

-- Location: LCCOMB_X55_Y51_N14
\inst2|inst107|selregw[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst107|selregw[2]~feeder_combout\ = \inst3|inst10|selregw\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selregw\(2),
	combout => \inst2|inst107|selregw[2]~feeder_combout\);

-- Location: FF_X55_Y51_N15
\inst2|inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst107|selregw[2]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst107|selregw\(2));

-- Location: LCCOMB_X59_Y50_N4
\inst3|inst206|comb~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~13_combout\ = (\inst3|inst206|Equal0~1_combout\) # ((\inst3|inst206|Equal1~1_combout\ & !\inst|inst5|valor_interno\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal1~1_combout\,
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst|inst5|valor_interno\(22),
	combout => \inst3|inst206|comb~13_combout\);

-- Location: LCCOMB_X59_Y50_N26
\inst3|inst206|comb~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~12_combout\ = (!\inst3|inst206|Equal0~1_combout\ & (\inst3|inst206|selregr[3]~0_combout\ & ((\inst|inst5|valor_interno\(22)) # (!\inst3|inst206|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal1~1_combout\,
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst|inst5|valor_interno\(22),
	datad => \inst3|inst206|selregr[3]~0_combout\,
	combout => \inst3|inst206|comb~12_combout\);

-- Location: LCCOMB_X59_Y50_N6
\inst3|inst206|selregw[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregw\(0) = (!\inst3|inst206|comb~12_combout\ & ((\inst3|inst206|comb~13_combout\) # (\inst3|inst206|selregw\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|comb~13_combout\,
	datac => \inst3|inst206|comb~12_combout\,
	datad => \inst3|inst206|selregw\(0),
	combout => \inst3|inst206|selregw\(0));

-- Location: FF_X59_Y50_N7
\inst3|inst10|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst206|selregw\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregw\(0));

-- Location: LCCOMB_X55_Y51_N0
\inst2|inst107|selregw[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst107|selregw[0]~feeder_combout\ = \inst3|inst10|selregw\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst10|selregw\(0),
	combout => \inst2|inst107|selregw[0]~feeder_combout\);

-- Location: FF_X55_Y51_N1
\inst2|inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst107|selregw[0]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst107|selregw\(0));

-- Location: LCCOMB_X55_Y51_N30
\inst3|inst700666|inst1000|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal0~0_combout\ = (\inst2|inst107|selregw\(2) & !\inst2|inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst107|selregw\(2),
	datad => \inst2|inst107|selregw\(0),
	combout => \inst3|inst700666|inst1000|Equal0~0_combout\);

-- Location: FF_X58_Y51_N31
\inst3|inst700666|ACCB|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[3]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(3));

-- Location: LCCOMB_X56_Y50_N20
\inst3|inst202|OP2[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(3) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & (\inst3|inst700666|ACCB|SALIDA\(3) & \inst3|inst206|selregr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(3),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP2\(3));

-- Location: FF_X55_Y50_N31
\inst3|inst8|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(3),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(3));

-- Location: LCCOMB_X57_Y51_N28
\inst3|inst700666|ACCA|SALIDA[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[3]~feeder_combout\ = \inst2|inst6|SALIDA\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(3),
	combout => \inst3|inst700666|ACCA|SALIDA[3]~feeder_combout\);

-- Location: LCCOMB_X55_Y51_N20
\inst3|inst700666|inst1000|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal0~1_combout\ = (!\inst2|inst107|selregw\(2) & \inst2|inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst107|selregw\(2),
	datad => \inst2|inst107|selregw\(0),
	combout => \inst3|inst700666|inst1000|Equal0~1_combout\);

-- Location: FF_X57_Y51_N29
\inst3|inst700666|ACCA|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[3]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(3));

-- Location: LCCOMB_X56_Y50_N10
\inst3|inst202|OP1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(3) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(3) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCA|SALIDA\(3),
	combout => \inst3|inst202|OP1\(3));

-- Location: FF_X55_Y50_N25
\inst3|inst700|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(3),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(3));

-- Location: LCCOMB_X57_Y50_N26
\inst3|inst206|selop[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selop\(2) = (!\inst3|inst206|comb~9_combout\ & ((\inst3|inst206|comb~14_combout\) # (\inst3|inst206|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~9_combout\,
	datac => \inst3|inst206|comb~14_combout\,
	datad => \inst3|inst206|selop\(2),
	combout => \inst3|inst206|selop\(2));

-- Location: LCCOMB_X57_Y50_N14
\inst3|inst10|selop[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst10|selop[2]~feeder_combout\ = \inst3|inst206|selop\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst206|selop\(2),
	combout => \inst3|inst10|selop[2]~feeder_combout\);

-- Location: FF_X57_Y50_N15
\inst3|inst10|selop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~q\,
	d => \inst3|inst10|selop[2]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selop\(2));

-- Location: LCCOMB_X52_Y50_N4
\inst3|inst206|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~5_combout\ = (!\inst3|inst206|Equal0~1_combout\ & (((\inst3|inst206|Equal4~0_combout\) # (\inst3|inst206|Equal3~1_combout\)) # (!\inst3|inst206|comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~4_combout\,
	datab => \inst3|inst206|Equal4~0_combout\,
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst206|Equal3~1_combout\,
	combout => \inst3|inst206|comb~5_combout\);

-- Location: LCCOMB_X52_Y50_N24
\inst3|inst206|selop[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selop\(0) = (!\inst3|inst206|comb~5_combout\ & ((\inst3|inst206|Equal0~1_combout\) # (\inst3|inst206|selop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst3|inst206|comb~5_combout\,
	datad => \inst3|inst206|selop\(0),
	combout => \inst3|inst206|selop\(0));

-- Location: FF_X56_Y49_N9
\inst3|inst10|selop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst206|selop\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selop\(0));

-- Location: LCCOMB_X57_Y51_N30
\inst3|inst700666|ACCA|SALIDA[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[2]~feeder_combout\ = \inst2|inst6|SALIDA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(2),
	combout => \inst3|inst700666|ACCA|SALIDA[2]~feeder_combout\);

-- Location: FF_X57_Y51_N31
\inst3|inst700666|ACCA|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[2]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(2));

-- Location: LCCOMB_X56_Y50_N8
\inst3|inst202|OP1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(2) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(2) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCA|SALIDA\(2),
	combout => \inst3|inst202|OP1\(2));

-- Location: FF_X55_Y50_N19
\inst3|inst700|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(2),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(2));

-- Location: LCCOMB_X58_Y49_N0
\inst|inst1|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux30~0_combout\ = (!\inst|inst3|SALIDA\(2) & (\inst|inst3|SALIDA\(0) & \inst|inst1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(2),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst1|Mux10~0_combout\,
	combout => \inst|inst1|Mux30~0_combout\);

-- Location: FF_X58_Y49_N1
\inst|inst5|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst1|Mux30~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(1));

-- Location: LCCOMB_X57_Y51_N8
\inst3|inst700666|ACCA|SALIDA[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[1]~feeder_combout\ = \inst2|inst6|SALIDA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(1),
	combout => \inst3|inst700666|ACCA|SALIDA[1]~feeder_combout\);

-- Location: FF_X57_Y51_N9
\inst3|inst700666|ACCA|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[1]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(1));

-- Location: LCCOMB_X56_Y50_N24
\inst3|inst202|OP1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(1) = (\inst3|inst700666|ACCA|SALIDA\(1) & (\inst3|inst206|selregr\(0) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCA|SALIDA\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP1\(1));

-- Location: FF_X56_Y50_N25
\inst3|inst700|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(1),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(1));

-- Location: LCCOMB_X57_Y51_N14
\inst3|inst700666|ACCA|SALIDA[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[0]~feeder_combout\ = \inst2|inst6|SALIDA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(0),
	combout => \inst3|inst700666|ACCA|SALIDA[0]~feeder_combout\);

-- Location: FF_X57_Y51_N15
\inst3|inst700666|ACCA|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[0]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(0));

-- Location: LCCOMB_X56_Y50_N30
\inst3|inst202|OP1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(0) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(0) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCA|SALIDA\(0),
	combout => \inst3|inst202|OP1\(0));

-- Location: FF_X55_Y50_N7
\inst3|inst700|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(0));

-- Location: LCCOMB_X55_Y51_N16
\inst3|inst700666|ACCB|SALIDA[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[0]~feeder_combout\ = \inst2|inst6|SALIDA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(0),
	combout => \inst3|inst700666|ACCB|SALIDA[0]~feeder_combout\);

-- Location: FF_X55_Y51_N17
\inst3|inst700666|ACCB|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[0]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(0));

-- Location: LCCOMB_X54_Y51_N30
\inst3|inst202|OP2[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(0) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(0),
	combout => \inst3|inst202|OP2\(0));

-- Location: FF_X55_Y50_N17
\inst3|inst8|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(0));

-- Location: LCCOMB_X52_Y50_N22
\inst3|inst206|selfalgs[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selfalgs\(1) = (!\inst3|inst206|comb~5_combout\ & ((\inst3|inst206|selfalgs\(1)) # (\inst3|inst206|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selfalgs\(1),
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst3|inst206|comb~5_combout\,
	combout => \inst3|inst206|selfalgs\(1));

-- Location: FF_X52_Y50_N23
\inst3|inst10|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst206|selfalgs\(1),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(1));

-- Location: LCCOMB_X56_Y49_N6
\inst2|inst2|datow[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(15) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(15),
	combout => \inst2|inst2|datow\(15));

-- Location: FF_X56_Y49_N7
\inst2|inst6|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(15),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(15));

-- Location: FF_X55_Y49_N3
\inst3|inst700666|ACCA|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(15),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(15));

-- Location: LCCOMB_X54_Y49_N24
\inst3|inst202|OP1[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(15) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(15) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(15),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP1\(15));

-- Location: FF_X54_Y49_N25
\inst3|inst700|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(15),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(15));

-- Location: LCCOMB_X54_Y51_N18
\inst3|inst700666|ACCA|SALIDA[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\ = \inst2|inst6|SALIDA\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(14),
	combout => \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\);

-- Location: FF_X54_Y51_N19
\inst3|inst700666|ACCA|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(14));

-- Location: LCCOMB_X54_Y49_N22
\inst3|inst202|OP1[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(14) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(14) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(14),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP1\(14));

-- Location: FF_X54_Y49_N23
\inst3|inst700|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(14),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(14));

-- Location: LCCOMB_X55_Y51_N4
\inst3|inst700666|ACCB|SALIDA[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\ = \inst2|inst6|SALIDA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(13),
	combout => \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\);

-- Location: FF_X55_Y51_N5
\inst3|inst700666|ACCB|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[13]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(13));

-- Location: LCCOMB_X54_Y49_N28
\inst3|inst202|OP2[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(13) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(13),
	combout => \inst3|inst202|OP2\(13));

-- Location: FF_X54_Y49_N29
\inst3|inst8|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(13),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(13));

-- Location: LCCOMB_X57_Y49_N4
\inst2|inst|opres[13]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[13]~27_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(13) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst700|SALIDA\(13)))) # (!\inst3|inst8|SALIDA\(13) & (\inst3|inst700|SALIDA\(13))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(13),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst700|SALIDA\(13),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[13]~27_combout\);

-- Location: FF_X55_Y49_N11
\inst3|inst700666|ACCA|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(12),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(12));

-- Location: LCCOMB_X54_Y49_N18
\inst3|inst202|OP1[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(12) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(12) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(12),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP1\(12));

-- Location: FF_X55_Y49_N9
\inst3|inst700|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(12),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(12));

-- Location: FF_X55_Y50_N29
\inst3|inst700666|ACCA|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(11),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(11));

-- Location: LCCOMB_X56_Y50_N6
\inst3|inst202|OP1[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(11) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(11) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCA|SALIDA\(11),
	combout => \inst3|inst202|OP1\(11));

-- Location: FF_X56_Y50_N7
\inst3|inst700|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(11),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(11));

-- Location: LCCOMB_X54_Y51_N10
\inst3|inst700666|ACCA|SALIDA[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[10]~feeder_combout\ = \inst2|inst6|SALIDA\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(10),
	combout => \inst3|inst700666|ACCA|SALIDA[10]~feeder_combout\);

-- Location: FF_X54_Y51_N11
\inst3|inst700666|ACCA|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[10]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(10));

-- Location: LCCOMB_X54_Y51_N12
\inst3|inst202|OP1[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(10) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(10) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(10),
	combout => \inst3|inst202|OP1\(10));

-- Location: FF_X55_Y49_N25
\inst3|inst700|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(10),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(10));

-- Location: LCCOMB_X54_Y51_N20
\inst3|inst700666|ACCA|SALIDA[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[9]~feeder_combout\ = \inst2|inst6|SALIDA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(9),
	combout => \inst3|inst700666|ACCA|SALIDA[9]~feeder_combout\);

-- Location: FF_X54_Y51_N21
\inst3|inst700666|ACCA|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[9]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(9));

-- Location: LCCOMB_X54_Y49_N4
\inst3|inst202|OP1[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(9) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(9) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCA|SALIDA\(9),
	combout => \inst3|inst202|OP1\(9));

-- Location: FF_X55_Y49_N1
\inst3|inst700|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(9),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(9));

-- Location: LCCOMB_X54_Y49_N8
\inst2|inst|opres[9]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[9]~19_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(9) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst700|SALIDA\(9)))) # (!\inst3|inst8|SALIDA\(9) & (\inst3|inst700|SALIDA\(9))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst8|SALIDA\(9),
	datac => \inst3|inst700|SALIDA\(9),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[9]~19_combout\);

-- Location: LCCOMB_X56_Y51_N30
\inst3|inst700666|ACCA|SALIDA[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[8]~feeder_combout\ = \inst2|inst6|SALIDA\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(8),
	combout => \inst3|inst700666|ACCA|SALIDA[8]~feeder_combout\);

-- Location: FF_X56_Y51_N31
\inst3|inst700666|ACCA|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[8]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(8));

-- Location: LCCOMB_X56_Y50_N0
\inst3|inst202|OP1[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(8) = (\inst3|inst700666|ACCA|SALIDA\(8) & (\inst3|inst206|selregr\(0) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(8),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP1\(8));

-- Location: FF_X55_Y49_N29
\inst3|inst700|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(8),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(8));

-- Location: FF_X56_Y51_N9
\inst3|inst700666|ACCA|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(7),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(7));

-- Location: LCCOMB_X56_Y50_N26
\inst3|inst202|OP1[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(7) = (\inst3|inst700666|ACCA|SALIDA\(7) & (\inst3|inst206|selregr\(0) & ((\inst3|inst206|selsrc\(1)) # (\inst3|inst206|selsrc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(7),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP1\(7));

-- Location: FF_X55_Y50_N3
\inst3|inst700|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(7),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(7));

-- Location: LCCOMB_X56_Y50_N16
\inst2|inst|opres[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[7]~15_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(7) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst700|SALIDA\(7)))) # (!\inst3|inst8|SALIDA\(7) & (\inst3|inst700|SALIDA\(7))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(7),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst700|SALIDA\(7),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[7]~15_combout\);

-- Location: LCCOMB_X55_Y51_N12
\inst3|inst700666|ACCB|SALIDA[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[6]~feeder_combout\ = \inst2|inst6|SALIDA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(6),
	combout => \inst3|inst700666|ACCB|SALIDA[6]~feeder_combout\);

-- Location: FF_X55_Y51_N13
\inst3|inst700666|ACCB|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[6]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(6));

-- Location: LCCOMB_X55_Y50_N4
\inst3|inst202|OP2[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(6) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst700666|ACCB|SALIDA\(6) & \inst3|inst206|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCB|SALIDA\(6),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP2\(6));

-- Location: FF_X55_Y50_N5
\inst3|inst8|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(6),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(6));

-- Location: FF_X56_Y51_N15
\inst3|inst700666|ACCA|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(5),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(5));

-- Location: LCCOMB_X56_Y51_N14
\inst3|inst202|OP1[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(5) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(5) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCA|SALIDA\(5),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP1\(5));

-- Location: FF_X55_Y50_N21
\inst3|inst700|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(5),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(5));

-- Location: LCCOMB_X55_Y51_N8
\inst3|inst700666|ACCB|SALIDA[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[4]~feeder_combout\ = \inst2|inst6|SALIDA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(4),
	combout => \inst3|inst700666|ACCB|SALIDA[4]~feeder_combout\);

-- Location: FF_X55_Y51_N9
\inst3|inst700666|ACCB|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[4]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(4));

-- Location: LCCOMB_X55_Y50_N0
\inst3|inst202|OP2[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(4) = (\inst3|inst206|selsrc\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & \inst3|inst700666|ACCB|SALIDA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(4),
	combout => \inst3|inst202|OP2\(4));

-- Location: FF_X55_Y50_N1
\inst3|inst8|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(4),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(4));

-- Location: LCCOMB_X55_Y50_N22
\inst2|inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~8_combout\ = ((\inst3|inst8|SALIDA\(3) $ (\inst3|inst700|SALIDA\(3) $ (!\inst2|inst|Add0~7\)))) # (GND)
-- \inst2|inst|Add0~9\ = CARRY((\inst3|inst8|SALIDA\(3) & ((\inst3|inst700|SALIDA\(3)) # (!\inst2|inst|Add0~7\))) # (!\inst3|inst8|SALIDA\(3) & (\inst3|inst700|SALIDA\(3) & !\inst2|inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(3),
	datab => \inst3|inst700|SALIDA\(3),
	datad => VCC,
	cin => \inst2|inst|Add0~7\,
	combout => \inst2|inst|Add0~8_combout\,
	cout => \inst2|inst|Add0~9\);

-- Location: LCCOMB_X55_Y50_N24
\inst2|inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~10_combout\ = (\inst3|inst700|SALIDA\(4) & ((\inst3|inst8|SALIDA\(4) & (\inst2|inst|Add0~9\ & VCC)) # (!\inst3|inst8|SALIDA\(4) & (!\inst2|inst|Add0~9\)))) # (!\inst3|inst700|SALIDA\(4) & ((\inst3|inst8|SALIDA\(4) & 
-- (!\inst2|inst|Add0~9\)) # (!\inst3|inst8|SALIDA\(4) & ((\inst2|inst|Add0~9\) # (GND)))))
-- \inst2|inst|Add0~11\ = CARRY((\inst3|inst700|SALIDA\(4) & (!\inst3|inst8|SALIDA\(4) & !\inst2|inst|Add0~9\)) # (!\inst3|inst700|SALIDA\(4) & ((!\inst2|inst|Add0~9\) # (!\inst3|inst8|SALIDA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(4),
	datab => \inst3|inst8|SALIDA\(4),
	datad => VCC,
	cin => \inst2|inst|Add0~9\,
	combout => \inst2|inst|Add0~10_combout\,
	cout => \inst2|inst|Add0~11\);

-- Location: LCCOMB_X58_Y50_N4
\inst2|inst|opres[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[4]~9_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & (\inst2|inst|Add0~10_combout\)) # (!\inst3|inst10|selop\(0) & ((\inst3|inst700|SALIDA\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Add0~10_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst700|SALIDA\(5),
	combout => \inst2|inst|opres[4]~9_combout\);

-- Location: LCCOMB_X58_Y50_N6
\inst2|inst|opres[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[4]~10_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(4) & ((!\inst3|inst700|SALIDA\(4)) # (!\inst2|inst|opres[4]~9_combout\))) # (!\inst3|inst8|SALIDA\(4) & ((\inst3|inst700|SALIDA\(4)))))) # (!\inst3|inst10|selop\(2) & 
-- (\inst2|inst|opres[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[4]~9_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst8|SALIDA\(4),
	datad => \inst3|inst700|SALIDA\(4),
	combout => \inst2|inst|opres[4]~10_combout\);

-- Location: LCCOMB_X56_Y49_N8
\inst2|inst|opres[16]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[16]~2_combout\ = (!\inst3|inst10|selop\(0) & !\inst3|inst10|selop\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[16]~2_combout\);

-- Location: CLKCTRL_G11
\inst2|inst|opres[16]~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst|opres[16]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst|opres[16]~2clkctrl_outclk\);

-- Location: LCCOMB_X58_Y50_N8
\inst2|inst|opres[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(4) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres\(4))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(4),
	datac => \inst2|inst|opres[4]~10_combout\,
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(4));

-- Location: LCCOMB_X58_Y50_N28
\inst2|inst2|datow[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(4) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datac => \inst2|inst|opres\(4),
	combout => \inst2|inst2|datow\(4));

-- Location: FF_X58_Y50_N29
\inst2|inst6|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(4),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(4));

-- Location: LCCOMB_X57_Y51_N10
\inst3|inst700666|ACCA|SALIDA[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[4]~feeder_combout\ = \inst2|inst6|SALIDA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(4),
	combout => \inst3|inst700666|ACCA|SALIDA[4]~feeder_combout\);

-- Location: FF_X57_Y51_N11
\inst3|inst700666|ACCA|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[4]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(4));

-- Location: LCCOMB_X56_Y50_N14
\inst3|inst202|OP1[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(4) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(4) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCA|SALIDA\(4),
	combout => \inst3|inst202|OP1\(4));

-- Location: FF_X55_Y50_N23
\inst3|inst700|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(4),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(4));

-- Location: LCCOMB_X55_Y50_N26
\inst2|inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~12_combout\ = ((\inst3|inst8|SALIDA\(5) $ (\inst3|inst700|SALIDA\(5) $ (!\inst2|inst|Add0~11\)))) # (GND)
-- \inst2|inst|Add0~13\ = CARRY((\inst3|inst8|SALIDA\(5) & ((\inst3|inst700|SALIDA\(5)) # (!\inst2|inst|Add0~11\))) # (!\inst3|inst8|SALIDA\(5) & (\inst3|inst700|SALIDA\(5) & !\inst2|inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(5),
	datab => \inst3|inst700|SALIDA\(5),
	datad => VCC,
	cin => \inst2|inst|Add0~11\,
	combout => \inst2|inst|Add0~12_combout\,
	cout => \inst2|inst|Add0~13\);

-- Location: LCCOMB_X58_Y50_N24
\inst2|inst|opres[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[5]~11_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(5) & ((!\inst3|inst700|SALIDA\(5)) # (!\inst3|inst10|selop\(0)))) # (!\inst3|inst8|SALIDA\(5) & ((\inst3|inst700|SALIDA\(5)))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(5),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst700|SALIDA\(5),
	combout => \inst2|inst|opres[5]~11_combout\);

-- Location: LCCOMB_X58_Y50_N14
\inst2|inst|opres[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[5]~12_combout\ = (\inst2|inst|opres[5]~11_combout\ & (((\inst2|inst|Add0~12_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[5]~11_combout\ & (\inst3|inst700|SALIDA\(6) & ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(6),
	datab => \inst2|inst|Add0~12_combout\,
	datac => \inst2|inst|opres[5]~11_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[5]~12_combout\);

-- Location: LCCOMB_X58_Y50_N18
\inst2|inst|opres[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(5) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres\(5))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres[5]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(5),
	datac => \inst2|inst|opres[5]~12_combout\,
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(5));

-- Location: LCCOMB_X58_Y50_N10
\inst2|inst2|datow[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(5) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(5),
	combout => \inst2|inst2|datow\(5));

-- Location: FF_X58_Y50_N11
\inst2|inst6|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(5),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(5));

-- Location: LCCOMB_X55_Y51_N2
\inst3|inst700666|ACCB|SALIDA[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[5]~feeder_combout\ = \inst2|inst6|SALIDA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(5),
	combout => \inst3|inst700666|ACCB|SALIDA[5]~feeder_combout\);

-- Location: FF_X55_Y51_N3
\inst3|inst700666|ACCB|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[5]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(5));

-- Location: LCCOMB_X55_Y50_N10
\inst3|inst202|OP2[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(5) = (\inst3|inst206|selsrc\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst700666|ACCB|SALIDA\(5) & \inst3|inst206|selregr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCB|SALIDA\(5),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP2\(5));

-- Location: FF_X55_Y50_N11
\inst3|inst8|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(5),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(5));

-- Location: LCCOMB_X55_Y50_N28
\inst2|inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~14_combout\ = (\inst3|inst700|SALIDA\(6) & ((\inst3|inst8|SALIDA\(6) & (\inst2|inst|Add0~13\ & VCC)) # (!\inst3|inst8|SALIDA\(6) & (!\inst2|inst|Add0~13\)))) # (!\inst3|inst700|SALIDA\(6) & ((\inst3|inst8|SALIDA\(6) & 
-- (!\inst2|inst|Add0~13\)) # (!\inst3|inst8|SALIDA\(6) & ((\inst2|inst|Add0~13\) # (GND)))))
-- \inst2|inst|Add0~15\ = CARRY((\inst3|inst700|SALIDA\(6) & (!\inst3|inst8|SALIDA\(6) & !\inst2|inst|Add0~13\)) # (!\inst3|inst700|SALIDA\(6) & ((!\inst2|inst|Add0~13\) # (!\inst3|inst8|SALIDA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(6),
	datab => \inst3|inst8|SALIDA\(6),
	datad => VCC,
	cin => \inst2|inst|Add0~13\,
	combout => \inst2|inst|Add0~14_combout\,
	cout => \inst2|inst|Add0~15\);

-- Location: LCCOMB_X55_Y50_N2
\inst2|inst|opres[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[6]~13_combout\ = (\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~14_combout\) # ((\inst3|inst10|selop\(2))))) # (!\inst3|inst10|selop\(0) & (((\inst3|inst700|SALIDA\(7) & !\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst2|inst|Add0~14_combout\,
	datac => \inst3|inst700|SALIDA\(7),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[6]~13_combout\);

-- Location: LCCOMB_X57_Y50_N0
\inst2|inst|opres[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[6]~14_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(6) & ((!\inst2|inst|opres[6]~13_combout\) # (!\inst3|inst700|SALIDA\(6)))) # (!\inst3|inst8|SALIDA\(6) & (\inst3|inst700|SALIDA\(6))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst2|inst|opres[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst8|SALIDA\(6),
	datac => \inst3|inst700|SALIDA\(6),
	datad => \inst2|inst|opres[6]~13_combout\,
	combout => \inst2|inst|opres[6]~14_combout\);

-- Location: LCCOMB_X57_Y50_N24
\inst2|inst|opres[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(6) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres\(6)))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres[6]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[6]~14_combout\,
	datac => \inst2|inst|opres\(6),
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(6));

-- Location: LCCOMB_X57_Y50_N12
\inst2|inst2|datow[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(6) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(6),
	combout => \inst2|inst2|datow\(6));

-- Location: FF_X57_Y50_N13
\inst2|inst6|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(6),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(6));

-- Location: LCCOMB_X56_Y51_N12
\inst3|inst700666|ACCA|SALIDA[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[6]~feeder_combout\ = \inst2|inst6|SALIDA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(6),
	combout => \inst3|inst700666|ACCA|SALIDA[6]~feeder_combout\);

-- Location: FF_X56_Y51_N13
\inst3|inst700666|ACCA|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[6]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(6));

-- Location: LCCOMB_X56_Y50_N12
\inst3|inst202|OP1[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(6) = (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCA|SALIDA\(6) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(0),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst700666|ACCA|SALIDA\(6),
	combout => \inst3|inst202|OP1\(6));

-- Location: FF_X55_Y50_N27
\inst3|inst700|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(6),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(6));

-- Location: LCCOMB_X55_Y50_N30
\inst2|inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~16_combout\ = ((\inst3|inst8|SALIDA\(7) $ (\inst3|inst700|SALIDA\(7) $ (!\inst2|inst|Add0~15\)))) # (GND)
-- \inst2|inst|Add0~17\ = CARRY((\inst3|inst8|SALIDA\(7) & ((\inst3|inst700|SALIDA\(7)) # (!\inst2|inst|Add0~15\))) # (!\inst3|inst8|SALIDA\(7) & (\inst3|inst700|SALIDA\(7) & !\inst2|inst|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(7),
	datab => \inst3|inst700|SALIDA\(7),
	datad => VCC,
	cin => \inst2|inst|Add0~15\,
	combout => \inst2|inst|Add0~16_combout\,
	cout => \inst2|inst|Add0~17\);

-- Location: LCCOMB_X56_Y50_N22
\inst2|inst|opres[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[7]~16_combout\ = (\inst2|inst|opres[7]~15_combout\ & (((\inst2|inst|Add0~16_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[7]~15_combout\ & (\inst3|inst700|SALIDA\(8) & ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(8),
	datab => \inst2|inst|opres[7]~15_combout\,
	datac => \inst2|inst|Add0~16_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[7]~16_combout\);

-- Location: LCCOMB_X57_Y50_N20
\inst2|inst|opres[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(7) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres\(7))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres[7]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(7),
	datac => \inst2|inst|opres[7]~16_combout\,
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(7));

-- Location: LCCOMB_X57_Y50_N22
\inst2|inst2|datow[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(7) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(7),
	combout => \inst2|inst2|datow\(7));

-- Location: FF_X57_Y50_N23
\inst2|inst6|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(7),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(7));

-- Location: LCCOMB_X55_Y51_N22
\inst3|inst700666|ACCB|SALIDA[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[7]~feeder_combout\ = \inst2|inst6|SALIDA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(7),
	combout => \inst3|inst700666|ACCB|SALIDA[7]~feeder_combout\);

-- Location: FF_X55_Y51_N23
\inst3|inst700666|ACCB|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[7]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(7));

-- Location: LCCOMB_X55_Y50_N8
\inst3|inst202|OP2[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(7) = (\inst3|inst206|selsrc\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & \inst3|inst700666|ACCB|SALIDA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(7),
	combout => \inst3|inst202|OP2\(7));

-- Location: FF_X55_Y50_N9
\inst3|inst8|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(7),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(7));

-- Location: LCCOMB_X55_Y49_N0
\inst2|inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~18_combout\ = (\inst3|inst8|SALIDA\(8) & ((\inst3|inst700|SALIDA\(8) & (\inst2|inst|Add0~17\ & VCC)) # (!\inst3|inst700|SALIDA\(8) & (!\inst2|inst|Add0~17\)))) # (!\inst3|inst8|SALIDA\(8) & ((\inst3|inst700|SALIDA\(8) & 
-- (!\inst2|inst|Add0~17\)) # (!\inst3|inst700|SALIDA\(8) & ((\inst2|inst|Add0~17\) # (GND)))))
-- \inst2|inst|Add0~19\ = CARRY((\inst3|inst8|SALIDA\(8) & (!\inst3|inst700|SALIDA\(8) & !\inst2|inst|Add0~17\)) # (!\inst3|inst8|SALIDA\(8) & ((!\inst2|inst|Add0~17\) # (!\inst3|inst700|SALIDA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(8),
	datab => \inst3|inst700|SALIDA\(8),
	datad => VCC,
	cin => \inst2|inst|Add0~17\,
	combout => \inst2|inst|Add0~18_combout\,
	cout => \inst2|inst|Add0~19\);

-- Location: LCCOMB_X56_Y49_N20
\inst2|inst|opres[8]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[8]~17_combout\ = (\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~18_combout\) # ((\inst3|inst10|selop\(2))))) # (!\inst3|inst10|selop\(0) & (((\inst3|inst700|SALIDA\(9) & !\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Add0~18_combout\,
	datab => \inst3|inst700|SALIDA\(9),
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[8]~17_combout\);

-- Location: LCCOMB_X56_Y49_N10
\inst2|inst|opres[8]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[8]~18_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(8) & ((!\inst2|inst|opres[8]~17_combout\) # (!\inst3|inst700|SALIDA\(8)))) # (!\inst3|inst8|SALIDA\(8) & (\inst3|inst700|SALIDA\(8))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst2|inst|opres[8]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(8),
	datab => \inst3|inst700|SALIDA\(8),
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|opres[8]~17_combout\,
	combout => \inst2|inst|opres[8]~18_combout\);

-- Location: LCCOMB_X56_Y49_N0
\inst2|inst|opres[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(8) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres\(8)))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres[8]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[8]~18_combout\,
	datac => \inst2|inst|opres\(8),
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(8));

-- Location: LCCOMB_X56_Y49_N24
\inst2|inst2|datow[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(8) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(8),
	combout => \inst2|inst2|datow\(8));

-- Location: FF_X56_Y49_N25
\inst2|inst6|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(8),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(8));

-- Location: LCCOMB_X55_Y51_N24
\inst3|inst700666|ACCB|SALIDA[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[8]~feeder_combout\ = \inst2|inst6|SALIDA\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(8),
	combout => \inst3|inst700666|ACCB|SALIDA[8]~feeder_combout\);

-- Location: FF_X55_Y51_N25
\inst3|inst700666|ACCB|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[8]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(8));

-- Location: LCCOMB_X54_Y49_N26
\inst3|inst202|OP2[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(8) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(8),
	combout => \inst3|inst202|OP2\(8));

-- Location: FF_X55_Y49_N31
\inst3|inst8|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(8),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(8));

-- Location: LCCOMB_X55_Y49_N2
\inst2|inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~20_combout\ = ((\inst3|inst8|SALIDA\(9) $ (\inst3|inst700|SALIDA\(9) $ (!\inst2|inst|Add0~19\)))) # (GND)
-- \inst2|inst|Add0~21\ = CARRY((\inst3|inst8|SALIDA\(9) & ((\inst3|inst700|SALIDA\(9)) # (!\inst2|inst|Add0~19\))) # (!\inst3|inst8|SALIDA\(9) & (\inst3|inst700|SALIDA\(9) & !\inst2|inst|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(9),
	datab => \inst3|inst700|SALIDA\(9),
	datad => VCC,
	cin => \inst2|inst|Add0~19\,
	combout => \inst2|inst|Add0~20_combout\,
	cout => \inst2|inst|Add0~21\);

-- Location: LCCOMB_X54_Y49_N30
\inst2|inst|opres[9]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[9]~20_combout\ = (\inst2|inst|opres[9]~19_combout\ & (((\inst2|inst|Add0~20_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[9]~19_combout\ & (\inst3|inst700|SALIDA\(10) & ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[9]~19_combout\,
	datab => \inst3|inst700|SALIDA\(10),
	datac => \inst2|inst|Add0~20_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[9]~20_combout\);

-- Location: LCCOMB_X54_Y49_N16
\inst2|inst|opres[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(9) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres\(9))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres[9]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(9),
	datab => \inst2|inst|opres[9]~20_combout\,
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(9));

-- Location: LCCOMB_X54_Y49_N20
\inst2|inst2|datow[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(9) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(9),
	combout => \inst2|inst2|datow\(9));

-- Location: FF_X54_Y49_N21
\inst2|inst6|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(9),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(9));

-- Location: LCCOMB_X55_Y51_N6
\inst3|inst700666|ACCB|SALIDA[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[9]~feeder_combout\ = \inst2|inst6|SALIDA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(9),
	combout => \inst3|inst700666|ACCB|SALIDA[9]~feeder_combout\);

-- Location: FF_X55_Y51_N7
\inst3|inst700666|ACCB|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[9]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(9));

-- Location: LCCOMB_X54_Y49_N6
\inst3|inst202|OP2[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(9) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst700666|ACCB|SALIDA\(9) & \inst3|inst206|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst700666|ACCB|SALIDA\(9),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP2\(9));

-- Location: FF_X55_Y49_N13
\inst3|inst8|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(9),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(9));

-- Location: LCCOMB_X55_Y49_N4
\inst2|inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~22_combout\ = (\inst3|inst8|SALIDA\(10) & ((\inst3|inst700|SALIDA\(10) & (\inst2|inst|Add0~21\ & VCC)) # (!\inst3|inst700|SALIDA\(10) & (!\inst2|inst|Add0~21\)))) # (!\inst3|inst8|SALIDA\(10) & ((\inst3|inst700|SALIDA\(10) & 
-- (!\inst2|inst|Add0~21\)) # (!\inst3|inst700|SALIDA\(10) & ((\inst2|inst|Add0~21\) # (GND)))))
-- \inst2|inst|Add0~23\ = CARRY((\inst3|inst8|SALIDA\(10) & (!\inst3|inst700|SALIDA\(10) & !\inst2|inst|Add0~21\)) # (!\inst3|inst8|SALIDA\(10) & ((!\inst2|inst|Add0~21\) # (!\inst3|inst700|SALIDA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(10),
	datab => \inst3|inst700|SALIDA\(10),
	datad => VCC,
	cin => \inst2|inst|Add0~21\,
	combout => \inst2|inst|Add0~22_combout\,
	cout => \inst2|inst|Add0~23\);

-- Location: LCCOMB_X55_Y49_N18
\inst2|inst|opres[10]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[10]~21_combout\ = (\inst3|inst10|selop\(0) & (((\inst2|inst|Add0~22_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst3|inst10|selop\(0) & (\inst3|inst700|SALIDA\(11) & ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst3|inst700|SALIDA\(11),
	datac => \inst2|inst|Add0~22_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[10]~21_combout\);

-- Location: LCCOMB_X54_Y49_N12
\inst2|inst|opres[10]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[10]~22_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(10) & ((!\inst3|inst700|SALIDA\(10)) # (!\inst2|inst|opres[10]~21_combout\))) # (!\inst3|inst8|SALIDA\(10) & ((\inst3|inst700|SALIDA\(10)))))) # 
-- (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[10]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst8|SALIDA\(10),
	datac => \inst2|inst|opres[10]~21_combout\,
	datad => \inst3|inst700|SALIDA\(10),
	combout => \inst2|inst|opres[10]~22_combout\);

-- Location: LCCOMB_X54_Y49_N2
\inst2|inst|opres[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(10) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres\(10)))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres[10]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[10]~22_combout\,
	datac => \inst2|inst|opres\(10),
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(10));

-- Location: LCCOMB_X54_Y49_N10
\inst2|inst2|datow[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(10) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(10),
	combout => \inst2|inst2|datow\(10));

-- Location: FF_X54_Y49_N11
\inst2|inst6|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(10),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(10));

-- Location: FF_X55_Y51_N29
\inst3|inst700666|ACCB|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(10),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(10));

-- Location: LCCOMB_X55_Y51_N28
\inst3|inst202|OP2[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(10) = (\inst3|inst206|selsrc\(0) & (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(10) & !\inst3|inst206|selsrc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(10),
	datad => \inst3|inst206|selsrc\(1),
	combout => \inst3|inst202|OP2\(10));

-- Location: FF_X55_Y49_N5
\inst3|inst8|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(10),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(10));

-- Location: LCCOMB_X55_Y49_N6
\inst2|inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~24_combout\ = ((\inst3|inst8|SALIDA\(11) $ (\inst3|inst700|SALIDA\(11) $ (!\inst2|inst|Add0~23\)))) # (GND)
-- \inst2|inst|Add0~25\ = CARRY((\inst3|inst8|SALIDA\(11) & ((\inst3|inst700|SALIDA\(11)) # (!\inst2|inst|Add0~23\))) # (!\inst3|inst8|SALIDA\(11) & (\inst3|inst700|SALIDA\(11) & !\inst2|inst|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(11),
	datab => \inst3|inst700|SALIDA\(11),
	datad => VCC,
	cin => \inst2|inst|Add0~23\,
	combout => \inst2|inst|Add0~24_combout\,
	cout => \inst2|inst|Add0~25\);

-- Location: LCCOMB_X56_Y49_N12
\inst2|inst|opres[11]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[11]~23_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(11) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst8|SALIDA\(11)))) # (!\inst3|inst700|SALIDA\(11) & (\inst3|inst8|SALIDA\(11))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(11),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst8|SALIDA\(11),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[11]~23_combout\);

-- Location: LCCOMB_X56_Y49_N14
\inst2|inst|opres[11]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[11]~24_combout\ = (\inst3|inst10|selop\(2) & (((\inst2|inst|opres[11]~23_combout\)))) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[11]~23_combout\ & (\inst2|inst|Add0~24_combout\)) # (!\inst2|inst|opres[11]~23_combout\ & 
-- ((\inst3|inst700|SALIDA\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Add0~24_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|opres[11]~23_combout\,
	datad => \inst3|inst700|SALIDA\(12),
	combout => \inst2|inst|opres[11]~24_combout\);

-- Location: LCCOMB_X57_Y49_N18
\inst2|inst|opres[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(11) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres\(11)))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres[11]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[11]~24_combout\,
	datab => \inst2|inst|opres\(11),
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(11));

-- Location: LCCOMB_X57_Y49_N2
\inst2|inst2|datow[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(11) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(11),
	combout => \inst2|inst2|datow\(11));

-- Location: FF_X57_Y49_N3
\inst2|inst6|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(11),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(11));

-- Location: LCCOMB_X54_Y50_N20
\inst3|inst700666|ACCB|SALIDA[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[11]~feeder_combout\ = \inst2|inst6|SALIDA\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(11),
	combout => \inst3|inst700666|ACCB|SALIDA[11]~feeder_combout\);

-- Location: FF_X54_Y50_N21
\inst3|inst700666|ACCB|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[11]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(11));

-- Location: LCCOMB_X54_Y49_N0
\inst3|inst202|OP2[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(11) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(11),
	combout => \inst3|inst202|OP2\(11));

-- Location: FF_X55_Y49_N7
\inst3|inst8|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(11),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(11));

-- Location: LCCOMB_X55_Y49_N8
\inst2|inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~26_combout\ = (\inst3|inst8|SALIDA\(12) & ((\inst3|inst700|SALIDA\(12) & (\inst2|inst|Add0~25\ & VCC)) # (!\inst3|inst700|SALIDA\(12) & (!\inst2|inst|Add0~25\)))) # (!\inst3|inst8|SALIDA\(12) & ((\inst3|inst700|SALIDA\(12) & 
-- (!\inst2|inst|Add0~25\)) # (!\inst3|inst700|SALIDA\(12) & ((\inst2|inst|Add0~25\) # (GND)))))
-- \inst2|inst|Add0~27\ = CARRY((\inst3|inst8|SALIDA\(12) & (!\inst3|inst700|SALIDA\(12) & !\inst2|inst|Add0~25\)) # (!\inst3|inst8|SALIDA\(12) & ((!\inst2|inst|Add0~25\) # (!\inst3|inst700|SALIDA\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(12),
	datab => \inst3|inst700|SALIDA\(12),
	datad => VCC,
	cin => \inst2|inst|Add0~25\,
	combout => \inst2|inst|Add0~26_combout\,
	cout => \inst2|inst|Add0~27\);

-- Location: LCCOMB_X56_Y49_N28
\inst2|inst|opres[12]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[12]~25_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~26_combout\))) # (!\inst3|inst10|selop\(0) & (\inst3|inst700|SALIDA\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst700|SALIDA\(13),
	datac => \inst2|inst|Add0~26_combout\,
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[12]~25_combout\);

-- Location: LCCOMB_X56_Y49_N16
\inst2|inst|opres[12]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[12]~26_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(12) & ((!\inst3|inst700|SALIDA\(12)) # (!\inst2|inst|opres[12]~25_combout\))) # (!\inst3|inst8|SALIDA\(12) & ((\inst3|inst700|SALIDA\(12)))))) # 
-- (!\inst3|inst10|selop\(2) & (\inst2|inst|opres[12]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|opres[12]~25_combout\,
	datac => \inst3|inst8|SALIDA\(12),
	datad => \inst3|inst700|SALIDA\(12),
	combout => \inst2|inst|opres[12]~26_combout\);

-- Location: LCCOMB_X56_Y49_N18
\inst2|inst|opres[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(12) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres\(12)))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres[12]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[12]~26_combout\,
	datac => \inst2|inst|opres\(12),
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(12));

-- Location: LCCOMB_X56_Y49_N4
\inst2|inst2|datow[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(12) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(12),
	combout => \inst2|inst2|datow\(12));

-- Location: FF_X56_Y49_N5
\inst2|inst6|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(12),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(12));

-- Location: LCCOMB_X55_Y51_N10
\inst3|inst700666|ACCB|SALIDA[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[12]~feeder_combout\ = \inst2|inst6|SALIDA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(12),
	combout => \inst3|inst700666|ACCB|SALIDA[12]~feeder_combout\);

-- Location: FF_X55_Y51_N11
\inst3|inst700666|ACCB|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[12]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(12));

-- Location: LCCOMB_X55_Y49_N26
\inst3|inst202|OP2[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(12) = (\inst3|inst700666|ACCB|SALIDA\(12) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & \inst3|inst206|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCB|SALIDA\(12),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selregr\(0),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP2\(12));

-- Location: FF_X55_Y49_N27
\inst3|inst8|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(12),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(12));

-- Location: LCCOMB_X55_Y49_N10
\inst2|inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~28_combout\ = ((\inst3|inst700|SALIDA\(13) $ (\inst3|inst8|SALIDA\(13) $ (!\inst2|inst|Add0~27\)))) # (GND)
-- \inst2|inst|Add0~29\ = CARRY((\inst3|inst700|SALIDA\(13) & ((\inst3|inst8|SALIDA\(13)) # (!\inst2|inst|Add0~27\))) # (!\inst3|inst700|SALIDA\(13) & (\inst3|inst8|SALIDA\(13) & !\inst2|inst|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(13),
	datab => \inst3|inst8|SALIDA\(13),
	datad => VCC,
	cin => \inst2|inst|Add0~27\,
	combout => \inst2|inst|Add0~28_combout\,
	cout => \inst2|inst|Add0~29\);

-- Location: LCCOMB_X57_Y49_N6
\inst2|inst|opres[13]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[13]~28_combout\ = (\inst2|inst|opres[13]~27_combout\ & (((\inst2|inst|Add0~28_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[13]~27_combout\ & (\inst3|inst700|SALIDA\(14) & ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[13]~27_combout\,
	datab => \inst3|inst700|SALIDA\(14),
	datac => \inst2|inst|Add0~28_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[13]~28_combout\);

-- Location: LCCOMB_X57_Y49_N0
\inst2|inst|opres[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(13) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres\(13))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres[13]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(13),
	datac => \inst2|inst|opres[13]~28_combout\,
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(13));

-- Location: LCCOMB_X57_Y49_N16
\inst2|inst2|datow[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(13) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(13),
	combout => \inst2|inst2|datow\(13));

-- Location: FF_X57_Y49_N17
\inst2|inst6|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(13),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(13));

-- Location: FF_X55_Y49_N15
\inst3|inst700666|ACCA|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(13),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(13));

-- Location: LCCOMB_X54_Y49_N14
\inst3|inst202|OP1[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(13) = (\inst3|inst700666|ACCA|SALIDA\(13) & (\inst3|inst206|selregr\(0) & ((\inst3|inst206|selsrc\(0)) # (\inst3|inst206|selsrc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datab => \inst3|inst700666|ACCA|SALIDA\(13),
	datac => \inst3|inst206|selsrc\(1),
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst202|OP1\(13));

-- Location: FF_X54_Y49_N15
\inst3|inst700|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP1\(13),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(13));

-- Location: LCCOMB_X55_Y49_N12
\inst2|inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~30_combout\ = (\inst3|inst8|SALIDA\(14) & ((\inst3|inst700|SALIDA\(14) & (\inst2|inst|Add0~29\ & VCC)) # (!\inst3|inst700|SALIDA\(14) & (!\inst2|inst|Add0~29\)))) # (!\inst3|inst8|SALIDA\(14) & ((\inst3|inst700|SALIDA\(14) & 
-- (!\inst2|inst|Add0~29\)) # (!\inst3|inst700|SALIDA\(14) & ((\inst2|inst|Add0~29\) # (GND)))))
-- \inst2|inst|Add0~31\ = CARRY((\inst3|inst8|SALIDA\(14) & (!\inst3|inst700|SALIDA\(14) & !\inst2|inst|Add0~29\)) # (!\inst3|inst8|SALIDA\(14) & ((!\inst2|inst|Add0~29\) # (!\inst3|inst700|SALIDA\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(14),
	datab => \inst3|inst700|SALIDA\(14),
	datad => VCC,
	cin => \inst2|inst|Add0~29\,
	combout => \inst2|inst|Add0~30_combout\,
	cout => \inst2|inst|Add0~31\);

-- Location: LCCOMB_X56_Y49_N30
\inst2|inst|opres[14]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[14]~29_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & ((\inst2|inst|Add0~30_combout\))) # (!\inst3|inst10|selop\(0) & (\inst3|inst700|SALIDA\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(15),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst10|selop\(0),
	datad => \inst2|inst|Add0~30_combout\,
	combout => \inst2|inst|opres[14]~29_combout\);

-- Location: LCCOMB_X57_Y49_N20
\inst2|inst|opres[14]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[14]~30_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(14) & ((!\inst2|inst|opres[14]~29_combout\) # (!\inst3|inst700|SALIDA\(14)))) # (!\inst3|inst8|SALIDA\(14) & (\inst3|inst700|SALIDA\(14))))) # (!\inst3|inst10|selop\(2) 
-- & (((\inst2|inst|opres[14]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(14),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst700|SALIDA\(14),
	datad => \inst2|inst|opres[14]~29_combout\,
	combout => \inst2|inst|opres[14]~30_combout\);

-- Location: LCCOMB_X57_Y49_N10
\inst2|inst|opres[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(14) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres\(14)))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres[14]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[14]~30_combout\,
	datac => \inst2|inst|opres\(14),
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(14));

-- Location: LCCOMB_X57_Y49_N26
\inst2|inst2|datow[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(14) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(14),
	combout => \inst2|inst2|datow\(14));

-- Location: FF_X57_Y49_N27
\inst2|inst6|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(14),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(14));

-- Location: FF_X54_Y51_N17
\inst3|inst700666|ACCB|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(14),
	clrn => \RESET~input_o\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(14));

-- Location: LCCOMB_X54_Y51_N16
\inst3|inst202|OP2[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(14) = (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & (\inst3|inst700666|ACCB|SALIDA\(14) & \inst3|inst206|selsrc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst3|inst700666|ACCB|SALIDA\(14),
	datad => \inst3|inst206|selsrc\(0),
	combout => \inst3|inst202|OP2\(14));

-- Location: FF_X55_Y49_N17
\inst3|inst8|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(14),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(14));

-- Location: LCCOMB_X55_Y49_N14
\inst2|inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~32_combout\ = ((\inst3|inst8|SALIDA\(15) $ (\inst3|inst700|SALIDA\(15) $ (!\inst2|inst|Add0~31\)))) # (GND)
-- \inst2|inst|Add0~33\ = CARRY((\inst3|inst8|SALIDA\(15) & ((\inst3|inst700|SALIDA\(15)) # (!\inst2|inst|Add0~31\))) # (!\inst3|inst8|SALIDA\(15) & (\inst3|inst700|SALIDA\(15) & !\inst2|inst|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(15),
	datab => \inst3|inst700|SALIDA\(15),
	datad => VCC,
	cin => \inst2|inst|Add0~31\,
	combout => \inst2|inst|Add0~32_combout\,
	cout => \inst2|inst|Add0~33\);

-- Location: LCCOMB_X55_Y49_N16
\inst2|inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~34_combout\ = \inst2|inst|Add0~33\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|inst|Add0~33\,
	combout => \inst2|inst|Add0~34_combout\);

-- Location: LCCOMB_X55_Y49_N28
\inst2|inst|opres[16]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[16]~33_combout\ = (!\inst3|inst10|selop\(2) & (\inst2|inst|Add0~34_combout\ & \inst3|inst10|selop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|Add0~34_combout\,
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[16]~33_combout\);

-- Location: LCCOMB_X55_Y49_N24
\inst2|inst|opres[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(16) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres\(16)))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres[16]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[16]~33_combout\,
	datab => \inst2|inst|opres\(16),
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(16));

-- Location: LCCOMB_X55_Y50_N12
\inst2|inst3|ci\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|ci~combout\ = (\RESET~input_o\ & ((\inst3|inst10|selfalgs\(1) & ((\inst2|inst|opres\(16)))) # (!\inst3|inst10|selfalgs\(1) & (\inst2|inst3|ci~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|ci~combout\,
	datab => \RESET~input_o\,
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst2|inst|opres\(16),
	combout => \inst2|inst3|ci~combout\);

-- Location: LCCOMB_X59_Y50_N12
\inst3|inst206|comb~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~15_combout\ = (!\inst3|inst206|Equal0~1_combout\ & ((\inst|inst5|valor_interno\(21)) # ((\inst|inst5|valor_interno\(19)) # (!\inst3|inst206|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(21),
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst|inst5|valor_interno\(19),
	datad => \inst3|inst206|Equal1~0_combout\,
	combout => \inst3|inst206|comb~15_combout\);

-- Location: LCCOMB_X59_Y50_N28
\inst3|inst206|comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~10_combout\ = (\inst3|inst206|comb~4_combout\ & (!\inst3|inst206|Equal0~1_combout\ & ((\inst3|inst206|Equal4~0_combout\) # (\inst3|inst206|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal4~0_combout\,
	datab => \inst3|inst206|comb~4_combout\,
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst206|Equal3~1_combout\,
	combout => \inst3|inst206|comb~10_combout\);

-- Location: LCCOMB_X59_Y50_N10
\inst3|inst206|selc\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selc~combout\ = (!\inst3|inst206|comb~10_combout\ & ((\inst3|inst206|selc~combout\) # (!\inst3|inst206|comb~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~15_combout\,
	datab => \inst3|inst206|comb~10_combout\,
	datad => \inst3|inst206|selc~combout\,
	combout => \inst3|inst206|selc~combout\);

-- Location: FF_X55_Y50_N15
\inst3|inst10|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	asdata => \inst3|inst206|selc~combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selc~q\);

-- Location: LCCOMB_X55_Y50_N14
\inst2|inst|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~1_cout\ = CARRY((\inst2|inst3|ci~combout\ & !\inst3|inst10|selc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|ci~combout\,
	datab => \inst3|inst10|selc~q\,
	datad => VCC,
	cout => \inst2|inst|Add0~1_cout\);

-- Location: LCCOMB_X55_Y50_N16
\inst2|inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~2_combout\ = (\inst3|inst700|SALIDA\(0) & ((\inst3|inst8|SALIDA\(0) & (\inst2|inst|Add0~1_cout\ & VCC)) # (!\inst3|inst8|SALIDA\(0) & (!\inst2|inst|Add0~1_cout\)))) # (!\inst3|inst700|SALIDA\(0) & ((\inst3|inst8|SALIDA\(0) & 
-- (!\inst2|inst|Add0~1_cout\)) # (!\inst3|inst8|SALIDA\(0) & ((\inst2|inst|Add0~1_cout\) # (GND)))))
-- \inst2|inst|Add0~3\ = CARRY((\inst3|inst700|SALIDA\(0) & (!\inst3|inst8|SALIDA\(0) & !\inst2|inst|Add0~1_cout\)) # (!\inst3|inst700|SALIDA\(0) & ((!\inst2|inst|Add0~1_cout\) # (!\inst3|inst8|SALIDA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(0),
	datab => \inst3|inst8|SALIDA\(0),
	datad => VCC,
	cin => \inst2|inst|Add0~1_cout\,
	combout => \inst2|inst|Add0~2_combout\,
	cout => \inst2|inst|Add0~3\);

-- Location: LCCOMB_X55_Y50_N18
\inst2|inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~4_combout\ = ((\inst3|inst8|SALIDA\(1) $ (\inst3|inst700|SALIDA\(1) $ (!\inst2|inst|Add0~3\)))) # (GND)
-- \inst2|inst|Add0~5\ = CARRY((\inst3|inst8|SALIDA\(1) & ((\inst3|inst700|SALIDA\(1)) # (!\inst2|inst|Add0~3\))) # (!\inst3|inst8|SALIDA\(1) & (\inst3|inst700|SALIDA\(1) & !\inst2|inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(1),
	datab => \inst3|inst700|SALIDA\(1),
	datad => VCC,
	cin => \inst2|inst|Add0~3\,
	combout => \inst2|inst|Add0~4_combout\,
	cout => \inst2|inst|Add0~5\);

-- Location: LCCOMB_X57_Y50_N18
\inst2|inst|opres[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[1]~3_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(1) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst700|SALIDA\(1)))) # (!\inst3|inst8|SALIDA\(1) & (\inst3|inst700|SALIDA\(1))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(1),
	datab => \inst3|inst700|SALIDA\(1),
	datac => \inst3|inst10|selop\(2),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[1]~3_combout\);

-- Location: LCCOMB_X57_Y50_N8
\inst2|inst|opres[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[1]~4_combout\ = (\inst3|inst10|selop\(2) & (((\inst2|inst|opres[1]~3_combout\)))) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[1]~3_combout\ & (\inst2|inst|Add0~4_combout\)) # (!\inst2|inst|opres[1]~3_combout\ & 
-- ((\inst3|inst700|SALIDA\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Add0~4_combout\,
	datab => \inst3|inst700|SALIDA\(2),
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|opres[1]~3_combout\,
	combout => \inst2|inst|opres[1]~4_combout\);

-- Location: LCCOMB_X57_Y50_N30
\inst2|inst|opres[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(1) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres\(1))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(1),
	datac => \inst2|inst|opres[1]~4_combout\,
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(1));

-- Location: LCCOMB_X57_Y50_N4
\inst2|inst2|datow[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(1) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datac => \inst2|inst|opres\(1),
	combout => \inst2|inst2|datow\(1));

-- Location: FF_X57_Y50_N5
\inst2|inst6|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(1),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(1));

-- Location: LCCOMB_X58_Y51_N28
\inst3|inst700666|ACCB|SALIDA[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[1]~feeder_combout\ = \inst2|inst6|SALIDA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(1),
	combout => \inst3|inst700666|ACCB|SALIDA[1]~feeder_combout\);

-- Location: FF_X58_Y51_N29
\inst3|inst700666|ACCB|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[1]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(1));

-- Location: LCCOMB_X58_Y51_N24
\inst3|inst202|OP2[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[1]~2_combout\ = (\inst3|inst206|selsrc\(1) & (((\inst|inst5|valor_interno\(1))))) # (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & ((\inst3|inst700666|ACCB|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst|inst5|valor_interno\(1),
	datad => \inst3|inst700666|ACCB|SALIDA\(1),
	combout => \inst3|inst202|OP2[1]~2_combout\);

-- Location: LCCOMB_X54_Y50_N16
\inst3|inst202|OP2[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[1]~3_combout\ = (\inst3|inst206|selsrc\(0) & \inst3|inst202|OP2[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst202|OP2[1]~2_combout\,
	combout => \inst3|inst202|OP2[1]~3_combout\);

-- Location: FF_X54_Y50_N17
\inst3|inst8|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP2[1]~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(1));

-- Location: LCCOMB_X55_Y50_N20
\inst2|inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~6_combout\ = (\inst3|inst8|SALIDA\(2) & ((\inst3|inst700|SALIDA\(2) & (\inst2|inst|Add0~5\ & VCC)) # (!\inst3|inst700|SALIDA\(2) & (!\inst2|inst|Add0~5\)))) # (!\inst3|inst8|SALIDA\(2) & ((\inst3|inst700|SALIDA\(2) & 
-- (!\inst2|inst|Add0~5\)) # (!\inst3|inst700|SALIDA\(2) & ((\inst2|inst|Add0~5\) # (GND)))))
-- \inst2|inst|Add0~7\ = CARRY((\inst3|inst8|SALIDA\(2) & (!\inst3|inst700|SALIDA\(2) & !\inst2|inst|Add0~5\)) # (!\inst3|inst8|SALIDA\(2) & ((!\inst2|inst|Add0~5\) # (!\inst3|inst700|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(2),
	datab => \inst3|inst700|SALIDA\(2),
	datad => VCC,
	cin => \inst2|inst|Add0~5\,
	combout => \inst2|inst|Add0~6_combout\,
	cout => \inst2|inst|Add0~7\);

-- Location: LCCOMB_X56_Y50_N2
\inst2|inst|opres[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[2]~5_combout\ = (\inst3|inst10|selop\(0) & (((\inst2|inst|Add0~6_combout\) # (\inst3|inst10|selop\(2))))) # (!\inst3|inst10|selop\(0) & (\inst3|inst700|SALIDA\(3) & ((!\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(0),
	datab => \inst3|inst700|SALIDA\(3),
	datac => \inst2|inst|Add0~6_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[2]~5_combout\);

-- Location: LCCOMB_X57_Y50_N10
\inst2|inst|opres[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[2]~6_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(2) & ((!\inst3|inst8|SALIDA\(2)) # (!\inst2|inst|opres[2]~5_combout\))) # (!\inst3|inst700|SALIDA\(2) & ((\inst3|inst8|SALIDA\(2)))))) # (!\inst3|inst10|selop\(2) & 
-- (\inst2|inst|opres[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|opres[2]~5_combout\,
	datac => \inst3|inst700|SALIDA\(2),
	datad => \inst3|inst8|SALIDA\(2),
	combout => \inst2|inst|opres[2]~6_combout\);

-- Location: LCCOMB_X57_Y50_N2
\inst2|inst|opres[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(2) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres\(2))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(2),
	datac => \inst2|inst|opres[2]~6_combout\,
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(2));

-- Location: LCCOMB_X57_Y50_N6
\inst2|inst2|datow[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(2) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(2),
	combout => \inst2|inst2|datow\(2));

-- Location: FF_X57_Y50_N7
\inst2|inst6|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(2),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(2));

-- Location: LCCOMB_X55_Y51_N26
\inst3|inst700666|ACCB|SALIDA[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[2]~feeder_combout\ = \inst2|inst6|SALIDA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(2),
	combout => \inst3|inst700666|ACCB|SALIDA[2]~feeder_combout\);

-- Location: FF_X55_Y51_N27
\inst3|inst700666|ACCB|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[2]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(2));

-- Location: LCCOMB_X54_Y50_N28
\inst3|inst202|OP2[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[2]~0_combout\ = (\inst3|inst206|selsrc\(1) & (((\inst|inst5|valor_interno\(21))))) # (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selregr\(0) & ((\inst3|inst700666|ACCB|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(1),
	datab => \inst3|inst206|selregr\(0),
	datac => \inst|inst5|valor_interno\(21),
	datad => \inst3|inst700666|ACCB|SALIDA\(2),
	combout => \inst3|inst202|OP2[2]~0_combout\);

-- Location: LCCOMB_X54_Y50_N14
\inst3|inst202|OP2[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[2]~1_combout\ = (\inst3|inst206|selsrc\(0) & \inst3|inst202|OP2[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst202|OP2[2]~0_combout\,
	combout => \inst3|inst202|OP2[2]~1_combout\);

-- Location: FF_X54_Y50_N15
\inst3|inst8|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP2[2]~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(2));

-- Location: LCCOMB_X58_Y50_N20
\inst2|inst|opres[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[3]~7_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(3) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst8|SALIDA\(3)))) # (!\inst3|inst700|SALIDA\(3) & (\inst3|inst8|SALIDA\(3))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(3),
	datab => \inst3|inst8|SALIDA\(3),
	datac => \inst3|inst10|selop\(0),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[3]~7_combout\);

-- Location: LCCOMB_X58_Y50_N22
\inst2|inst|opres[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[3]~8_combout\ = (\inst2|inst|opres[3]~7_combout\ & ((\inst2|inst|Add0~8_combout\) # ((\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[3]~7_combout\ & (((\inst3|inst700|SALIDA\(4) & !\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Add0~8_combout\,
	datab => \inst3|inst700|SALIDA\(4),
	datac => \inst2|inst|opres[3]~7_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[3]~8_combout\);

-- Location: LCCOMB_X58_Y50_N30
\inst2|inst|opres[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(3) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres\(3))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(3),
	datac => \inst2|inst|opres[3]~8_combout\,
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(3));

-- Location: LCCOMB_X58_Y50_N26
\inst2|inst2|datow[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(3) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selresult\(0),
	datac => \inst2|inst|opres\(3),
	combout => \inst2|inst2|datow\(3));

-- Location: FF_X58_Y50_N27
\inst2|inst6|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(3),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(3));

-- Location: LCCOMB_X52_Y50_N14
\inst3|inst206|selregr[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr[3]~1_combout\ = ((\inst3|inst206|Equal4~0_combout\) # (\inst3|inst206|Equal0~1_combout\)) # (!\inst3|inst206|comb~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~4_combout\,
	datab => \inst3|inst206|Equal4~0_combout\,
	datac => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst206|selregr[3]~1_combout\);

-- Location: LCCOMB_X52_Y50_N18
\inst3|inst206|vf\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|vf~combout\ = (!\inst3|inst206|Equal3~1_combout\ & ((\inst3|inst206|selregr[3]~1_combout\) # (\inst3|inst206|vf~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal3~1_combout\,
	datac => \inst3|inst206|selregr[3]~1_combout\,
	datad => \inst3|inst206|vf~combout\,
	combout => \inst3|inst206|vf~combout\);

-- Location: LCCOMB_X52_Y50_N2
\inst3|inst10|vf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst10|vf~0_combout\ = !\inst3|inst206|vf~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst206|vf~combout\,
	combout => \inst3|inst10|vf~0_combout\);

-- Location: FF_X52_Y50_N3
\inst3|inst10|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst10|vf~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|vf~q\);

-- Location: LCCOMB_X58_Y50_N16
\inst2|inst100|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst100|valor_interno~feeder_combout\ = \inst3|inst10|vf~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst10|vf~q\,
	combout => \inst2|inst100|valor_interno~feeder_combout\);

-- Location: FF_X58_Y50_N17
\inst2|inst100|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst100|valor_interno~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst100|valor_interno~q\);

-- Location: FF_X58_Y49_N25
\inst|inst3|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst3|SALIDA[3]~12_combout\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(3));

-- Location: LCCOMB_X58_Y49_N26
\inst|inst3|SALIDA[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[4]~14_combout\ = (\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA[3]~13\ $ (GND))) # (!\inst|inst3|SALIDA\(4) & (!\inst|inst3|SALIDA[3]~13\ & VCC))
-- \inst|inst3|SALIDA[4]~15\ = CARRY((\inst|inst3|SALIDA\(4) & !\inst|inst3|SALIDA[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datad => VCC,
	cin => \inst|inst3|SALIDA[3]~13\,
	combout => \inst|inst3|SALIDA[4]~14_combout\,
	cout => \inst|inst3|SALIDA[4]~15\);

-- Location: FF_X58_Y49_N27
\inst|inst3|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst3|SALIDA[4]~14_combout\,
	asdata => \inst2|inst6|SALIDA\(4),
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(4));

-- Location: LCCOMB_X58_Y49_N28
\inst|inst3|SALIDA[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[5]~16_combout\ = \inst|inst3|SALIDA[4]~15\ $ (\inst|inst3|SALIDA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst3|SALIDA\(5),
	cin => \inst|inst3|SALIDA[4]~15\,
	combout => \inst|inst3|SALIDA[5]~16_combout\);

-- Location: FF_X58_Y49_N29
\inst|inst3|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst3|SALIDA[5]~16_combout\,
	asdata => \inst2|inst6|SALIDA\(5),
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(5));

-- Location: LCCOMB_X58_Y49_N14
\inst|inst1|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~0_combout\ = (\inst|inst3|SALIDA\(3)) # ((\inst|inst3|SALIDA\(1)) # ((!\inst|inst3|SALIDA\(0) & \inst|inst3|SALIDA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux13~0_combout\);

-- Location: LCCOMB_X59_Y49_N4
\inst|inst1|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~1_combout\ = (!\inst|inst3|SALIDA\(5) & (!\inst|inst3|SALIDA\(4) & !\inst|inst1|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst3|SALIDA\(4),
	datad => \inst|inst1|Mux13~0_combout\,
	combout => \inst|inst1|Mux13~1_combout\);

-- Location: FF_X59_Y49_N5
\inst|inst5|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst1|Mux13~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(18));

-- Location: LCCOMB_X59_Y48_N18
\inst3|inst206|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~0_combout\ = (!\inst|inst5|valor_interno\(18) & (!\inst|inst5|valor_interno\(22) & (!\inst|inst5|valor_interno\(21) & !\inst|inst5|valor_interno\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(18),
	datab => \inst|inst5|valor_interno\(22),
	datac => \inst|inst5|valor_interno\(21),
	datad => \inst|inst5|valor_interno\(23),
	combout => \inst3|inst206|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y48_N16
\inst3|inst206|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal4~0_combout\ = (!\inst|inst5|valor_interno\(19) & (\inst3|inst206|Equal0~0_combout\ & (\inst|inst5|valor_interno\(16) & !\inst|inst5|valor_interno\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(19),
	datab => \inst3|inst206|Equal0~0_combout\,
	datac => \inst|inst5|valor_interno\(16),
	datad => \inst|inst5|valor_interno\(17),
	combout => \inst3|inst206|Equal4~0_combout\);

-- Location: LCCOMB_X59_Y50_N8
\inst3|inst206|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~7_combout\ = (\inst3|inst206|Equal4~0_combout\ & (\inst3|inst206|comb~4_combout\ & (!\inst3|inst206|Equal0~1_combout\ & !\inst3|inst206|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal4~0_combout\,
	datab => \inst3|inst206|comb~4_combout\,
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst206|Equal3~1_combout\,
	combout => \inst3|inst206|comb~7_combout\);

-- Location: LCCOMB_X54_Y50_N18
\inst3|inst206|selresult[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selresult\(0) = (!\inst3|inst206|comb~7_combout\ & ((\inst3|inst206|selresult\(0)) # (!\inst3|inst206|comb~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~7_combout\,
	datac => \inst3|inst206|comb~8_combout\,
	datad => \inst3|inst206|selresult\(0),
	combout => \inst3|inst206|selresult\(0));

-- Location: FF_X54_Y50_N19
\inst3|inst10|selresult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst206|selresult\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selresult\(0));

-- Location: LCCOMB_X56_Y50_N4
\inst2|inst|opres[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[0]~31_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(0) & ((!\inst3|inst10|selop\(0)) # (!\inst3|inst700|SALIDA\(0)))) # (!\inst3|inst8|SALIDA\(0) & (\inst3|inst700|SALIDA\(0))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(0),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst700|SALIDA\(0),
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[0]~31_combout\);

-- Location: LCCOMB_X56_Y50_N18
\inst2|inst|opres[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[0]~32_combout\ = (\inst2|inst|opres[0]~31_combout\ & ((\inst2|inst|Add0~2_combout\) # ((\inst3|inst10|selop\(2))))) # (!\inst2|inst|opres[0]~31_combout\ & (((\inst3|inst700|SALIDA\(1) & !\inst3|inst10|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Add0~2_combout\,
	datab => \inst3|inst700|SALIDA\(1),
	datac => \inst2|inst|opres[0]~31_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[0]~32_combout\);

-- Location: LCCOMB_X56_Y49_N2
\inst2|inst|opres[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(0) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres\(0))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(0),
	datac => \inst2|inst|opres[0]~32_combout\,
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(0));

-- Location: LCCOMB_X56_Y49_N26
\inst2|inst2|datow[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(0) = (\inst3|inst10|selresult\(0) & \inst2|inst|opres\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selresult\(0),
	datad => \inst2|inst|opres\(0),
	combout => \inst2|inst2|datow\(0));

-- Location: FF_X56_Y49_N27
\inst2|inst6|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst2|datow\(0),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(0));

-- Location: FF_X58_Y49_N19
\inst|inst3|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst3|SALIDA[0]~6_combout\,
	asdata => \inst2|inst6|SALIDA\(0),
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(0));

-- Location: LCCOMB_X58_Y49_N20
\inst|inst3|SALIDA[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[1]~8_combout\ = (\inst|inst3|SALIDA\(1) & (!\inst|inst3|SALIDA[0]~7\)) # (!\inst|inst3|SALIDA\(1) & ((\inst|inst3|SALIDA[0]~7\) # (GND)))
-- \inst|inst3|SALIDA[1]~9\ = CARRY((!\inst|inst3|SALIDA[0]~7\) # (!\inst|inst3|SALIDA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(1),
	datad => VCC,
	cin => \inst|inst3|SALIDA[0]~7\,
	combout => \inst|inst3|SALIDA[1]~8_combout\,
	cout => \inst|inst3|SALIDA[1]~9\);

-- Location: FF_X58_Y49_N21
\inst|inst3|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst3|SALIDA[1]~8_combout\,
	asdata => \inst2|inst6|SALIDA\(1),
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(1));

-- Location: FF_X58_Y49_N23
\inst|inst3|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst3|SALIDA[2]~10_combout\,
	asdata => \inst2|inst6|SALIDA\(2),
	clrn => \RESET~input_o\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(2));

-- Location: LCCOMB_X59_Y49_N0
\inst|inst1|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux12~0_combout\ = (\inst|inst3|SALIDA\(2) & \inst|inst1|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(2),
	datad => \inst|inst1|Mux10~0_combout\,
	combout => \inst|inst1|Mux12~0_combout\);

-- Location: FF_X59_Y49_N1
\inst|inst5|valor_interno[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst|inst1|Mux12~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(19));

-- Location: LCCOMB_X59_Y48_N2
\inst3|inst206|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~1_combout\ = (\inst|inst5|valor_interno\(19) & (\inst3|inst206|Equal0~0_combout\ & (\inst|inst5|valor_interno\(16) & \inst|inst5|valor_interno\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(19),
	datab => \inst3|inst206|Equal0~0_combout\,
	datac => \inst|inst5|valor_interno\(16),
	datad => \inst|inst5|valor_interno\(17),
	combout => \inst3|inst206|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y50_N10
\inst3|inst206|selregr[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selregr\(0) = (!\inst3|inst206|comb~5_combout\ & ((\inst3|inst206|Equal0~1_combout\) # (\inst3|inst206|selregr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst3|inst206|comb~5_combout\,
	datad => \inst3|inst206|selregr\(0),
	combout => \inst3|inst206|selregr\(0));

-- Location: LCCOMB_X55_Y51_N18
\inst3|inst700666|ACCB|SALIDA[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\ = \inst2|inst6|SALIDA\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(15),
	combout => \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\);

-- Location: FF_X55_Y51_N19
\inst3|inst700666|ACCB|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_div~clkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\,
	clrn => \RESET~input_o\,
	ena => \inst3|inst700666|inst1000|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(15));

-- Location: LCCOMB_X55_Y52_N8
\inst3|inst202|OP2[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(15) = (\inst3|inst206|selregr\(0) & (!\inst3|inst206|selsrc\(1) & (\inst3|inst206|selsrc\(0) & \inst3|inst700666|ACCB|SALIDA\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|selregr\(0),
	datab => \inst3|inst206|selsrc\(1),
	datac => \inst3|inst206|selsrc\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(15),
	combout => \inst3|inst202|OP2\(15));

-- Location: FF_X55_Y52_N9
\inst3|inst8|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst202|OP2\(15),
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(15));

-- Location: LCCOMB_X55_Y50_N6
\inst2|inst1|sal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst1|sal~0_combout\ = (!\inst3|inst10|selc~q\ & \inst2|inst3|ci~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selc~q\,
	datad => \inst2|inst3|ci~combout\,
	combout => \inst2|inst1|sal~0_combout\);

-- Location: LCCOMB_X55_Y49_N22
\inst2|inst|opres[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~0_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selop\(0))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selop\(0) & (\inst2|inst|Add0~32_combout\)) # (!\inst3|inst10|selop\(0) & ((\inst2|inst1|sal~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|Add0~32_combout\,
	datac => \inst2|inst1|sal~0_combout\,
	datad => \inst3|inst10|selop\(0),
	combout => \inst2|inst|opres[15]~0_combout\);

-- Location: LCCOMB_X55_Y49_N20
\inst2|inst|opres[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~1_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(15) & ((!\inst2|inst|opres[15]~0_combout\) # (!\inst3|inst700|SALIDA\(15)))) # (!\inst3|inst8|SALIDA\(15) & (\inst3|inst700|SALIDA\(15))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst2|inst|opres[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(15),
	datab => \inst3|inst700|SALIDA\(15),
	datac => \inst2|inst|opres[15]~0_combout\,
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[15]~1_combout\);

-- Location: LCCOMB_X55_Y49_N30
\inst2|inst|opres[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(15) = (GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & (\inst2|inst|opres\(15))) # (!GLOBAL(\inst2|inst|opres[16]~2clkctrl_outclk\) & ((\inst2|inst|opres[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(15),
	datab => \inst2|inst|opres[15]~1_combout\,
	datad => \inst2|inst|opres[16]~2clkctrl_outclk\,
	combout => \inst2|inst|opres\(15));

-- Location: LCCOMB_X52_Y50_N26
\inst3|inst206|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|comb~6_combout\ = (\inst3|inst206|comb~4_combout\ & ((\inst3|inst206|Equal4~0_combout\) # ((\inst3|inst206|Equal0~1_combout\) # (\inst3|inst206|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~4_combout\,
	datab => \inst3|inst206|Equal4~0_combout\,
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst206|Equal3~1_combout\,
	combout => \inst3|inst206|comb~6_combout\);

-- Location: LCCOMB_X52_Y50_N16
\inst3|inst206|selfalgs[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst206|selfalgs\(0) = (!\inst3|inst206|comb~6_combout\ & ((\inst3|inst206|selfalgs\(0)) # (!\inst3|inst206|comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|comb~6_combout\,
	datac => \inst3|inst206|comb~4_combout\,
	datad => \inst3|inst206|selfalgs\(0),
	combout => \inst3|inst206|selfalgs\(0));

-- Location: LCCOMB_X52_Y50_N28
\inst3|inst10|selfalgs[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst10|selfalgs[0]~feeder_combout\ = \inst3|inst206|selfalgs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst206|selfalgs\(0),
	combout => \inst3|inst10|selfalgs[0]~feeder_combout\);

-- Location: FF_X52_Y50_N29
\inst3|inst10|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst3|inst10|selfalgs[0]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(0));

-- Location: LCCOMB_X52_Y50_N0
\inst2|inst3|vi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~0_combout\ = (\inst3|inst10|selfalgs\(1)) # (\inst3|inst10|selfalgs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selfalgs\(1),
	datad => \inst3|inst10|selfalgs\(0),
	combout => \inst2|inst3|vi~0_combout\);

-- Location: CLKCTRL_G12
\inst2|inst3|vi~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst3|vi~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst3|vi~0clkctrl_outclk\);

-- Location: LCCOMB_X57_Y50_N28
\inst2|inst3|ni\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|ni~combout\ = (\RESET~input_o\ & ((GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & ((\inst2|inst|opres\(15)))) # (!GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & (\inst2|inst3|ni~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst2|inst3|ni~combout\,
	datac => \inst2|inst|opres\(15),
	datad => \inst2|inst3|vi~0clkctrl_outclk\,
	combout => \inst2|inst3|ni~combout\);

-- Location: FF_X57_Y50_N29
\inst2|inst101|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst3|ni~combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst101|valor_interno~q\);

-- Location: LCCOMB_X57_Y49_N30
\inst2|inst|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~1_combout\ = (\inst2|inst|opres\(6)) # ((\inst2|inst|opres\(8)) # ((\inst2|inst|opres\(7)) # (\inst2|inst|opres\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(6),
	datab => \inst2|inst|opres\(8),
	datac => \inst2|inst|opres\(7),
	datad => \inst2|inst|opres\(5),
	combout => \inst2|inst|WideOr0~1_combout\);

-- Location: LCCOMB_X57_Y49_N28
\inst2|inst|WideOr0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~2_combout\ = (\inst2|inst|opres\(11)) # ((\inst2|inst|opres\(12)) # ((\inst2|inst|opres\(10)) # (\inst2|inst|opres\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(11),
	datab => \inst2|inst|opres\(12),
	datac => \inst2|inst|opres\(10),
	datad => \inst2|inst|opres\(9),
	combout => \inst2|inst|WideOr0~2_combout\);

-- Location: LCCOMB_X57_Y49_N14
\inst2|inst|WideOr0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~3_combout\ = (\inst2|inst|opres\(0)) # ((\inst2|inst|opres\(14)) # ((\inst2|inst|opres\(15)) # (\inst2|inst|opres\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(0),
	datab => \inst2|inst|opres\(14),
	datac => \inst2|inst|opres\(15),
	datad => \inst2|inst|opres\(13),
	combout => \inst2|inst|WideOr0~3_combout\);

-- Location: LCCOMB_X57_Y49_N12
\inst2|inst|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~0_combout\ = (\inst2|inst|opres\(1)) # ((\inst2|inst|opres\(3)) # ((\inst2|inst|opres\(2)) # (\inst2|inst|opres\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(1),
	datab => \inst2|inst|opres\(3),
	datac => \inst2|inst|opres\(2),
	datad => \inst2|inst|opres\(4),
	combout => \inst2|inst|WideOr0~0_combout\);

-- Location: LCCOMB_X57_Y49_N24
\inst2|inst|WideOr0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~4_combout\ = (\inst2|inst|WideOr0~1_combout\) # ((\inst2|inst|WideOr0~2_combout\) # ((\inst2|inst|WideOr0~3_combout\) # (\inst2|inst|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|WideOr0~1_combout\,
	datab => \inst2|inst|WideOr0~2_combout\,
	datac => \inst2|inst|WideOr0~3_combout\,
	datad => \inst2|inst|WideOr0~0_combout\,
	combout => \inst2|inst|WideOr0~4_combout\);

-- Location: LCCOMB_X57_Y49_N8
\inst2|inst3|zi\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|zi~combout\ = (\RESET~input_o\ & ((GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & ((!\inst2|inst|WideOr0~4_combout\))) # (!GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & (\inst2|inst3|zi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst2|inst3|zi~combout\,
	datac => \inst2|inst3|vi~0clkctrl_outclk\,
	datad => \inst2|inst|WideOr0~4_combout\,
	combout => \inst2|inst3|zi~combout\);

-- Location: FF_X57_Y49_N9
\inst2|inst102|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst3|zi~combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst102|valor_interno~q\);

-- Location: LCCOMB_X52_Y50_N12
\inst2|inst3|vi~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~1_combout\ = (\inst2|inst|opres\(16) & ((\inst3|inst10|selfalgs\(1)) # (!\inst3|inst10|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(0),
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst2|inst|opres\(16),
	combout => \inst2|inst3|vi~1_combout\);

-- Location: LCCOMB_X52_Y50_N30
\inst2|inst3|vi\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~combout\ = (\RESET~input_o\ & ((GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & (\inst2|inst3|vi~1_combout\)) # (!GLOBAL(\inst2|inst3|vi~0clkctrl_outclk\) & ((\inst2|inst3|vi~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|vi~1_combout\,
	datab => \RESET~input_o\,
	datac => \inst2|inst3|vi~combout\,
	datad => \inst2|inst3|vi~0clkctrl_outclk\,
	combout => \inst2|inst3|vi~combout\);

-- Location: FF_X52_Y50_N31
\inst2|inst103|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst3|vi~combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst103|valor_interno~q\);

-- Location: LCCOMB_X58_Y50_N0
\inst2|inst104|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst104|valor_interno~feeder_combout\ = \inst2|inst3|ci~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|ci~combout\,
	combout => \inst2|inst104|valor_interno~feeder_combout\);

-- Location: FF_X58_Y50_N1
\inst2|inst104|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst104|valor_interno~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst104|valor_interno~q\);

-- Location: LCCOMB_X52_Y50_N20
\inst2|inst3|vi~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~2_combout\ = (!\inst3|inst10|selfalgs\(0) & \inst3|inst10|selfalgs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(0),
	datad => \inst3|inst10|selfalgs\(1),
	combout => \inst2|inst3|vi~2_combout\);

-- Location: LCCOMB_X56_Y49_N22
\inst2|inst3|hi\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3|hi~combout\ = (\RESET~input_o\ & ((\inst2|inst3|vi~2_combout\ & ((\inst2|inst|opres\(8)))) # (!\inst2|inst3|vi~2_combout\ & (\inst2|inst3|hi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|vi~2_combout\,
	datab => \RESET~input_o\,
	datac => \inst2|inst3|hi~combout\,
	datad => \inst2|inst|opres\(8),
	combout => \inst2|inst3|hi~combout\);

-- Location: LCCOMB_X57_Y49_N22
\inst2|inst105|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst105|valor_interno~feeder_combout\ = \inst2|inst3|hi~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst3|hi~combout\,
	combout => \inst2|inst105|valor_interno~feeder_combout\);

-- Location: FF_X57_Y49_N23
\inst2|inst105|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|div~clkctrl_outclk\,
	d => \inst2|inst105|valor_interno~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst105|valor_interno~q\);

-- Location: IOIBUF_X51_Y54_N29
\sw~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw,
	o => \sw~input_o\);

-- Location: LCCOMB_X57_Y51_N6
\inst4|first_value~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|first_value~1_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(1)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(1),
	datad => \inst3|inst700666|ACCB|SALIDA\(1),
	combout => \inst4|first_value~1_combout\);

-- Location: FF_X57_Y51_N7
\inst4|first_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|first_value~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|first_value\(1));

-- Location: LCCOMB_X57_Y51_N24
\inst4|first_value~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|first_value~2_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(2)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(2),
	datad => \inst3|inst700666|ACCB|SALIDA\(2),
	combout => \inst4|first_value~2_combout\);

-- Location: FF_X57_Y51_N25
\inst4|first_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|first_value~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|first_value\(2));

-- Location: LCCOMB_X57_Y51_N22
\inst4|first_value~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|first_value~3_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(3)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datab => \inst3|inst700666|ACCA|SALIDA\(3),
	datac => \inst3|inst700666|ACCB|SALIDA\(3),
	combout => \inst4|first_value~3_combout\);

-- Location: FF_X57_Y51_N23
\inst4|first_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|first_value~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|first_value\(3));

-- Location: LCCOMB_X57_Y51_N4
\inst4|first_value~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|first_value~0_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(0)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(0),
	datad => \inst3|inst700666|ACCB|SALIDA\(0),
	combout => \inst4|first_value~0_combout\);

-- Location: FF_X57_Y51_N5
\inst4|first_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|first_value~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|first_value\(0));

-- Location: LCCOMB_X57_Y51_N20
\inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst4|first_value\(2) & (!\inst4|first_value\(1) & (\inst4|first_value\(3) $ (!\inst4|first_value\(0))))) # (!\inst4|first_value\(2) & (\inst4|first_value\(0) & (\inst4|first_value\(1) $ (!\inst4|first_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(1),
	datab => \inst4|first_value\(2),
	datac => \inst4|first_value\(3),
	datad => \inst4|first_value\(0),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y51_N26
\inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst4|first_value\(1) & ((\inst4|first_value\(0) & ((\inst4|first_value\(3)))) # (!\inst4|first_value\(0) & (\inst4|first_value\(2))))) # (!\inst4|first_value\(1) & (\inst4|first_value\(2) & (\inst4|first_value\(3) $ 
-- (\inst4|first_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(1),
	datab => \inst4|first_value\(2),
	datac => \inst4|first_value\(3),
	datad => \inst4|first_value\(0),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y51_N0
\inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst4|first_value\(2) & (\inst4|first_value\(3) & ((\inst4|first_value\(1)) # (!\inst4|first_value\(0))))) # (!\inst4|first_value\(2) & (\inst4|first_value\(1) & (!\inst4|first_value\(3) & !\inst4|first_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(1),
	datab => \inst4|first_value\(2),
	datac => \inst4|first_value\(3),
	datad => \inst4|first_value\(0),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y51_N2
\inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst4|first_value\(1) & (\inst4|first_value\(2) & ((\inst4|first_value\(0))))) # (!\inst4|first_value\(1) & (!\inst4|first_value\(3) & (\inst4|first_value\(2) $ (\inst4|first_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(1),
	datab => \inst4|first_value\(2),
	datac => \inst4|first_value\(3),
	datad => \inst4|first_value\(0),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y51_N16
\inst4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst4|first_value\(1) & (((!\inst4|first_value\(3) & \inst4|first_value\(0))))) # (!\inst4|first_value\(1) & ((\inst4|first_value\(2) & (!\inst4|first_value\(3))) # (!\inst4|first_value\(2) & ((\inst4|first_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(1),
	datab => \inst4|first_value\(2),
	datac => \inst4|first_value\(3),
	datad => \inst4|first_value\(0),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y51_N18
\inst4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst4|first_value\(0) & (\inst4|first_value\(3) $ (((\inst4|first_value\(1)) # (!\inst4|first_value\(2)))))) # (!\inst4|first_value\(0) & (\inst4|first_value\(1) & (!\inst4|first_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(1),
	datab => \inst4|first_value\(2),
	datac => \inst4|first_value\(3),
	datad => \inst4|first_value\(0),
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y51_N12
\inst4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst4|first_value\(0) & ((\inst4|first_value\(3)) # (\inst4|first_value\(1) $ (\inst4|first_value\(2))))) # (!\inst4|first_value\(0) & ((\inst4|first_value\(1)) # (\inst4|first_value\(2) $ (\inst4|first_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|first_value\(1),
	datab => \inst4|first_value\(2),
	datac => \inst4|first_value\(3),
	datad => \inst4|first_value\(0),
	combout => \inst4|Mux6~0_combout\);

-- Location: LCCOMB_X56_Y51_N24
\inst4|second_value~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|second_value~2_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(6)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700666|ACCA|SALIDA\(6),
	datac => \sw~input_o\,
	datad => \inst3|inst700666|ACCB|SALIDA\(6),
	combout => \inst4|second_value~2_combout\);

-- Location: FF_X56_Y51_N25
\inst4|second_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|second_value~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|second_value\(2));

-- Location: LCCOMB_X56_Y51_N6
\inst4|second_value~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|second_value~1_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(5)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(5),
	datad => \inst3|inst700666|ACCB|SALIDA\(5),
	combout => \inst4|second_value~1_combout\);

-- Location: FF_X56_Y51_N7
\inst4|second_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|second_value~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|second_value\(1));

-- Location: LCCOMB_X56_Y51_N10
\inst4|second_value~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|second_value~3_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(7)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(7),
	datad => \inst3|inst700666|ACCB|SALIDA\(7),
	combout => \inst4|second_value~3_combout\);

-- Location: FF_X56_Y51_N11
\inst4|second_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|second_value~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|second_value\(3));

-- Location: LCCOMB_X56_Y51_N8
\inst4|second_value~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|second_value~0_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(4)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datab => \inst3|inst700666|ACCA|SALIDA\(4),
	datad => \inst3|inst700666|ACCB|SALIDA\(4),
	combout => \inst4|second_value~0_combout\);

-- Location: FF_X56_Y51_N21
\inst4|second_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst4|second_value~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|second_value\(0));

-- Location: LCCOMB_X59_Y51_N20
\inst4|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux7~0_combout\ = (\inst4|second_value\(2) & (!\inst4|second_value\(1) & (\inst4|second_value\(3) $ (!\inst4|second_value\(0))))) # (!\inst4|second_value\(2) & (\inst4|second_value\(0) & (\inst4|second_value\(1) $ (!\inst4|second_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(2),
	datab => \inst4|second_value\(1),
	datac => \inst4|second_value\(3),
	datad => \inst4|second_value\(0),
	combout => \inst4|Mux7~0_combout\);

-- Location: LCCOMB_X56_Y51_N16
\inst4|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux8~0_combout\ = (\inst4|second_value\(3) & ((\inst4|second_value\(0) & ((\inst4|second_value\(1)))) # (!\inst4|second_value\(0) & (\inst4|second_value\(2))))) # (!\inst4|second_value\(3) & (\inst4|second_value\(2) & (\inst4|second_value\(0) $ 
-- (\inst4|second_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(3),
	datab => \inst4|second_value\(2),
	datac => \inst4|second_value\(0),
	datad => \inst4|second_value\(1),
	combout => \inst4|Mux8~0_combout\);

-- Location: LCCOMB_X56_Y51_N2
\inst4|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux9~0_combout\ = (\inst4|second_value\(3) & (\inst4|second_value\(2) & ((\inst4|second_value\(1)) # (!\inst4|second_value\(0))))) # (!\inst4|second_value\(3) & (!\inst4|second_value\(2) & (!\inst4|second_value\(0) & \inst4|second_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(3),
	datab => \inst4|second_value\(2),
	datac => \inst4|second_value\(0),
	datad => \inst4|second_value\(1),
	combout => \inst4|Mux9~0_combout\);

-- Location: LCCOMB_X56_Y51_N0
\inst4|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux10~0_combout\ = (\inst4|second_value\(1) & (((\inst4|second_value\(2) & \inst4|second_value\(0))))) # (!\inst4|second_value\(1) & (!\inst4|second_value\(3) & (\inst4|second_value\(2) $ (\inst4|second_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(3),
	datab => \inst4|second_value\(2),
	datac => \inst4|second_value\(0),
	datad => \inst4|second_value\(1),
	combout => \inst4|Mux10~0_combout\);

-- Location: LCCOMB_X56_Y51_N26
\inst4|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux11~0_combout\ = (\inst4|second_value\(1) & (!\inst4|second_value\(3) & ((\inst4|second_value\(0))))) # (!\inst4|second_value\(1) & ((\inst4|second_value\(2) & (!\inst4|second_value\(3))) # (!\inst4|second_value\(2) & 
-- ((\inst4|second_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(3),
	datab => \inst4|second_value\(2),
	datac => \inst4|second_value\(0),
	datad => \inst4|second_value\(1),
	combout => \inst4|Mux11~0_combout\);

-- Location: LCCOMB_X56_Y51_N4
\inst4|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux12~0_combout\ = (\inst4|second_value\(0) & (\inst4|second_value\(3) $ (((\inst4|second_value\(1)) # (!\inst4|second_value\(2)))))) # (!\inst4|second_value\(0) & (((!\inst4|second_value\(2) & \inst4|second_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(3),
	datab => \inst4|second_value\(2),
	datac => \inst4|second_value\(0),
	datad => \inst4|second_value\(1),
	combout => \inst4|Mux12~0_combout\);

-- Location: LCCOMB_X56_Y51_N20
\inst4|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux13~0_combout\ = (\inst4|second_value\(0) & ((\inst4|second_value\(3)) # (\inst4|second_value\(2) $ (\inst4|second_value\(1))))) # (!\inst4|second_value\(0) & ((\inst4|second_value\(1)) # (\inst4|second_value\(3) $ (\inst4|second_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|second_value\(3),
	datab => \inst4|second_value\(2),
	datac => \inst4|second_value\(0),
	datad => \inst4|second_value\(1),
	combout => \inst4|Mux13~0_combout\);

-- Location: LCCOMB_X56_Y51_N18
\inst4|third_value~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|third_value~0_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(8)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datac => \inst3|inst700666|ACCA|SALIDA\(8),
	datad => \inst3|inst700666|ACCB|SALIDA\(8),
	combout => \inst4|third_value~0_combout\);

-- Location: FF_X56_Y51_N19
\inst4|third_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|third_value~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|third_value\(0));

-- Location: LCCOMB_X56_Y51_N22
\inst4|third_value~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|third_value~2_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(10))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datac => \inst3|inst700666|ACCB|SALIDA\(10),
	datad => \inst3|inst700666|ACCA|SALIDA\(10),
	combout => \inst4|third_value~2_combout\);

-- Location: FF_X56_Y51_N23
\inst4|third_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|third_value~2_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|third_value\(2));

-- Location: LCCOMB_X56_Y51_N28
\inst4|third_value~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|third_value~1_combout\ = (\sw~input_o\ & (\inst3|inst700666|ACCB|SALIDA\(9))) # (!\sw~input_o\ & ((\inst3|inst700666|ACCA|SALIDA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datac => \inst3|inst700666|ACCB|SALIDA\(9),
	datad => \inst3|inst700666|ACCA|SALIDA\(9),
	combout => \inst4|third_value~1_combout\);

-- Location: FF_X56_Y51_N29
\inst4|third_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|third_value~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|third_value\(1));

-- Location: LCCOMB_X56_Y50_N28
\inst4|third_value~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|third_value~3_combout\ = (\sw~input_o\ & ((\inst3|inst700666|ACCB|SALIDA\(11)))) # (!\sw~input_o\ & (\inst3|inst700666|ACCA|SALIDA\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~input_o\,
	datab => \inst3|inst700666|ACCA|SALIDA\(11),
	datad => \inst3|inst700666|ACCB|SALIDA\(11),
	combout => \inst4|third_value~3_combout\);

-- Location: FF_X56_Y50_N29
\inst4|third_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|third_value~3_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|third_value\(3));

-- Location: LCCOMB_X77_Y47_N20
\inst4|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux14~0_combout\ = (\inst4|third_value\(2) & (!\inst4|third_value\(1) & (\inst4|third_value\(0) $ (!\inst4|third_value\(3))))) # (!\inst4|third_value\(2) & (\inst4|third_value\(0) & (\inst4|third_value\(1) $ (!\inst4|third_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|third_value\(0),
	datab => \inst4|third_value\(2),
	datac => \inst4|third_value\(1),
	datad => \inst4|third_value\(3),
	combout => \inst4|Mux14~0_combout\);

-- Location: LCCOMB_X77_Y47_N6
\inst4|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux15~0_combout\ = (\inst4|third_value\(1) & ((\inst4|third_value\(0) & ((\inst4|third_value\(3)))) # (!\inst4|third_value\(0) & (\inst4|third_value\(2))))) # (!\inst4|third_value\(1) & (\inst4|third_value\(2) & (\inst4|third_value\(0) $ 
-- (\inst4|third_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|third_value\(0),
	datab => \inst4|third_value\(2),
	datac => \inst4|third_value\(1),
	datad => \inst4|third_value\(3),
	combout => \inst4|Mux15~0_combout\);

-- Location: LCCOMB_X77_Y47_N0
\inst4|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux16~0_combout\ = (\inst4|third_value\(2) & (\inst4|third_value\(3) & ((\inst4|third_value\(1)) # (!\inst4|third_value\(0))))) # (!\inst4|third_value\(2) & (!\inst4|third_value\(0) & (\inst4|third_value\(1) & !\inst4|third_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|third_value\(0),
	datab => \inst4|third_value\(2),
	datac => \inst4|third_value\(1),
	datad => \inst4|third_value\(3),
	combout => \inst4|Mux16~0_combout\);

-- Location: LCCOMB_X77_Y47_N10
\inst4|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux17~0_combout\ = (\inst4|third_value\(1) & (\inst4|third_value\(0) & (\inst4|third_value\(2)))) # (!\inst4|third_value\(1) & (!\inst4|third_value\(3) & (\inst4|third_value\(0) $ (\inst4|third_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|third_value\(0),
	datab => \inst4|third_value\(2),
	datac => \inst4|third_value\(1),
	datad => \inst4|third_value\(3),
	combout => \inst4|Mux17~0_combout\);

-- Location: LCCOMB_X77_Y47_N12
\inst4|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux18~0_combout\ = (\inst4|third_value\(1) & (\inst4|third_value\(0) & ((!\inst4|third_value\(3))))) # (!\inst4|third_value\(1) & ((\inst4|third_value\(2) & ((!\inst4|third_value\(3)))) # (!\inst4|third_value\(2) & (\inst4|third_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|third_value\(0),
	datab => \inst4|third_value\(2),
	datac => \inst4|third_value\(1),
	datad => \inst4|third_value\(3),
	combout => \inst4|Mux18~0_combout\);

-- Location: LCCOMB_X77_Y47_N14
\inst4|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux19~0_combout\ = (\inst4|third_value\(0) & (\inst4|third_value\(3) $ (((\inst4|third_value\(1)) # (!\inst4|third_value\(2)))))) # (!\inst4|third_value\(0) & (!\inst4|third_value\(2) & (\inst4|third_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|third_value\(0),
	datab => \inst4|third_value\(2),
	datac => \inst4|third_value\(1),
	datad => \inst4|third_value\(3),
	combout => \inst4|Mux19~0_combout\);

-- Location: LCCOMB_X77_Y47_N4
\inst4|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux20~0_combout\ = (\inst4|third_value\(0) & ((\inst4|third_value\(3)) # (\inst4|third_value\(2) $ (\inst4|third_value\(1))))) # (!\inst4|third_value\(0) & ((\inst4|third_value\(1)) # (\inst4|third_value\(2) $ (\inst4|third_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|third_value\(0),
	datab => \inst4|third_value\(2),
	datac => \inst4|third_value\(1),
	datad => \inst4|third_value\(3),
	combout => \inst4|Mux20~0_combout\);

-- Location: FF_X59_Y49_N31
\inst6|first_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(19),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|first_value\(3));

-- Location: FF_X59_Y49_N17
\inst6|first_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(16),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|first_value\(0));

-- Location: FF_X59_Y49_N9
\inst6|first_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(17),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|first_value\(1));

-- Location: FF_X59_Y49_N29
\inst6|first_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(18),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|first_value\(2));

-- Location: LCCOMB_X58_Y49_N4
\inst6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\inst6|first_value\(3) & (\inst6|first_value\(0) & (\inst6|first_value\(1) $ (\inst6|first_value\(2))))) # (!\inst6|first_value\(3) & (!\inst6|first_value\(1) & (\inst6|first_value\(0) $ (\inst6|first_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|first_value\(3),
	datab => \inst6|first_value\(0),
	datac => \inst6|first_value\(1),
	datad => \inst6|first_value\(2),
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X59_Y49_N10
\inst6|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (\inst6|first_value\(1) & ((\inst6|first_value\(0) & (\inst6|first_value\(3))) # (!\inst6|first_value\(0) & ((\inst6|first_value\(2)))))) # (!\inst6|first_value\(1) & (\inst6|first_value\(2) & (\inst6|first_value\(0) $ 
-- (\inst6|first_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|first_value\(0),
	datab => \inst6|first_value\(1),
	datac => \inst6|first_value\(3),
	datad => \inst6|first_value\(2),
	combout => \inst6|Mux1~0_combout\);

-- Location: LCCOMB_X59_Y49_N6
\inst6|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (\inst6|first_value\(3) & (\inst6|first_value\(2) & ((\inst6|first_value\(1)) # (!\inst6|first_value\(0))))) # (!\inst6|first_value\(3) & (!\inst6|first_value\(0) & (\inst6|first_value\(1) & !\inst6|first_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|first_value\(0),
	datab => \inst6|first_value\(1),
	datac => \inst6|first_value\(3),
	datad => \inst6|first_value\(2),
	combout => \inst6|Mux2~0_combout\);

-- Location: LCCOMB_X59_Y49_N26
\inst6|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (\inst6|first_value\(1) & (\inst6|first_value\(0) & ((\inst6|first_value\(2))))) # (!\inst6|first_value\(1) & (!\inst6|first_value\(3) & (\inst6|first_value\(0) $ (\inst6|first_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|first_value\(0),
	datab => \inst6|first_value\(1),
	datac => \inst6|first_value\(3),
	datad => \inst6|first_value\(2),
	combout => \inst6|Mux3~0_combout\);

-- Location: LCCOMB_X59_Y49_N16
\inst6|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = (\inst6|first_value\(1) & (!\inst6|first_value\(3) & (\inst6|first_value\(0)))) # (!\inst6|first_value\(1) & ((\inst6|first_value\(2) & (!\inst6|first_value\(3))) # (!\inst6|first_value\(2) & ((\inst6|first_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|first_value\(3),
	datab => \inst6|first_value\(1),
	datac => \inst6|first_value\(0),
	datad => \inst6|first_value\(2),
	combout => \inst6|Mux4~0_combout\);

-- Location: LCCOMB_X59_Y49_N8
\inst6|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = (\inst6|first_value\(0) & (\inst6|first_value\(3) $ (((\inst6|first_value\(1)) # (!\inst6|first_value\(2)))))) # (!\inst6|first_value\(0) & (!\inst6|first_value\(2) & (\inst6|first_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|first_value\(0),
	datab => \inst6|first_value\(2),
	datac => \inst6|first_value\(1),
	datad => \inst6|first_value\(3),
	combout => \inst6|Mux5~0_combout\);

-- Location: LCCOMB_X59_Y49_N28
\inst6|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = (\inst6|first_value\(0) & ((\inst6|first_value\(3)) # (\inst6|first_value\(1) $ (\inst6|first_value\(2))))) # (!\inst6|first_value\(0) & ((\inst6|first_value\(1)) # (\inst6|first_value\(2) $ (\inst6|first_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|first_value\(0),
	datab => \inst6|first_value\(1),
	datac => \inst6|first_value\(2),
	datad => \inst6|first_value\(3),
	combout => \inst6|Mux6~0_combout\);

-- Location: FF_X59_Y49_N23
\inst6|second_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(21),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|second_value\(1));

-- Location: FF_X59_Y49_N15
\inst6|second_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst5|valor_interno\(23),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|second_value\(3));

-- Location: LCCOMB_X58_Y49_N6
\inst6|second_value[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|second_value[2]~feeder_combout\ = \inst|inst5|valor_interno\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst5|valor_interno\(22),
	combout => \inst6|second_value[2]~feeder_combout\);

-- Location: FF_X58_Y49_N7
\inst6|second_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|second_value[2]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|second_value\(2));

-- Location: LCCOMB_X59_Y49_N24
\inst6|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux7~0_combout\ = (\inst6|second_value\(3) & (\inst6|first_value\(3) & (\inst6|second_value\(1) $ (\inst6|second_value\(2))))) # (!\inst6|second_value\(3) & (!\inst6|second_value\(1) & (\inst6|second_value\(2) $ (\inst6|first_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|second_value\(1),
	datab => \inst6|second_value\(3),
	datac => \inst6|second_value\(2),
	datad => \inst6|first_value\(3),
	combout => \inst6|Mux7~0_combout\);

-- Location: LCCOMB_X58_Y49_N12
\inst6|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux8~0_combout\ = (\inst6|second_value\(1) & ((\inst6|first_value\(3) & (\inst6|second_value\(3))) # (!\inst6|first_value\(3) & ((\inst6|second_value\(2)))))) # (!\inst6|second_value\(1) & (\inst6|second_value\(2) & (\inst6|first_value\(3) $ 
-- (\inst6|second_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|first_value\(3),
	datab => \inst6|second_value\(1),
	datac => \inst6|second_value\(3),
	datad => \inst6|second_value\(2),
	combout => \inst6|Mux8~0_combout\);

-- Location: LCCOMB_X58_Y49_N30
\inst6|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux9~0_combout\ = (\inst6|second_value\(3) & (\inst6|second_value\(2) & ((\inst6|second_value\(1)) # (!\inst6|first_value\(3))))) # (!\inst6|second_value\(3) & (!\inst6|first_value\(3) & (\inst6|second_value\(1) & !\inst6|second_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|first_value\(3),
	datab => \inst6|second_value\(1),
	datac => \inst6|second_value\(3),
	datad => \inst6|second_value\(2),
	combout => \inst6|Mux9~0_combout\);

-- Location: LCCOMB_X59_Y49_N30
\inst6|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux10~0_combout\ = (\inst6|second_value\(1) & (((\inst6|first_value\(3) & \inst6|second_value\(2))))) # (!\inst6|second_value\(1) & (!\inst6|second_value\(3) & (\inst6|first_value\(3) $ (\inst6|second_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|second_value\(1),
	datab => \inst6|second_value\(3),
	datac => \inst6|first_value\(3),
	datad => \inst6|second_value\(2),
	combout => \inst6|Mux10~0_combout\);

-- Location: LCCOMB_X59_Y49_N22
\inst6|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux11~0_combout\ = (\inst6|second_value\(1) & (((!\inst6|second_value\(3) & \inst6|first_value\(3))))) # (!\inst6|second_value\(1) & ((\inst6|second_value\(2) & (!\inst6|second_value\(3))) # (!\inst6|second_value\(2) & ((\inst6|first_value\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|second_value\(2),
	datab => \inst6|second_value\(3),
	datac => \inst6|second_value\(1),
	datad => \inst6|first_value\(3),
	combout => \inst6|Mux11~0_combout\);

-- Location: LCCOMB_X59_Y49_N20
\inst6|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux12~0_combout\ = (\inst6|first_value\(3) & (\inst6|second_value\(3) $ (((\inst6|second_value\(1)) # (!\inst6|second_value\(2)))))) # (!\inst6|first_value\(3) & (\inst6|second_value\(1) & ((!\inst6|second_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|second_value\(1),
	datab => \inst6|second_value\(3),
	datac => \inst6|second_value\(2),
	datad => \inst6|first_value\(3),
	combout => \inst6|Mux12~0_combout\);

-- Location: LCCOMB_X59_Y49_N14
\inst6|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux13~0_combout\ = (\inst6|first_value\(3) & ((\inst6|second_value\(3)) # (\inst6|second_value\(1) $ (\inst6|second_value\(2))))) # (!\inst6|first_value\(3) & ((\inst6|second_value\(1)) # (\inst6|second_value\(2) $ (\inst6|second_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|second_value\(1),
	datab => \inst6|second_value\(2),
	datac => \inst6|second_value\(3),
	datad => \inst6|first_value\(3),
	combout => \inst6|Mux13~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_n <= \n~output_o\;

ww_z <= \z~output_o\;

ww_v <= \v~output_o\;

ww_c <= \c~output_o\;

ww_h <= \h~output_o\;

ww_i <= \i~output_o\;

ww_clk_out <= \clk_out~output_o\;

ww_disp1(6) <= \disp1[6]~output_o\;

ww_disp1(5) <= \disp1[5]~output_o\;

ww_disp1(4) <= \disp1[4]~output_o\;

ww_disp1(3) <= \disp1[3]~output_o\;

ww_disp1(2) <= \disp1[2]~output_o\;

ww_disp1(1) <= \disp1[1]~output_o\;

ww_disp1(0) <= \disp1[0]~output_o\;

ww_disp2(6) <= \disp2[6]~output_o\;

ww_disp2(5) <= \disp2[5]~output_o\;

ww_disp2(4) <= \disp2[4]~output_o\;

ww_disp2(3) <= \disp2[3]~output_o\;

ww_disp2(2) <= \disp2[2]~output_o\;

ww_disp2(1) <= \disp2[1]~output_o\;

ww_disp2(0) <= \disp2[0]~output_o\;

ww_disp3(6) <= \disp3[6]~output_o\;

ww_disp3(5) <= \disp3[5]~output_o\;

ww_disp3(4) <= \disp3[4]~output_o\;

ww_disp3(3) <= \disp3[3]~output_o\;

ww_disp3(2) <= \disp3[2]~output_o\;

ww_disp3(1) <= \disp3[1]~output_o\;

ww_disp3(0) <= \disp3[0]~output_o\;

ww_disp4(6) <= \disp4[6]~output_o\;

ww_disp4(5) <= \disp4[5]~output_o\;

ww_disp4(4) <= \disp4[4]~output_o\;

ww_disp4(3) <= \disp4[3]~output_o\;

ww_disp4(2) <= \disp4[2]~output_o\;

ww_disp4(1) <= \disp4[1]~output_o\;

ww_disp4(0) <= \disp4[0]~output_o\;

ww_disp5(6) <= \disp5[6]~output_o\;

ww_disp5(5) <= \disp5[5]~output_o\;

ww_disp5(4) <= \disp5[4]~output_o\;

ww_disp5(3) <= \disp5[3]~output_o\;

ww_disp5(2) <= \disp5[2]~output_o\;

ww_disp5(1) <= \disp5[1]~output_o\;

ww_disp5(0) <= \disp5[0]~output_o\;

ww_disp6(6) <= \disp6[6]~output_o\;

ww_disp6(5) <= \disp6[5]~output_o\;

ww_disp6(4) <= \disp6[4]~output_o\;

ww_disp6(3) <= \disp6[3]~output_o\;

ww_disp6(2) <= \disp6[2]~output_o\;

ww_disp6(1) <= \disp6[1]~output_o\;

ww_disp6(0) <= \disp6[0]~output_o\;
END structure;


