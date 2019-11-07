-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "11/06/2019 06:45:07"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pipeline IS
    PORT (
	n : OUT std_logic;
	RELOJ : IN std_logic;
	RESET : IN std_logic;
	z : OUT std_logic;
	v : OUT std_logic;
	c : OUT std_logic;
	h : OUT std_logic;
	i : OUT std_logic;
	ACCA_D : OUT std_logic_vector(15 DOWNTO 0);
	ACCB_D : OUT std_logic_vector(15 DOWNTO 0);
	AUX_D : OUT std_logic_vector(15 DOWNTO 0);
	IX_D : OUT std_logic_vector(15 DOWNTO 0);
	IY_D : OUT std_logic_vector(15 DOWNTO 0);
	SP_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipeline;

-- Design Ports Information
-- n	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[15]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[14]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[13]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[12]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[11]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[10]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[9]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[15]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[14]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[12]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[11]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[10]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[9]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[8]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[15]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[14]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[13]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[12]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[11]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[9]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[8]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[7]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[15]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[14]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[13]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[12]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[11]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[10]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[9]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[8]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[3]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[1]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[15]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[13]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[12]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[11]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[10]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[9]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[8]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[4]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_RELOJ : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_h : std_logic;
SIGNAL ww_i : std_logic;
SIGNAL ww_ACCA_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ACCB_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AUX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IY_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SP_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst3|Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|opres[16]~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOJ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \n~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \h~output_o\ : std_logic;
SIGNAL \i~output_o\ : std_logic;
SIGNAL \ACCA_D[15]~output_o\ : std_logic;
SIGNAL \ACCA_D[14]~output_o\ : std_logic;
SIGNAL \ACCA_D[13]~output_o\ : std_logic;
SIGNAL \ACCA_D[12]~output_o\ : std_logic;
SIGNAL \ACCA_D[11]~output_o\ : std_logic;
SIGNAL \ACCA_D[10]~output_o\ : std_logic;
SIGNAL \ACCA_D[9]~output_o\ : std_logic;
SIGNAL \ACCA_D[8]~output_o\ : std_logic;
SIGNAL \ACCA_D[7]~output_o\ : std_logic;
SIGNAL \ACCA_D[6]~output_o\ : std_logic;
SIGNAL \ACCA_D[5]~output_o\ : std_logic;
SIGNAL \ACCA_D[4]~output_o\ : std_logic;
SIGNAL \ACCA_D[3]~output_o\ : std_logic;
SIGNAL \ACCA_D[2]~output_o\ : std_logic;
SIGNAL \ACCA_D[1]~output_o\ : std_logic;
SIGNAL \ACCA_D[0]~output_o\ : std_logic;
SIGNAL \ACCB_D[15]~output_o\ : std_logic;
SIGNAL \ACCB_D[14]~output_o\ : std_logic;
SIGNAL \ACCB_D[13]~output_o\ : std_logic;
SIGNAL \ACCB_D[12]~output_o\ : std_logic;
SIGNAL \ACCB_D[11]~output_o\ : std_logic;
SIGNAL \ACCB_D[10]~output_o\ : std_logic;
SIGNAL \ACCB_D[9]~output_o\ : std_logic;
SIGNAL \ACCB_D[8]~output_o\ : std_logic;
SIGNAL \ACCB_D[7]~output_o\ : std_logic;
SIGNAL \ACCB_D[6]~output_o\ : std_logic;
SIGNAL \ACCB_D[5]~output_o\ : std_logic;
SIGNAL \ACCB_D[4]~output_o\ : std_logic;
SIGNAL \ACCB_D[3]~output_o\ : std_logic;
SIGNAL \ACCB_D[2]~output_o\ : std_logic;
SIGNAL \ACCB_D[1]~output_o\ : std_logic;
SIGNAL \ACCB_D[0]~output_o\ : std_logic;
SIGNAL \AUX_D[15]~output_o\ : std_logic;
SIGNAL \AUX_D[14]~output_o\ : std_logic;
SIGNAL \AUX_D[13]~output_o\ : std_logic;
SIGNAL \AUX_D[12]~output_o\ : std_logic;
SIGNAL \AUX_D[11]~output_o\ : std_logic;
SIGNAL \AUX_D[10]~output_o\ : std_logic;
SIGNAL \AUX_D[9]~output_o\ : std_logic;
SIGNAL \AUX_D[8]~output_o\ : std_logic;
SIGNAL \AUX_D[7]~output_o\ : std_logic;
SIGNAL \AUX_D[6]~output_o\ : std_logic;
SIGNAL \AUX_D[5]~output_o\ : std_logic;
SIGNAL \AUX_D[4]~output_o\ : std_logic;
SIGNAL \AUX_D[3]~output_o\ : std_logic;
SIGNAL \AUX_D[2]~output_o\ : std_logic;
SIGNAL \AUX_D[1]~output_o\ : std_logic;
SIGNAL \AUX_D[0]~output_o\ : std_logic;
SIGNAL \IX_D[15]~output_o\ : std_logic;
SIGNAL \IX_D[14]~output_o\ : std_logic;
SIGNAL \IX_D[13]~output_o\ : std_logic;
SIGNAL \IX_D[12]~output_o\ : std_logic;
SIGNAL \IX_D[11]~output_o\ : std_logic;
SIGNAL \IX_D[10]~output_o\ : std_logic;
SIGNAL \IX_D[9]~output_o\ : std_logic;
SIGNAL \IX_D[8]~output_o\ : std_logic;
SIGNAL \IX_D[7]~output_o\ : std_logic;
SIGNAL \IX_D[6]~output_o\ : std_logic;
SIGNAL \IX_D[5]~output_o\ : std_logic;
SIGNAL \IX_D[4]~output_o\ : std_logic;
SIGNAL \IX_D[3]~output_o\ : std_logic;
SIGNAL \IX_D[2]~output_o\ : std_logic;
SIGNAL \IX_D[1]~output_o\ : std_logic;
SIGNAL \IX_D[0]~output_o\ : std_logic;
SIGNAL \IY_D[15]~output_o\ : std_logic;
SIGNAL \IY_D[14]~output_o\ : std_logic;
SIGNAL \IY_D[13]~output_o\ : std_logic;
SIGNAL \IY_D[12]~output_o\ : std_logic;
SIGNAL \IY_D[11]~output_o\ : std_logic;
SIGNAL \IY_D[10]~output_o\ : std_logic;
SIGNAL \IY_D[9]~output_o\ : std_logic;
SIGNAL \IY_D[8]~output_o\ : std_logic;
SIGNAL \IY_D[7]~output_o\ : std_logic;
SIGNAL \IY_D[6]~output_o\ : std_logic;
SIGNAL \IY_D[5]~output_o\ : std_logic;
SIGNAL \IY_D[4]~output_o\ : std_logic;
SIGNAL \IY_D[3]~output_o\ : std_logic;
SIGNAL \IY_D[2]~output_o\ : std_logic;
SIGNAL \IY_D[1]~output_o\ : std_logic;
SIGNAL \IY_D[0]~output_o\ : std_logic;
SIGNAL \SP_D[15]~output_o\ : std_logic;
SIGNAL \SP_D[14]~output_o\ : std_logic;
SIGNAL \SP_D[13]~output_o\ : std_logic;
SIGNAL \SP_D[12]~output_o\ : std_logic;
SIGNAL \SP_D[11]~output_o\ : std_logic;
SIGNAL \SP_D[10]~output_o\ : std_logic;
SIGNAL \SP_D[9]~output_o\ : std_logic;
SIGNAL \SP_D[8]~output_o\ : std_logic;
SIGNAL \SP_D[7]~output_o\ : std_logic;
SIGNAL \SP_D[6]~output_o\ : std_logic;
SIGNAL \SP_D[5]~output_o\ : std_logic;
SIGNAL \SP_D[4]~output_o\ : std_logic;
SIGNAL \SP_D[3]~output_o\ : std_logic;
SIGNAL \SP_D[2]~output_o\ : std_logic;
SIGNAL \SP_D[1]~output_o\ : std_logic;
SIGNAL \SP_D[0]~output_o\ : std_logic;
SIGNAL \RELOJ~input_o\ : std_logic;
SIGNAL \RELOJ~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst3|SALIDA[0]~6_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[3]~13\ : std_logic;
SIGNAL \inst|inst3|SALIDA[4]~14_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[4]~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux9~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux13~1_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~2_combout\ : std_logic;
SIGNAL \inst|inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal2~1_combout\ : std_logic;
SIGNAL \inst3|inst10|selfalgs[0]~0_combout\ : std_logic;
SIGNAL \inst2|inst107|selregw[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal2~2_combout\ : std_logic;
SIGNAL \inst2|inst107|selregw[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|inst10|selfalgs[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|opres[13]~28_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|opres[11]~24_combout\ : std_logic;
SIGNAL \inst2|inst|opres[9]~20_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|opres[7]~16_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~3_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~3clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~13\ : std_logic;
SIGNAL \inst2|inst|Add0~14_combout\ : std_logic;
SIGNAL \inst2|inst|opres[6]~14_combout\ : std_logic;
SIGNAL \inst2|inst|opres[6]~15_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~15\ : std_logic;
SIGNAL \inst2|inst|Add0~16_combout\ : std_logic;
SIGNAL \inst2|inst|opres[7]~17_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~17\ : std_logic;
SIGNAL \inst2|inst|Add0~18_combout\ : std_logic;
SIGNAL \inst2|inst|opres[8]~18_combout\ : std_logic;
SIGNAL \inst2|inst|opres[8]~19_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~19\ : std_logic;
SIGNAL \inst2|inst|Add0~20_combout\ : std_logic;
SIGNAL \inst2|inst|opres[9]~21_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~21\ : std_logic;
SIGNAL \inst2|inst|Add0~22_combout\ : std_logic;
SIGNAL \inst2|inst|opres[10]~22_combout\ : std_logic;
SIGNAL \inst2|inst|opres[10]~23_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~23\ : std_logic;
SIGNAL \inst2|inst|Add0~24_combout\ : std_logic;
SIGNAL \inst2|inst|opres[11]~25_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~25\ : std_logic;
SIGNAL \inst2|inst|Add0~26_combout\ : std_logic;
SIGNAL \inst2|inst|opres[12]~26_combout\ : std_logic;
SIGNAL \inst2|inst|opres[12]~27_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[12]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~27\ : std_logic;
SIGNAL \inst2|inst|Add0~28_combout\ : std_logic;
SIGNAL \inst2|inst|opres[13]~29_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[13]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~29\ : std_logic;
SIGNAL \inst2|inst|Add0~30_combout\ : std_logic;
SIGNAL \inst2|inst|opres[14]~30_combout\ : std_logic;
SIGNAL \inst2|inst|opres[14]~31_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~31\ : std_logic;
SIGNAL \inst2|inst|Add0~33\ : std_logic;
SIGNAL \inst2|inst|Add0~34_combout\ : std_logic;
SIGNAL \inst2|inst|opres[16]~34_combout\ : std_logic;
SIGNAL \inst2|inst3|ci~combout\ : std_logic;
SIGNAL \inst2|inst|Add0~1_cout\ : std_logic;
SIGNAL \inst2|inst|Add0~3\ : std_logic;
SIGNAL \inst2|inst|Add0~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[1]~4_combout\ : std_logic;
SIGNAL \inst2|inst|opres[1]~5_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst202|OP2[1]~0_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~5\ : std_logic;
SIGNAL \inst2|inst|Add0~6_combout\ : std_logic;
SIGNAL \inst2|inst|opres[2]~6_combout\ : std_logic;
SIGNAL \inst2|inst|opres[2]~7_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCB|SALIDA[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~7\ : std_logic;
SIGNAL \inst2|inst|Add0~8_combout\ : std_logic;
SIGNAL \inst2|inst|opres[3]~8_combout\ : std_logic;
SIGNAL \inst2|inst|opres[3]~9_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~9\ : std_logic;
SIGNAL \inst2|inst|Add0~11\ : std_logic;
SIGNAL \inst2|inst|Add0~12_combout\ : std_logic;
SIGNAL \inst2|inst|opres[5]~12_combout\ : std_logic;
SIGNAL \inst2|inst|opres[5]~13_combout\ : std_logic;
SIGNAL \inst3|inst700666|ACCA|SALIDA[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700|SALIDA[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[4]~10_combout\ : std_logic;
SIGNAL \inst2|inst|opres[4]~11_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal5~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal5~1_combout\ : std_logic;
SIGNAL \inst3|inst10|vf~q\ : std_logic;
SIGNAL \inst2|inst100|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst2|inst100|valor_interno~q\ : std_logic;
SIGNAL \inst|inst3|SALIDA[4]~15\ : std_logic;
SIGNAL \inst|inst3|SALIDA[5]~16_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst|inst1|Mux15~1_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|inst206|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|inst206|selop[2]~0_combout\ : std_logic;
SIGNAL \inst3|inst10|selc~q\ : std_logic;
SIGNAL \inst2|inst|opres[0]~32_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~2_combout\ : std_logic;
SIGNAL \inst2|inst|opres[0]~33_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[0]~7\ : std_logic;
SIGNAL \inst|inst3|SALIDA[1]~8_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[1]~9\ : std_logic;
SIGNAL \inst|inst3|SALIDA[2]~10_combout\ : std_logic;
SIGNAL \inst|inst3|SALIDA[2]~11\ : std_logic;
SIGNAL \inst|inst3|SALIDA[3]~12_combout\ : std_logic;
SIGNAL \inst|inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst3|inst206|sr~2_combout\ : std_logic;
SIGNAL \inst3|inst10|selop[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~1_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~0_combout\ : std_logic;
SIGNAL \inst2|inst|Add0~32_combout\ : std_logic;
SIGNAL \inst2|inst|opres[15]~2_combout\ : std_logic;
SIGNAL \inst3|inst10|selfalgs[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|inst3|Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst3|ni~combout\ : std_logic;
SIGNAL \inst2|inst101|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst|WideOr0~2_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~3_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~1_combout\ : std_logic;
SIGNAL \inst2|inst|WideOr0~4_combout\ : std_logic;
SIGNAL \inst2|inst3|zi~combout\ : std_logic;
SIGNAL \inst2|inst102|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst3|vi~0_combout\ : std_logic;
SIGNAL \inst2|inst3|vi~combout\ : std_logic;
SIGNAL \inst2|inst103|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst104|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst2|inst104|valor_interno~q\ : std_logic;
SIGNAL \inst2|inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|inst3|hi~combout\ : std_logic;
SIGNAL \inst2|inst105|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst2|inst105|valor_interno~q\ : std_logic;
SIGNAL \inst3|inst700666|inst1000|Equal1~2_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[13]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst700666|AUX|SALIDA[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst202|OP1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|inst5|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|inst|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst3|inst10|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst700|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|inst3|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst2|datow\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst700666|ACCB|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst700666|ACCA|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst700666|AUX|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst6|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst10|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst202|OP2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|inst8|SALIDA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RELOJ~inputclkctrl_outclk\ : std_logic;

BEGIN

n <= ww_n;
ww_RELOJ <= RELOJ;
ww_RESET <= RESET;
z <= ww_z;
v <= ww_v;
c <= ww_c;
h <= ww_h;
i <= ww_i;
ACCA_D <= ww_ACCA_D;
ACCB_D <= ww_ACCB_D;
AUX_D <= ww_AUX_D;
IX_D <= ww_IX_D;
IY_D <= ww_IY_D;
SP_D <= ww_SP_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|inst3|Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst3|Equal0~0_combout\);

\inst2|inst|opres[16]~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst|opres[16]~3_combout\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\RELOJ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RELOJ~input_o\);
\ALT_INV_RELOJ~inputclkctrl_outclk\ <= NOT \RELOJ~inputclkctrl_outclk\;

-- Location: IOOBUF_X1_Y0_N2
\n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst101|valor_interno~q\,
	devoe => ww_devoe,
	o => \n~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst102|valor_interno~q\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\v~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst103|valor_interno~q\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst104|valor_interno~q\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\h~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst105|valor_interno~q\,
	devoe => ww_devoe,
	o => \h~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\i~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\ACCA_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(15),
	devoe => ww_devoe,
	o => \ACCA_D[15]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\ACCA_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(14),
	devoe => ww_devoe,
	o => \ACCA_D[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\ACCA_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(13),
	devoe => ww_devoe,
	o => \ACCA_D[13]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\ACCA_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(12),
	devoe => ww_devoe,
	o => \ACCA_D[12]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\ACCA_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(11),
	devoe => ww_devoe,
	o => \ACCA_D[11]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\ACCA_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(10),
	devoe => ww_devoe,
	o => \ACCA_D[10]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\ACCA_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(9),
	devoe => ww_devoe,
	o => \ACCA_D[9]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\ACCA_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(8),
	devoe => ww_devoe,
	o => \ACCA_D[8]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\ACCA_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(7),
	devoe => ww_devoe,
	o => \ACCA_D[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\ACCA_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(6),
	devoe => ww_devoe,
	o => \ACCA_D[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ACCA_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(5),
	devoe => ww_devoe,
	o => \ACCA_D[5]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\ACCA_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(4),
	devoe => ww_devoe,
	o => \ACCA_D[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\ACCA_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(3),
	devoe => ww_devoe,
	o => \ACCA_D[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\ACCA_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(2),
	devoe => ww_devoe,
	o => \ACCA_D[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\ACCA_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(1),
	devoe => ww_devoe,
	o => \ACCA_D[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\ACCA_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCA|SALIDA\(0),
	devoe => ww_devoe,
	o => \ACCA_D[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\ACCB_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(15),
	devoe => ww_devoe,
	o => \ACCB_D[15]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\ACCB_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(14),
	devoe => ww_devoe,
	o => \ACCB_D[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\ACCB_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(13),
	devoe => ww_devoe,
	o => \ACCB_D[13]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\ACCB_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(12),
	devoe => ww_devoe,
	o => \ACCB_D[12]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\ACCB_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(11),
	devoe => ww_devoe,
	o => \ACCB_D[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\ACCB_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(10),
	devoe => ww_devoe,
	o => \ACCB_D[10]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\ACCB_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(9),
	devoe => ww_devoe,
	o => \ACCB_D[9]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\ACCB_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(8),
	devoe => ww_devoe,
	o => \ACCB_D[8]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ACCB_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(7),
	devoe => ww_devoe,
	o => \ACCB_D[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\ACCB_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(6),
	devoe => ww_devoe,
	o => \ACCB_D[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\ACCB_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(5),
	devoe => ww_devoe,
	o => \ACCB_D[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\ACCB_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(4),
	devoe => ww_devoe,
	o => \ACCB_D[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\ACCB_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(3),
	devoe => ww_devoe,
	o => \ACCB_D[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\ACCB_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(2),
	devoe => ww_devoe,
	o => \ACCB_D[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\ACCB_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(1),
	devoe => ww_devoe,
	o => \ACCB_D[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\ACCB_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|ACCB|SALIDA\(0),
	devoe => ww_devoe,
	o => \ACCB_D[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\AUX_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(15),
	devoe => ww_devoe,
	o => \AUX_D[15]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\AUX_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(14),
	devoe => ww_devoe,
	o => \AUX_D[14]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\AUX_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(13),
	devoe => ww_devoe,
	o => \AUX_D[13]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\AUX_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(12),
	devoe => ww_devoe,
	o => \AUX_D[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\AUX_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(11),
	devoe => ww_devoe,
	o => \AUX_D[11]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\AUX_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(10),
	devoe => ww_devoe,
	o => \AUX_D[10]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\AUX_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(9),
	devoe => ww_devoe,
	o => \AUX_D[9]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\AUX_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(8),
	devoe => ww_devoe,
	o => \AUX_D[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\AUX_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(7),
	devoe => ww_devoe,
	o => \AUX_D[7]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\AUX_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(6),
	devoe => ww_devoe,
	o => \AUX_D[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\AUX_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(5),
	devoe => ww_devoe,
	o => \AUX_D[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\AUX_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(4),
	devoe => ww_devoe,
	o => \AUX_D[4]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\AUX_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(3),
	devoe => ww_devoe,
	o => \AUX_D[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\AUX_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(2),
	devoe => ww_devoe,
	o => \AUX_D[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\AUX_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(1),
	devoe => ww_devoe,
	o => \AUX_D[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\AUX_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst700666|AUX|SALIDA\(0),
	devoe => ww_devoe,
	o => \AUX_D[0]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\IX_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[15]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\IX_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[14]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\IX_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[13]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\IX_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[12]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\IX_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[11]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\IX_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[10]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\IX_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[9]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\IX_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[8]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\IX_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[7]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\IX_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[6]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\IX_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[5]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\IX_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[4]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\IX_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\IX_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\IX_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[1]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\IX_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[0]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\IY_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[15]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\IY_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[14]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\IY_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[13]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\IY_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[12]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\IY_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[11]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\IY_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[10]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\IY_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[9]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\IY_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[8]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\IY_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[7]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\IY_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[6]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\IY_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[5]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\IY_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\IY_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[3]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\IY_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[2]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\IY_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[1]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\IY_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[0]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\SP_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[15]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\SP_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[14]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\SP_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[13]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\SP_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[12]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\SP_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[11]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\SP_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[10]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\SP_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[9]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\SP_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[8]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\SP_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\SP_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[6]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\SP_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\SP_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[4]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\SP_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[3]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\SP_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\SP_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\SP_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\RELOJ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RELOJ,
	o => \RELOJ~input_o\);

-- Location: CLKCTRL_G2
\RELOJ~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RELOJ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RELOJ~inputclkctrl_outclk\);

-- Location: LCCOMB_X10_Y8_N6
\inst|inst3|SALIDA[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[0]~6_combout\ = \inst|inst3|SALIDA\(0) $ (VCC)
-- \inst|inst3|SALIDA[0]~7\ = CARRY(\inst|inst3|SALIDA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(0),
	datad => VCC,
	combout => \inst|inst3|SALIDA[0]~6_combout\,
	cout => \inst|inst3|SALIDA[0]~7\);

-- Location: LCCOMB_X10_Y8_N12
\inst|inst3|SALIDA[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[3]~12_combout\ = (\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA[2]~11\)) # (!\inst|inst3|SALIDA\(3) & ((\inst|inst3|SALIDA[2]~11\) # (GND)))
-- \inst|inst3|SALIDA[3]~13\ = CARRY((!\inst|inst3|SALIDA[2]~11\) # (!\inst|inst3|SALIDA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datad => VCC,
	cin => \inst|inst3|SALIDA[2]~11\,
	combout => \inst|inst3|SALIDA[3]~12_combout\,
	cout => \inst|inst3|SALIDA[3]~13\);

-- Location: LCCOMB_X10_Y8_N14
\inst|inst3|SALIDA[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|SALIDA[4]~14_combout\ = (\inst|inst3|SALIDA\(4) & (\inst|inst3|SALIDA[3]~13\ $ (GND))) # (!\inst|inst3|SALIDA\(4) & (!\inst|inst3|SALIDA[3]~13\ & VCC))
-- \inst|inst3|SALIDA[4]~15\ = CARRY((\inst|inst3|SALIDA\(4) & !\inst|inst3|SALIDA[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(4),
	datad => VCC,
	cin => \inst|inst3|SALIDA[3]~13\,
	combout => \inst|inst3|SALIDA[4]~14_combout\,
	cout => \inst|inst3|SALIDA[4]~15\);

-- Location: LCCOMB_X9_Y8_N16
\inst3|inst700666|ACCB|SALIDA[4]~feeder\ : cycloneive_lcell_comb
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

-- Location: IOIBUF_X0_Y16_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G1
\RESET~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y8_N26
\inst|inst1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux9~0_combout\ = (\inst|inst3|SALIDA\(3)) # ((\inst|inst3|SALIDA\(2)) # (\inst|inst3|SALIDA\(0) $ (\inst|inst3|SALIDA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux9~0_combout\);

-- Location: LCCOMB_X11_Y8_N20
\inst|inst1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux9~1_combout\ = (!\inst|inst3|SALIDA\(4) & (!\inst|inst3|SALIDA\(5) & !\inst|inst1|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datac => \inst|inst3|SALIDA\(5),
	datad => \inst|inst1|Mux9~0_combout\,
	combout => \inst|inst1|Mux9~1_combout\);

-- Location: FF_X11_Y8_N21
\inst|inst5|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux9~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(22));

-- Location: LCCOMB_X11_Y8_N8
\inst|inst1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~1_combout\ = (\inst|inst3|SALIDA\(1) & \inst|inst1|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datac => \inst|inst1|Mux10~0_combout\,
	combout => \inst|inst1|Mux10~1_combout\);

-- Location: FF_X11_Y8_N9
\inst|inst5|valor_interno[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux10~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(20));

-- Location: LCCOMB_X11_Y8_N24
\inst|inst1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~0_combout\ = (\inst|inst3|SALIDA\(3)) # ((\inst|inst3|SALIDA\(2)) # ((!\inst|inst3|SALIDA\(0) & \inst|inst3|SALIDA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux13~0_combout\);

-- Location: LCCOMB_X4_Y8_N28
\inst|inst1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux13~1_combout\ = (!\inst|inst3|SALIDA\(4) & (!\inst|inst3|SALIDA\(5) & !\inst|inst1|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(4),
	datac => \inst|inst3|SALIDA\(5),
	datad => \inst|inst1|Mux13~0_combout\,
	combout => \inst|inst1|Mux13~1_combout\);

-- Location: FF_X4_Y8_N29
\inst|inst5|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux13~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(18));

-- Location: LCCOMB_X11_Y8_N10
\inst|inst1|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~2_combout\ = (\inst|inst3|SALIDA\(1) & (\inst|inst1|Mux10~0_combout\ & \inst|inst3|SALIDA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datab => \inst|inst1|Mux10~0_combout\,
	datac => \inst|inst3|SALIDA\(0),
	combout => \inst|inst1|Mux10~2_combout\);

-- Location: FF_X11_Y8_N11
\inst|inst5|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux10~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(21));

-- Location: LCCOMB_X11_Y8_N30
\inst|inst1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux8~0_combout\ = (!\inst|inst3|SALIDA\(1) & \inst|inst1|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(1),
	datac => \inst|inst1|Mux10~0_combout\,
	combout => \inst|inst1|Mux8~0_combout\);

-- Location: FF_X11_Y8_N31
\inst|inst5|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux8~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(23));

-- Location: LCCOMB_X4_Y8_N10
\inst3|inst206|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal2~0_combout\ = (!\inst|inst5|valor_interno\(16) & (\inst|inst5|valor_interno\(18) & (!\inst|inst5|valor_interno\(21) & \inst|inst5|valor_interno\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(16),
	datab => \inst|inst5|valor_interno\(18),
	datac => \inst|inst5|valor_interno\(21),
	datad => \inst|inst5|valor_interno\(23),
	combout => \inst3|inst206|Equal2~0_combout\);

-- Location: LCCOMB_X4_Y8_N24
\inst3|inst206|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal2~1_combout\ = (!\inst|inst5|valor_interno\(20) & (\inst|inst5|valor_interno\(17) & \inst3|inst206|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst5|valor_interno\(20),
	datac => \inst|inst5|valor_interno\(17),
	datad => \inst3|inst206|Equal2~0_combout\,
	combout => \inst3|inst206|Equal2~1_combout\);

-- Location: LCCOMB_X4_Y8_N12
\inst3|inst10|selfalgs[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst10|selfalgs[0]~0_combout\ = (\inst3|inst206|Equal0~1_combout\) # ((!\inst|inst5|valor_interno\(22) & \inst3|inst206|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(22),
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst206|Equal2~1_combout\,
	combout => \inst3|inst10|selfalgs[0]~0_combout\);

-- Location: FF_X4_Y8_N13
\inst3|inst10|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst10|selfalgs[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregw\(0));

-- Location: LCCOMB_X9_Y8_N10
\inst2|inst107|selregw[0]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X9_Y8_N11
\inst2|inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst107|selregw[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst107|selregw\(0));

-- Location: LCCOMB_X4_Y8_N14
\inst3|inst206|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal2~2_combout\ = (\inst|inst5|valor_interno\(22) & (!\inst|inst5|valor_interno\(20) & (\inst|inst5|valor_interno\(17) & \inst3|inst206|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(22),
	datab => \inst|inst5|valor_interno\(20),
	datac => \inst|inst5|valor_interno\(17),
	datad => \inst3|inst206|Equal2~0_combout\,
	combout => \inst3|inst206|Equal2~2_combout\);

-- Location: FF_X4_Y8_N15
\inst3|inst10|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst206|Equal2~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selregw\(2));

-- Location: LCCOMB_X9_Y8_N28
\inst2|inst107|selregw[2]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X9_Y8_N29
\inst2|inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst107|selregw[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst107|selregw\(2));

-- Location: LCCOMB_X9_Y8_N22
\inst3|inst700666|inst1000|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal1~1_combout\ = (!\inst2|inst107|selregw\(0) & \inst2|inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst107|selregw\(0),
	datad => \inst2|inst107|selregw\(2),
	combout => \inst3|inst700666|inst1000|Equal1~1_combout\);

-- Location: FF_X9_Y8_N17
\inst3|inst700666|ACCB|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(4));

-- Location: LCCOMB_X9_Y8_N4
\inst3|inst202|OP2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(4) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCB|SALIDA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCB|SALIDA\(4),
	combout => \inst3|inst202|OP2\(4));

-- Location: FF_X7_Y8_N15
\inst3|inst8|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(4));

-- Location: LCCOMB_X9_Y8_N14
\inst3|inst700666|inst1000|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal1~0_combout\ = (\inst2|inst107|selregw\(0) & !\inst2|inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst107|selregw\(0),
	datad => \inst2|inst107|selregw\(2),
	combout => \inst3|inst700666|inst1000|Equal1~0_combout\);

-- Location: FF_X7_Y8_N29
\inst3|inst700666|ACCA|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(4));

-- Location: LCCOMB_X7_Y8_N12
\inst3|inst202|OP1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(4) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(4),
	combout => \inst3|inst202|OP1\(4));

-- Location: FF_X7_Y8_N13
\inst3|inst700|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(4));

-- Location: LCCOMB_X5_Y8_N30
\inst3|inst10|selfalgs[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst10|selfalgs[1]~feeder_combout\ = \inst3|inst206|Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst10|selfalgs[1]~feeder_combout\);

-- Location: FF_X5_Y8_N31
\inst3|inst10|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst10|selfalgs[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(1));

-- Location: FF_X9_Y8_N23
\inst3|inst700666|ACCB|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(5));

-- Location: LCCOMB_X6_Y8_N14
\inst3|inst202|OP2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(5) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCB|SALIDA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCB|SALIDA\(5),
	combout => \inst3|inst202|OP2\(5));

-- Location: FF_X6_Y8_N15
\inst3|inst8|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(5));

-- Location: FF_X6_Y8_N25
\inst3|inst700666|ACCA|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(3));

-- Location: LCCOMB_X6_Y8_N20
\inst3|inst202|OP1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(3) = (\inst3|inst700666|ACCA|SALIDA\(3) & \inst3|inst206|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst700666|ACCA|SALIDA\(3),
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst202|OP1\(3));

-- Location: FF_X6_Y8_N21
\inst3|inst700|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(3));

-- Location: LCCOMB_X8_Y8_N24
\inst3|inst700666|ACCA|SALIDA[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[2]~feeder_combout\ = \inst2|inst6|SALIDA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(2),
	combout => \inst3|inst700666|ACCA|SALIDA[2]~feeder_combout\);

-- Location: FF_X8_Y8_N25
\inst3|inst700666|ACCA|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(2));

-- Location: LCCOMB_X8_Y8_N0
\inst3|inst202|OP1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(2) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(2),
	combout => \inst3|inst202|OP1\(2));

-- Location: FF_X7_Y8_N19
\inst3|inst700|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(2));

-- Location: LCCOMB_X8_Y8_N6
\inst3|inst700666|ACCA|SALIDA[1]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X8_Y8_N7
\inst3|inst700666|ACCA|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(1));

-- Location: LCCOMB_X8_Y8_N14
\inst3|inst202|OP1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(1) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(1),
	combout => \inst3|inst202|OP1\(1));

-- Location: FF_X7_Y8_N25
\inst3|inst700|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(1));

-- Location: LCCOMB_X8_Y8_N16
\inst3|inst700666|ACCA|SALIDA[0]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X8_Y8_N17
\inst3|inst700666|ACCA|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(0));

-- Location: LCCOMB_X8_Y8_N30
\inst3|inst202|OP1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(0) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(0),
	combout => \inst3|inst202|OP1\(0));

-- Location: FF_X7_Y8_N3
\inst3|inst700|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(0));

-- Location: LCCOMB_X9_Y8_N20
\inst3|inst700666|ACCB|SALIDA[0]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X9_Y8_N21
\inst3|inst700666|ACCB|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(0));

-- Location: LCCOMB_X6_Y7_N0
\inst3|inst202|OP2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(0) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCB|SALIDA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCB|SALIDA\(0),
	combout => \inst3|inst202|OP2\(0));

-- Location: FF_X6_Y7_N1
\inst3|inst8|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(0));

-- Location: LCCOMB_X5_Y7_N16
\inst2|inst2|datow[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(15) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(15),
	combout => \inst2|inst2|datow\(15));

-- Location: FF_X5_Y7_N17
\inst2|inst6|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(15));

-- Location: LCCOMB_X9_Y8_N0
\inst3|inst700666|ACCB|SALIDA[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\ = \inst2|inst6|SALIDA\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(15),
	combout => \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\);

-- Location: FF_X9_Y8_N1
\inst3|inst700666|ACCB|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(15));

-- Location: LCCOMB_X6_Y7_N16
\inst3|inst202|OP2[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(15) = (\inst3|inst700666|ACCB|SALIDA\(15) & \inst3|inst206|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst700666|ACCB|SALIDA\(15),
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst202|OP2\(15));

-- Location: FF_X6_Y7_N17
\inst3|inst8|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(15));

-- Location: FF_X6_Y8_N11
\inst3|inst700666|ACCA|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(15));

-- Location: LCCOMB_X6_Y7_N22
\inst3|inst202|OP1[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(15) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(15),
	combout => \inst3|inst202|OP1\(15));

-- Location: FF_X6_Y7_N23
\inst3|inst700|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(15));

-- Location: LCCOMB_X8_Y8_N12
\inst3|inst700666|ACCA|SALIDA[14]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X8_Y8_N13
\inst3|inst700666|ACCA|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(14));

-- Location: LCCOMB_X6_Y7_N28
\inst3|inst202|OP1[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(14) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(14),
	combout => \inst3|inst202|OP1\(14));

-- Location: FF_X6_Y7_N29
\inst3|inst700|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(14));

-- Location: FF_X8_Y7_N9
\inst3|inst700666|ACCB|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(13));

-- Location: LCCOMB_X8_Y7_N22
\inst3|inst202|OP2[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(13) = (\inst3|inst700666|ACCB|SALIDA\(13) & \inst3|inst206|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst700666|ACCB|SALIDA\(13),
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst202|OP2\(13));

-- Location: FF_X8_Y7_N23
\inst3|inst8|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(13));

-- Location: LCCOMB_X6_Y7_N24
\inst2|inst|opres[13]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[13]~28_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(13) & ((!\inst3|inst8|SALIDA\(13)) # (!\inst3|inst10|selfalgs\(1)))) # (!\inst3|inst700|SALIDA\(13) & ((\inst3|inst8|SALIDA\(13)))))) # (!\inst3|inst10|selop\(2) & 
-- (\inst3|inst10|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datab => \inst3|inst700|SALIDA\(13),
	datac => \inst3|inst10|selop\(2),
	datad => \inst3|inst8|SALIDA\(13),
	combout => \inst2|inst|opres[13]~28_combout\);

-- Location: FF_X9_Y8_N5
\inst3|inst700666|ACCB|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(12));

-- Location: LCCOMB_X8_Y7_N28
\inst3|inst202|OP2[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(12) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCB|SALIDA\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst3|inst700666|ACCB|SALIDA\(12),
	combout => \inst3|inst202|OP2\(12));

-- Location: FF_X8_Y7_N29
\inst3|inst8|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(12));

-- Location: LCCOMB_X8_Y8_N28
\inst3|inst700666|ACCA|SALIDA[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[11]~feeder_combout\ = \inst2|inst6|SALIDA\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(11),
	combout => \inst3|inst700666|ACCA|SALIDA[11]~feeder_combout\);

-- Location: FF_X8_Y8_N29
\inst3|inst700666|ACCA|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(11));

-- Location: LCCOMB_X7_Y7_N24
\inst3|inst202|OP1[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(11) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(11),
	combout => \inst3|inst202|OP1\(11));

-- Location: FF_X7_Y7_N25
\inst3|inst700|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(11));

-- Location: LCCOMB_X8_Y7_N0
\inst2|inst|opres[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[11]~24_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(11) & ((!\inst3|inst700|SALIDA\(11)) # (!\inst3|inst10|selfalgs\(1)))) # (!\inst3|inst8|SALIDA\(11) & ((\inst3|inst700|SALIDA\(11)))))) # (!\inst3|inst10|selop\(2) & 
-- (\inst3|inst10|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datab => \inst3|inst8|SALIDA\(11),
	datac => \inst3|inst10|selop\(2),
	datad => \inst3|inst700|SALIDA\(11),
	combout => \inst2|inst|opres[11]~24_combout\);

-- Location: FF_X9_Y8_N9
\inst3|inst700666|ACCB|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(10));

-- Location: LCCOMB_X8_Y7_N12
\inst3|inst202|OP2[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(10) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCB|SALIDA\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst3|inst700666|ACCB|SALIDA\(10),
	combout => \inst3|inst202|OP2\(10));

-- Location: FF_X8_Y7_N13
\inst3|inst8|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(10));

-- Location: FF_X8_Y7_N31
\inst3|inst700666|ACCB|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(9));

-- Location: LCCOMB_X8_Y7_N30
\inst3|inst202|OP2[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(9) = (\inst3|inst700666|ACCB|SALIDA\(9) & \inst3|inst206|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst700666|ACCB|SALIDA\(9),
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst202|OP2\(9));

-- Location: FF_X7_Y7_N17
\inst3|inst8|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(9));

-- Location: LCCOMB_X8_Y7_N16
\inst2|inst|opres[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[9]~20_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(9) & ((!\inst3|inst700|SALIDA\(9)) # (!\inst3|inst10|selfalgs\(1)))) # (!\inst3|inst8|SALIDA\(9) & ((\inst3|inst700|SALIDA\(9)))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(9),
	datab => \inst3|inst10|selfalgs\(1),
	datac => \inst3|inst700|SALIDA\(9),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[9]~20_combout\);

-- Location: LCCOMB_X8_Y7_N24
\inst3|inst700666|ACCB|SALIDA[8]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X8_Y7_N25
\inst3|inst700666|ACCB|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(8));

-- Location: LCCOMB_X8_Y7_N8
\inst3|inst202|OP2[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(8) = (\inst3|inst700666|ACCB|SALIDA\(8) & \inst3|inst206|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst700666|ACCB|SALIDA\(8),
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst202|OP2\(8));

-- Location: FF_X7_Y7_N15
\inst3|inst8|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(8));

-- Location: FF_X9_Y8_N15
\inst3|inst700666|ACCB|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(7));

-- Location: LCCOMB_X5_Y8_N26
\inst3|inst202|OP2[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(7) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCB|SALIDA\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCB|SALIDA\(7),
	combout => \inst3|inst202|OP2\(7));

-- Location: FF_X5_Y8_N27
\inst3|inst8|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(7));

-- Location: LCCOMB_X5_Y8_N12
\inst2|inst|opres[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[7]~16_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(7) & ((!\inst3|inst700|SALIDA\(7)) # (!\inst3|inst10|selfalgs\(1)))) # (!\inst3|inst8|SALIDA\(7) & ((\inst3|inst700|SALIDA\(7)))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(7),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst3|inst700|SALIDA\(7),
	combout => \inst2|inst|opres[7]~16_combout\);

-- Location: LCCOMB_X1_Y8_N12
\inst2|inst|opres[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[16]~3_combout\ = (!\inst3|inst10|selfalgs\(1) & !\inst3|inst10|selop\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[16]~3_combout\);

-- Location: CLKCTRL_G4
\inst2|inst|opres[16]~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst|opres[16]~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst|opres[16]~3clkctrl_outclk\);

-- Location: LCCOMB_X4_Y8_N16
\inst3|inst700666|ACCA|SALIDA[6]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X4_Y8_N17
\inst3|inst700666|ACCA|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(6));

-- Location: LCCOMB_X4_Y8_N0
\inst3|inst202|OP1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(6) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(6),
	combout => \inst3|inst202|OP1\(6));

-- Location: FF_X4_Y8_N1
\inst3|inst700|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(6));

-- Location: LCCOMB_X7_Y8_N26
\inst2|inst|Add0~12\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X7_Y8_N28
\inst2|inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~14_combout\ = (\inst3|inst8|SALIDA\(6) & ((\inst3|inst700|SALIDA\(6) & (\inst2|inst|Add0~13\ & VCC)) # (!\inst3|inst700|SALIDA\(6) & (!\inst2|inst|Add0~13\)))) # (!\inst3|inst8|SALIDA\(6) & ((\inst3|inst700|SALIDA\(6) & 
-- (!\inst2|inst|Add0~13\)) # (!\inst3|inst700|SALIDA\(6) & ((\inst2|inst|Add0~13\) # (GND)))))
-- \inst2|inst|Add0~15\ = CARRY((\inst3|inst8|SALIDA\(6) & (!\inst3|inst700|SALIDA\(6) & !\inst2|inst|Add0~13\)) # (!\inst3|inst8|SALIDA\(6) & ((!\inst2|inst|Add0~13\) # (!\inst3|inst700|SALIDA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(6),
	datab => \inst3|inst700|SALIDA\(6),
	datad => VCC,
	cin => \inst2|inst|Add0~13\,
	combout => \inst2|inst|Add0~14_combout\,
	cout => \inst2|inst|Add0~15\);

-- Location: LCCOMB_X7_Y8_N8
\inst2|inst|opres[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[6]~14_combout\ = (\inst3|inst10|selfalgs\(1) & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~14_combout\)))) # (!\inst3|inst10|selfalgs\(1) & (!\inst3|inst10|selop\(2) & (\inst3|inst700|SALIDA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst700|SALIDA\(7),
	datad => \inst2|inst|Add0~14_combout\,
	combout => \inst2|inst|opres[6]~14_combout\);

-- Location: LCCOMB_X7_Y8_N10
\inst2|inst|opres[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[6]~15_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(6) & ((!\inst3|inst700|SALIDA\(6)) # (!\inst2|inst|opres[6]~14_combout\))) # (!\inst3|inst8|SALIDA\(6) & ((\inst3|inst700|SALIDA\(6)))))) # (!\inst3|inst10|selop\(2) & 
-- (\inst2|inst|opres[6]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[6]~14_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst8|SALIDA\(6),
	datad => \inst3|inst700|SALIDA\(6),
	combout => \inst2|inst|opres[6]~15_combout\);

-- Location: LCCOMB_X7_Y8_N2
\inst2|inst|opres[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(6) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(6)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[6]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[16]~3clkctrl_outclk\,
	datab => \inst2|inst|opres[6]~15_combout\,
	datad => \inst2|inst|opres\(6),
	combout => \inst2|inst|opres\(6));

-- Location: LCCOMB_X7_Y8_N4
\inst2|inst2|datow[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(6) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(6),
	combout => \inst2|inst2|datow\(6));

-- Location: FF_X7_Y8_N5
\inst2|inst6|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(6));

-- Location: LCCOMB_X9_Y8_N12
\inst3|inst700666|ACCB|SALIDA[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCB|SALIDA[6]~feeder_combout\ = \inst2|inst6|SALIDA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(6),
	combout => \inst3|inst700666|ACCB|SALIDA[6]~feeder_combout\);

-- Location: FF_X9_Y8_N13
\inst3|inst700666|ACCB|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(6));

-- Location: LCCOMB_X9_Y8_N6
\inst3|inst202|OP2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(6) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCB|SALIDA\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCB|SALIDA\(6),
	combout => \inst3|inst202|OP2\(6));

-- Location: FF_X7_Y8_N11
\inst3|inst8|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(6));

-- Location: LCCOMB_X7_Y8_N30
\inst2|inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~16_combout\ = ((\inst3|inst700|SALIDA\(7) $ (\inst3|inst8|SALIDA\(7) $ (!\inst2|inst|Add0~15\)))) # (GND)
-- \inst2|inst|Add0~17\ = CARRY((\inst3|inst700|SALIDA\(7) & ((\inst3|inst8|SALIDA\(7)) # (!\inst2|inst|Add0~15\))) # (!\inst3|inst700|SALIDA\(7) & (\inst3|inst8|SALIDA\(7) & !\inst2|inst|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(7),
	datab => \inst3|inst8|SALIDA\(7),
	datad => VCC,
	cin => \inst2|inst|Add0~15\,
	combout => \inst2|inst|Add0~16_combout\,
	cout => \inst2|inst|Add0~17\);

-- Location: LCCOMB_X5_Y8_N22
\inst2|inst|opres[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[7]~17_combout\ = (\inst3|inst10|selop\(2) & (\inst2|inst|opres[7]~16_combout\)) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[7]~16_combout\ & ((\inst2|inst|Add0~16_combout\))) # (!\inst2|inst|opres[7]~16_combout\ & 
-- (\inst3|inst700|SALIDA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|opres[7]~16_combout\,
	datac => \inst3|inst700|SALIDA\(8),
	datad => \inst2|inst|Add0~16_combout\,
	combout => \inst2|inst|opres[7]~17_combout\);

-- Location: LCCOMB_X5_Y8_N28
\inst2|inst|opres[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(7) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(7)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[7]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[7]~17_combout\,
	datac => \inst2|inst|opres\(7),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(7));

-- Location: LCCOMB_X5_Y8_N4
\inst2|inst2|datow[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(7) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(7),
	combout => \inst2|inst2|datow\(7));

-- Location: FF_X5_Y8_N5
\inst2|inst6|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(7));

-- Location: LCCOMB_X8_Y8_N2
\inst3|inst700666|ACCA|SALIDA[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[7]~feeder_combout\ = \inst2|inst6|SALIDA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(7),
	combout => \inst3|inst700666|ACCA|SALIDA[7]~feeder_combout\);

-- Location: FF_X8_Y8_N3
\inst3|inst700666|ACCA|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(7));

-- Location: LCCOMB_X8_Y8_N10
\inst3|inst202|OP1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(7) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(7),
	combout => \inst3|inst202|OP1\(7));

-- Location: FF_X7_Y8_N9
\inst3|inst700|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP1\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(7));

-- Location: LCCOMB_X7_Y7_N0
\inst2|inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~18_combout\ = (\inst3|inst700|SALIDA\(8) & ((\inst3|inst8|SALIDA\(8) & (\inst2|inst|Add0~17\ & VCC)) # (!\inst3|inst8|SALIDA\(8) & (!\inst2|inst|Add0~17\)))) # (!\inst3|inst700|SALIDA\(8) & ((\inst3|inst8|SALIDA\(8) & 
-- (!\inst2|inst|Add0~17\)) # (!\inst3|inst8|SALIDA\(8) & ((\inst2|inst|Add0~17\) # (GND)))))
-- \inst2|inst|Add0~19\ = CARRY((\inst3|inst700|SALIDA\(8) & (!\inst3|inst8|SALIDA\(8) & !\inst2|inst|Add0~17\)) # (!\inst3|inst700|SALIDA\(8) & ((!\inst2|inst|Add0~17\) # (!\inst3|inst8|SALIDA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(8),
	datab => \inst3|inst8|SALIDA\(8),
	datad => VCC,
	cin => \inst2|inst|Add0~17\,
	combout => \inst2|inst|Add0~18_combout\,
	cout => \inst2|inst|Add0~19\);

-- Location: LCCOMB_X7_Y7_N18
\inst2|inst|opres[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[8]~18_combout\ = (\inst3|inst10|selfalgs\(1) & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~18_combout\)))) # (!\inst3|inst10|selfalgs\(1) & (!\inst3|inst10|selop\(2) & (\inst3|inst700|SALIDA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst700|SALIDA\(9),
	datad => \inst2|inst|Add0~18_combout\,
	combout => \inst2|inst|opres[8]~18_combout\);

-- Location: LCCOMB_X4_Y7_N10
\inst2|inst|opres[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[8]~19_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(8) & ((!\inst2|inst|opres[8]~18_combout\) # (!\inst3|inst700|SALIDA\(8)))) # (!\inst3|inst8|SALIDA\(8) & (\inst3|inst700|SALIDA\(8))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst2|inst|opres[8]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(8),
	datab => \inst3|inst700|SALIDA\(8),
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|opres[8]~18_combout\,
	combout => \inst2|inst|opres[8]~19_combout\);

-- Location: LCCOMB_X4_Y7_N28
\inst2|inst|opres[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(8) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(8)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[8]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[8]~19_combout\,
	datac => \inst2|inst|opres[16]~3clkctrl_outclk\,
	datad => \inst2|inst|opres\(8),
	combout => \inst2|inst|opres\(8));

-- Location: LCCOMB_X4_Y7_N4
\inst2|inst2|datow[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(8) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(8),
	combout => \inst2|inst2|datow\(8));

-- Location: FF_X4_Y7_N5
\inst2|inst6|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(8));

-- Location: FF_X7_Y8_N27
\inst3|inst700666|ACCA|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(8));

-- Location: LCCOMB_X7_Y7_N20
\inst3|inst202|OP1[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(8) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(8),
	combout => \inst3|inst202|OP1\(8));

-- Location: FF_X7_Y7_N21
\inst3|inst700|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(8));

-- Location: LCCOMB_X7_Y7_N2
\inst2|inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~20_combout\ = ((\inst3|inst700|SALIDA\(9) $ (\inst3|inst8|SALIDA\(9) $ (!\inst2|inst|Add0~19\)))) # (GND)
-- \inst2|inst|Add0~21\ = CARRY((\inst3|inst700|SALIDA\(9) & ((\inst3|inst8|SALIDA\(9)) # (!\inst2|inst|Add0~19\))) # (!\inst3|inst700|SALIDA\(9) & (\inst3|inst8|SALIDA\(9) & !\inst2|inst|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(9),
	datab => \inst3|inst8|SALIDA\(9),
	datad => VCC,
	cin => \inst2|inst|Add0~19\,
	combout => \inst2|inst|Add0~20_combout\,
	cout => \inst2|inst|Add0~21\);

-- Location: LCCOMB_X8_Y7_N10
\inst2|inst|opres[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[9]~21_combout\ = (\inst2|inst|opres[9]~20_combout\ & (((\inst3|inst10|selop\(2)) # (\inst2|inst|Add0~20_combout\)))) # (!\inst2|inst|opres[9]~20_combout\ & (\inst3|inst700|SALIDA\(10) & (!\inst3|inst10|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[9]~20_combout\,
	datab => \inst3|inst700|SALIDA\(10),
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~20_combout\,
	combout => \inst2|inst|opres[9]~21_combout\);

-- Location: LCCOMB_X9_Y7_N18
\inst2|inst|opres[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(9) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(9)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[9]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[9]~21_combout\,
	datac => \inst2|inst|opres\(9),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(9));

-- Location: LCCOMB_X9_Y7_N0
\inst2|inst2|datow[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(9) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(9),
	combout => \inst2|inst2|datow\(9));

-- Location: FF_X9_Y7_N1
\inst2|inst6|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(9));

-- Location: LCCOMB_X8_Y8_N8
\inst3|inst700666|ACCA|SALIDA[9]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X8_Y8_N9
\inst3|inst700666|ACCA|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(9));

-- Location: LCCOMB_X7_Y7_N26
\inst3|inst202|OP1[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(9) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(9),
	combout => \inst3|inst202|OP1\(9));

-- Location: FF_X7_Y7_N27
\inst3|inst700|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(9));

-- Location: LCCOMB_X7_Y7_N4
\inst2|inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~22_combout\ = (\inst3|inst700|SALIDA\(10) & ((\inst3|inst8|SALIDA\(10) & (\inst2|inst|Add0~21\ & VCC)) # (!\inst3|inst8|SALIDA\(10) & (!\inst2|inst|Add0~21\)))) # (!\inst3|inst700|SALIDA\(10) & ((\inst3|inst8|SALIDA\(10) & 
-- (!\inst2|inst|Add0~21\)) # (!\inst3|inst8|SALIDA\(10) & ((\inst2|inst|Add0~21\) # (GND)))))
-- \inst2|inst|Add0~23\ = CARRY((\inst3|inst700|SALIDA\(10) & (!\inst3|inst8|SALIDA\(10) & !\inst2|inst|Add0~21\)) # (!\inst3|inst700|SALIDA\(10) & ((!\inst2|inst|Add0~21\) # (!\inst3|inst8|SALIDA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(10),
	datab => \inst3|inst8|SALIDA\(10),
	datad => VCC,
	cin => \inst2|inst|Add0~21\,
	combout => \inst2|inst|Add0~22_combout\,
	cout => \inst2|inst|Add0~23\);

-- Location: LCCOMB_X7_Y7_N28
\inst2|inst|opres[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[10]~22_combout\ = (\inst3|inst10|selfalgs\(1) & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~22_combout\)))) # (!\inst3|inst10|selfalgs\(1) & (!\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~22_combout\,
	datad => \inst3|inst700|SALIDA\(11),
	combout => \inst2|inst|opres[10]~22_combout\);

-- Location: LCCOMB_X9_Y7_N20
\inst2|inst|opres[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[10]~23_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(10) & ((!\inst3|inst700|SALIDA\(10)) # (!\inst2|inst|opres[10]~22_combout\))) # (!\inst3|inst8|SALIDA\(10) & ((\inst3|inst700|SALIDA\(10)))))) # 
-- (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[10]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(10),
	datab => \inst2|inst|opres[10]~22_combout\,
	datac => \inst3|inst10|selop\(2),
	datad => \inst3|inst700|SALIDA\(10),
	combout => \inst2|inst|opres[10]~23_combout\);

-- Location: LCCOMB_X9_Y7_N28
\inst2|inst|opres[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(10) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(10))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[10]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(10),
	datac => \inst2|inst|opres[10]~23_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(10));

-- Location: LCCOMB_X9_Y7_N2
\inst2|inst2|datow[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(10) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(10),
	combout => \inst2|inst2|datow\(10));

-- Location: FF_X9_Y7_N3
\inst2|inst6|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(10));

-- Location: LCCOMB_X8_Y8_N22
\inst3|inst700666|ACCA|SALIDA[10]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X8_Y8_N23
\inst3|inst700666|ACCA|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(10));

-- Location: LCCOMB_X8_Y7_N2
\inst3|inst202|OP1[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(10) = (\inst3|inst700666|ACCA|SALIDA\(10) & \inst3|inst206|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst700666|ACCA|SALIDA\(10),
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst202|OP1\(10));

-- Location: FF_X8_Y7_N3
\inst3|inst700|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(10));

-- Location: LCCOMB_X7_Y7_N6
\inst2|inst|Add0~24\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X8_Y7_N14
\inst2|inst|opres[11]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[11]~25_combout\ = (\inst2|inst|opres[11]~24_combout\ & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~24_combout\)))) # (!\inst2|inst|opres[11]~24_combout\ & (!\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[11]~24_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~24_combout\,
	datad => \inst3|inst700|SALIDA\(12),
	combout => \inst2|inst|opres[11]~25_combout\);

-- Location: LCCOMB_X9_Y7_N6
\inst2|inst|opres[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(11) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(11)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[11]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[11]~25_combout\,
	datac => \inst2|inst|opres\(11),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(11));

-- Location: LCCOMB_X9_Y7_N16
\inst2|inst2|datow[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(11) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(11),
	combout => \inst2|inst2|datow\(11));

-- Location: FF_X9_Y7_N17
\inst2|inst6|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(11));

-- Location: LCCOMB_X9_Y8_N30
\inst3|inst700666|ACCB|SALIDA[11]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X9_Y8_N31
\inst3|inst700666|ACCB|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(11));

-- Location: LCCOMB_X7_Y7_N30
\inst3|inst202|OP2[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(11) = (\inst3|inst700666|ACCB|SALIDA\(11) & \inst3|inst206|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst700666|ACCB|SALIDA\(11),
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst202|OP2\(11));

-- Location: FF_X7_Y7_N31
\inst3|inst8|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(11));

-- Location: LCCOMB_X7_Y7_N8
\inst2|inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|Add0~26_combout\ = (\inst3|inst700|SALIDA\(12) & ((\inst3|inst8|SALIDA\(12) & (\inst2|inst|Add0~25\ & VCC)) # (!\inst3|inst8|SALIDA\(12) & (!\inst2|inst|Add0~25\)))) # (!\inst3|inst700|SALIDA\(12) & ((\inst3|inst8|SALIDA\(12) & 
-- (!\inst2|inst|Add0~25\)) # (!\inst3|inst8|SALIDA\(12) & ((\inst2|inst|Add0~25\) # (GND)))))
-- \inst2|inst|Add0~27\ = CARRY((\inst3|inst700|SALIDA\(12) & (!\inst3|inst8|SALIDA\(12) & !\inst2|inst|Add0~25\)) # (!\inst3|inst700|SALIDA\(12) & ((!\inst2|inst|Add0~25\) # (!\inst3|inst8|SALIDA\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(12),
	datab => \inst3|inst8|SALIDA\(12),
	datad => VCC,
	cin => \inst2|inst|Add0~25\,
	combout => \inst2|inst|Add0~26_combout\,
	cout => \inst2|inst|Add0~27\);

-- Location: LCCOMB_X7_Y7_N22
\inst2|inst|opres[12]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[12]~26_combout\ = (\inst3|inst10|selfalgs\(1) & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~26_combout\)))) # (!\inst3|inst10|selfalgs\(1) & (!\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~26_combout\,
	datad => \inst3|inst700|SALIDA\(13),
	combout => \inst2|inst|opres[12]~26_combout\);

-- Location: LCCOMB_X8_Y7_N4
\inst2|inst|opres[12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[12]~27_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(12) & ((!\inst3|inst700|SALIDA\(12)) # (!\inst2|inst|opres[12]~26_combout\))) # (!\inst3|inst8|SALIDA\(12) & ((\inst3|inst700|SALIDA\(12)))))) # 
-- (!\inst3|inst10|selop\(2) & (((\inst2|inst|opres[12]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(12),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|opres[12]~26_combout\,
	datad => \inst3|inst700|SALIDA\(12),
	combout => \inst2|inst|opres[12]~27_combout\);

-- Location: LCCOMB_X8_Y7_N18
\inst2|inst|opres[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(12) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(12))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[12]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(12),
	datac => \inst2|inst|opres[12]~27_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(12));

-- Location: LCCOMB_X8_Y7_N26
\inst2|inst2|datow[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(12) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(12),
	combout => \inst2|inst2|datow\(12));

-- Location: FF_X8_Y7_N27
\inst2|inst6|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(12));

-- Location: LCCOMB_X8_Y8_N18
\inst3|inst700666|ACCA|SALIDA[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[12]~feeder_combout\ = \inst2|inst6|SALIDA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(12),
	combout => \inst3|inst700666|ACCA|SALIDA[12]~feeder_combout\);

-- Location: FF_X8_Y8_N19
\inst3|inst700666|ACCA|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[12]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(12));

-- Location: LCCOMB_X8_Y7_N6
\inst3|inst202|OP1[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(12) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(12),
	combout => \inst3|inst202|OP1\(12));

-- Location: FF_X8_Y7_N7
\inst3|inst700|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(12));

-- Location: LCCOMB_X7_Y7_N10
\inst2|inst|Add0~28\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X6_Y7_N30
\inst2|inst|opres[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[13]~29_combout\ = (\inst3|inst10|selop\(2) & (\inst2|inst|opres[13]~28_combout\)) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[13]~28_combout\ & (\inst2|inst|Add0~28_combout\)) # (!\inst2|inst|opres[13]~28_combout\ & 
-- ((\inst3|inst700|SALIDA\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|opres[13]~28_combout\,
	datac => \inst2|inst|Add0~28_combout\,
	datad => \inst3|inst700|SALIDA\(14),
	combout => \inst2|inst|opres[13]~29_combout\);

-- Location: LCCOMB_X5_Y7_N14
\inst2|inst|opres[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(13) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(13))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[13]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(13),
	datac => \inst2|inst|opres[13]~29_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(13));

-- Location: LCCOMB_X5_Y7_N12
\inst2|inst2|datow[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(13) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selc~q\,
	datac => \inst2|inst|opres\(13),
	combout => \inst2|inst2|datow\(13));

-- Location: FF_X5_Y7_N13
\inst2|inst6|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(13));

-- Location: LCCOMB_X6_Y8_N30
\inst3|inst700666|ACCA|SALIDA[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[13]~feeder_combout\ = \inst2|inst6|SALIDA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(13),
	combout => \inst3|inst700666|ACCA|SALIDA[13]~feeder_combout\);

-- Location: FF_X6_Y8_N31
\inst3|inst700666|ACCA|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[13]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(13));

-- Location: LCCOMB_X6_Y7_N14
\inst3|inst202|OP1[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(13) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst3|inst700666|ACCA|SALIDA\(13),
	combout => \inst3|inst202|OP1\(13));

-- Location: FF_X6_Y7_N15
\inst3|inst700|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP1\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(13));

-- Location: LCCOMB_X7_Y7_N12
\inst2|inst|Add0~30\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X6_Y7_N20
\inst2|inst|opres[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[14]~30_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(14) & ((!\inst3|inst10|selfalgs\(1)) # (!\inst3|inst700|SALIDA\(14)))) # (!\inst3|inst8|SALIDA\(14) & (\inst3|inst700|SALIDA\(14))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(14),
	datab => \inst3|inst700|SALIDA\(14),
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[14]~30_combout\);

-- Location: LCCOMB_X6_Y7_N6
\inst2|inst|opres[14]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[14]~31_combout\ = (\inst3|inst10|selop\(2) & (((\inst2|inst|opres[14]~30_combout\)))) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[14]~30_combout\ & ((\inst2|inst|Add0~30_combout\))) # (!\inst2|inst|opres[14]~30_combout\ & 
-- (\inst3|inst700|SALIDA\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(15),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~30_combout\,
	datad => \inst2|inst|opres[14]~30_combout\,
	combout => \inst2|inst|opres[14]~31_combout\);

-- Location: LCCOMB_X5_Y7_N4
\inst2|inst|opres[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(14) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(14))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[14]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(14),
	datac => \inst2|inst|opres[14]~31_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(14));

-- Location: LCCOMB_X5_Y7_N6
\inst2|inst2|datow[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(14) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selc~q\,
	datac => \inst2|inst|opres\(14),
	combout => \inst2|inst2|datow\(14));

-- Location: FF_X5_Y7_N7
\inst2|inst6|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(14));

-- Location: FF_X9_Y8_N7
\inst3|inst700666|ACCB|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(14));

-- Location: LCCOMB_X8_Y7_N20
\inst3|inst202|OP2[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(14) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCB|SALIDA\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCB|SALIDA\(14),
	combout => \inst3|inst202|OP2\(14));

-- Location: FF_X8_Y7_N21
\inst3|inst8|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(14));

-- Location: LCCOMB_X7_Y7_N14
\inst2|inst|Add0~32\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X7_Y7_N16
\inst2|inst|Add0~34\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X4_Y7_N2
\inst2|inst|opres[16]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[16]~34_combout\ = (\inst3|inst10|selfalgs\(1) & (!\inst3|inst10|selop\(2) & \inst2|inst|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~34_combout\,
	combout => \inst2|inst|opres[16]~34_combout\);

-- Location: LCCOMB_X4_Y7_N20
\inst2|inst|opres[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(16) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(16)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[16]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[16]~34_combout\,
	datac => \inst2|inst|opres[16]~3clkctrl_outclk\,
	datad => \inst2|inst|opres\(16),
	combout => \inst2|inst|opres\(16));

-- Location: LCCOMB_X4_Y7_N0
\inst2|inst3|ci\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|ci~combout\ = (\RESET~input_o\ & ((\inst3|inst10|selfalgs\(1) & ((\inst2|inst|opres\(16)))) # (!\inst3|inst10|selfalgs\(1) & (\inst2|inst3|ci~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst2|inst3|ci~combout\,
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst2|inst|opres\(16),
	combout => \inst2|inst3|ci~combout\);

-- Location: LCCOMB_X7_Y8_N14
\inst2|inst|Add0~1\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X7_Y8_N16
\inst2|inst|Add0~2\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X7_Y8_N18
\inst2|inst|Add0~4\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X4_Y8_N26
\inst2|inst|opres[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[1]~4_combout\ = (\inst3|inst10|selop\(2) & (((\inst3|inst10|selfalgs\(1))))) # (!\inst3|inst10|selop\(2) & ((\inst3|inst10|selfalgs\(1) & ((\inst2|inst|Add0~4_combout\))) # (!\inst3|inst10|selfalgs\(1) & (\inst3|inst700|SALIDA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(2),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst2|inst|Add0~4_combout\,
	combout => \inst2|inst|opres[1]~4_combout\);

-- Location: LCCOMB_X4_Y8_N20
\inst2|inst|opres[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[1]~5_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(1) & ((!\inst3|inst8|SALIDA\(1)) # (!\inst2|inst|opres[1]~4_combout\))) # (!\inst3|inst700|SALIDA\(1) & ((\inst3|inst8|SALIDA\(1)))))) # (!\inst3|inst10|selop\(2) & 
-- (\inst2|inst|opres[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[1]~4_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst700|SALIDA\(1),
	datad => \inst3|inst8|SALIDA\(1),
	combout => \inst2|inst|opres[1]~5_combout\);

-- Location: LCCOMB_X4_Y8_N6
\inst2|inst|opres[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(1) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(1)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[1]~5_combout\,
	datac => \inst2|inst|opres[16]~3clkctrl_outclk\,
	datad => \inst2|inst|opres\(1),
	combout => \inst2|inst|opres\(1));

-- Location: LCCOMB_X4_Y8_N2
\inst2|inst2|datow[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(1) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(1),
	combout => \inst2|inst2|datow\(1));

-- Location: FF_X4_Y8_N3
\inst2|inst6|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(1));

-- Location: LCCOMB_X9_Y8_N26
\inst3|inst700666|ACCB|SALIDA[1]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X9_Y8_N27
\inst3|inst700666|ACCB|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(1));

-- Location: LCCOMB_X4_Y8_N18
\inst3|inst202|OP2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2[1]~0_combout\ = (\inst3|inst206|sr~2_combout\ & (\inst|inst5|valor_interno\(22))) # (!\inst3|inst206|sr~2_combout\ & (((\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCB|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(22),
	datab => \inst3|inst206|Equal0~1_combout\,
	datac => \inst3|inst206|sr~2_combout\,
	datad => \inst3|inst700666|ACCB|SALIDA\(1),
	combout => \inst3|inst202|OP2[1]~0_combout\);

-- Location: FF_X4_Y8_N19
\inst3|inst8|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2[1]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(1));

-- Location: LCCOMB_X7_Y8_N20
\inst2|inst|Add0~6\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X6_Y8_N16
\inst2|inst|opres[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[2]~6_combout\ = (\inst3|inst10|selfalgs\(1) & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~6_combout\)))) # (!\inst3|inst10|selfalgs\(1) & (!\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~6_combout\,
	datad => \inst3|inst700|SALIDA\(3),
	combout => \inst2|inst|opres[2]~6_combout\);

-- Location: LCCOMB_X6_Y8_N8
\inst2|inst|opres[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[2]~7_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(2) & ((!\inst2|inst|opres[2]~6_combout\) # (!\inst3|inst700|SALIDA\(2)))) # (!\inst3|inst8|SALIDA\(2) & (\inst3|inst700|SALIDA\(2))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst2|inst|opres[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst8|SALIDA\(2),
	datac => \inst3|inst700|SALIDA\(2),
	datad => \inst2|inst|opres[2]~6_combout\,
	combout => \inst2|inst|opres[2]~7_combout\);

-- Location: LCCOMB_X6_Y8_N10
\inst2|inst|opres[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(2) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(2)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[2]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[2]~7_combout\,
	datab => \inst2|inst|opres\(2),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(2));

-- Location: LCCOMB_X6_Y8_N28
\inst2|inst2|datow[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(2) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(2),
	combout => \inst2|inst2|datow\(2));

-- Location: FF_X6_Y8_N29
\inst2|inst6|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(2));

-- Location: LCCOMB_X9_Y8_N24
\inst3|inst700666|ACCB|SALIDA[2]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X9_Y8_N25
\inst3|inst700666|ACCB|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCB|SALIDA[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(2));

-- Location: LCCOMB_X9_Y8_N2
\inst3|inst202|OP2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(2) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCB|SALIDA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCB|SALIDA\(2),
	combout => \inst3|inst202|OP2\(2));

-- Location: FF_X7_Y8_N23
\inst3|inst8|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst3|inst202|OP2\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(2));

-- Location: LCCOMB_X7_Y8_N22
\inst2|inst|Add0~8\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X6_Y8_N26
\inst2|inst|opres[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[3]~8_combout\ = (\inst3|inst10|selfalgs\(1) & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~8_combout\)))) # (!\inst3|inst10|selfalgs\(1) & (!\inst3|inst10|selop\(2) & (\inst3|inst700|SALIDA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datab => \inst3|inst10|selop\(2),
	datac => \inst3|inst700|SALIDA\(4),
	datad => \inst2|inst|Add0~8_combout\,
	combout => \inst2|inst|opres[3]~8_combout\);

-- Location: LCCOMB_X6_Y8_N6
\inst2|inst|opres[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[3]~9_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(3) & ((!\inst2|inst|opres[3]~8_combout\) # (!\inst3|inst700|SALIDA\(3)))) # (!\inst3|inst8|SALIDA\(3) & (\inst3|inst700|SALIDA\(3))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst2|inst|opres[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8|SALIDA\(3),
	datab => \inst3|inst700|SALIDA\(3),
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|opres[3]~8_combout\,
	combout => \inst2|inst|opres[3]~9_combout\);

-- Location: LCCOMB_X6_Y8_N24
\inst2|inst|opres[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(3) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(3))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(3),
	datab => \inst2|inst|opres[3]~9_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(3));

-- Location: LCCOMB_X6_Y8_N4
\inst2|inst2|datow[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(3) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(3),
	combout => \inst2|inst2|datow\(3));

-- Location: FF_X6_Y8_N5
\inst2|inst6|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(3));

-- Location: FF_X9_Y8_N3
\inst3|inst700666|ACCB|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCB|SALIDA\(3));

-- Location: LCCOMB_X9_Y8_N18
\inst3|inst202|OP2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP2\(3) = (\inst3|inst700666|ACCB|SALIDA\(3) & \inst3|inst206|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst700666|ACCB|SALIDA\(3),
	datad => \inst3|inst206|Equal0~1_combout\,
	combout => \inst3|inst202|OP2\(3));

-- Location: FF_X9_Y8_N19
\inst3|inst8|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst202|OP2\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8|SALIDA\(3));

-- Location: LCCOMB_X7_Y8_N24
\inst2|inst|Add0~10\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X6_Y8_N2
\inst2|inst|opres[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[5]~12_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(5) & ((!\inst3|inst10|selfalgs\(1)) # (!\inst3|inst8|SALIDA\(5)))) # (!\inst3|inst700|SALIDA\(5) & (\inst3|inst8|SALIDA\(5))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(5),
	datab => \inst3|inst8|SALIDA\(5),
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[5]~12_combout\);

-- Location: LCCOMB_X5_Y8_N14
\inst2|inst|opres[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[5]~13_combout\ = (\inst3|inst10|selop\(2) & (((\inst2|inst|opres[5]~12_combout\)))) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[5]~12_combout\ & (\inst2|inst|Add0~12_combout\)) # (!\inst2|inst|opres[5]~12_combout\ & 
-- ((\inst3|inst700|SALIDA\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|Add0~12_combout\,
	datac => \inst3|inst700|SALIDA\(6),
	datad => \inst2|inst|opres[5]~12_combout\,
	combout => \inst2|inst|opres[5]~13_combout\);

-- Location: LCCOMB_X5_Y8_N24
\inst2|inst|opres[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(5) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(5)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[5]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[5]~13_combout\,
	datac => \inst2|inst|opres\(5),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(5));

-- Location: LCCOMB_X5_Y8_N20
\inst2|inst2|datow[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(5) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(5),
	combout => \inst2|inst2|datow\(5));

-- Location: FF_X5_Y8_N21
\inst2|inst6|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(5));

-- Location: LCCOMB_X5_Y8_N16
\inst3|inst700666|ACCA|SALIDA[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|ACCA|SALIDA[5]~feeder_combout\ = \inst2|inst6|SALIDA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(5),
	combout => \inst3|inst700666|ACCA|SALIDA[5]~feeder_combout\);

-- Location: FF_X5_Y8_N17
\inst3|inst700666|ACCA|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|ACCA|SALIDA[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|ACCA|SALIDA\(5));

-- Location: LCCOMB_X5_Y8_N10
\inst3|inst202|OP1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst202|OP1\(5) = (\inst3|inst206|Equal0~1_combout\ & \inst3|inst700666|ACCA|SALIDA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst206|Equal0~1_combout\,
	datad => \inst3|inst700666|ACCA|SALIDA\(5),
	combout => \inst3|inst202|OP1\(5));

-- Location: LCCOMB_X6_Y8_N18
\inst3|inst700|SALIDA[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700|SALIDA[5]~feeder_combout\ = \inst3|inst202|OP1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst202|OP1\(5),
	combout => \inst3|inst700|SALIDA[5]~feeder_combout\);

-- Location: FF_X6_Y8_N19
\inst3|inst700|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700|SALIDA[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700|SALIDA\(5));

-- Location: LCCOMB_X7_Y8_N0
\inst2|inst|opres[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[4]~10_combout\ = (\inst3|inst10|selfalgs\(1) & (((\inst3|inst10|selop\(2)) # (\inst2|inst|Add0~10_combout\)))) # (!\inst3|inst10|selfalgs\(1) & (\inst3|inst700|SALIDA\(5) & (!\inst3|inst10|selop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datab => \inst3|inst700|SALIDA\(5),
	datac => \inst3|inst10|selop\(2),
	datad => \inst2|inst|Add0~10_combout\,
	combout => \inst2|inst|opres[4]~10_combout\);

-- Location: LCCOMB_X6_Y8_N0
\inst2|inst|opres[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[4]~11_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(4) & ((!\inst2|inst|opres[4]~10_combout\) # (!\inst3|inst700|SALIDA\(4)))) # (!\inst3|inst8|SALIDA\(4) & (\inst3|inst700|SALIDA\(4))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst2|inst|opres[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst3|inst8|SALIDA\(4),
	datac => \inst3|inst700|SALIDA\(4),
	datad => \inst2|inst|opres[4]~10_combout\,
	combout => \inst2|inst|opres[4]~11_combout\);

-- Location: LCCOMB_X6_Y8_N12
\inst2|inst|opres[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(4) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(4)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[4]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[4]~11_combout\,
	datac => \inst2|inst|opres\(4),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(4));

-- Location: LCCOMB_X6_Y8_N22
\inst2|inst2|datow[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(4) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(4),
	combout => \inst2|inst2|datow\(4));

-- Location: FF_X6_Y8_N23
\inst2|inst6|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(4));

-- Location: LCCOMB_X11_Y8_N12
\inst3|inst206|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal5~0_combout\ = (!\inst|inst5|valor_interno\(23) & (\inst|inst5|valor_interno\(22) & (\inst|inst5|valor_interno\(20) & \inst|inst5|valor_interno\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(23),
	datab => \inst|inst5|valor_interno\(22),
	datac => \inst|inst5|valor_interno\(20),
	datad => \inst|inst5|valor_interno\(17),
	combout => \inst3|inst206|Equal5~0_combout\);

-- Location: LCCOMB_X4_Y8_N22
\inst3|inst206|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal5~1_combout\ = (\inst|inst5|valor_interno\(21) & (\inst|inst5|valor_interno\(18) & (!\inst|inst5|valor_interno\(16) & \inst3|inst206|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(21),
	datab => \inst|inst5|valor_interno\(18),
	datac => \inst|inst5|valor_interno\(16),
	datad => \inst3|inst206|Equal5~0_combout\,
	combout => \inst3|inst206|Equal5~1_combout\);

-- Location: FF_X4_Y8_N23
\inst3|inst10|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst206|Equal5~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|vf~q\);

-- Location: LCCOMB_X10_Y8_N2
\inst2|inst100|valor_interno~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X10_Y8_N3
\inst2|inst100|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst100|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst100|valor_interno~q\);

-- Location: FF_X10_Y8_N15
\inst|inst3|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst3|SALIDA[4]~14_combout\,
	asdata => \inst2|inst6|SALIDA\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(4));

-- Location: LCCOMB_X10_Y8_N16
\inst|inst3|SALIDA[5]~16\ : cycloneive_lcell_comb
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

-- Location: FF_X10_Y8_N17
\inst|inst3|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst3|SALIDA[5]~16_combout\,
	asdata => \inst2|inst6|SALIDA\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(5));

-- Location: LCCOMB_X11_Y8_N18
\inst|inst1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~0_combout\ = (!\inst|inst3|SALIDA\(3) & ((\inst|inst3|SALIDA\(2)) # ((!\inst|inst3|SALIDA\(0) & \inst|inst3|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datab => \inst|inst3|SALIDA\(0),
	datac => \inst|inst3|SALIDA\(2),
	datad => \inst|inst3|SALIDA\(1),
	combout => \inst|inst1|Mux15~0_combout\);

-- Location: LCCOMB_X4_Y8_N30
\inst|inst1|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux15~1_combout\ = (!\inst|inst3|SALIDA\(5) & (\inst|inst1|Mux15~0_combout\ & !\inst|inst3|SALIDA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|SALIDA\(5),
	datac => \inst|inst1|Mux15~0_combout\,
	datad => \inst|inst3|SALIDA\(4),
	combout => \inst|inst1|Mux15~1_combout\);

-- Location: FF_X4_Y8_N31
\inst|inst5|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux15~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(16));

-- Location: LCCOMB_X11_Y8_N4
\inst3|inst206|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~0_combout\ = (\inst|inst5|valor_interno\(23)) # ((\inst|inst5|valor_interno\(22)) # ((!\inst|inst5|valor_interno\(17)) # (!\inst|inst5|valor_interno\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(23),
	datab => \inst|inst5|valor_interno\(22),
	datac => \inst|inst5|valor_interno\(20),
	datad => \inst|inst5|valor_interno\(17),
	combout => \inst3|inst206|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y8_N8
\inst3|inst206|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst206|Equal0~1_combout\ = (\inst|inst5|valor_interno\(16) & (!\inst|inst5|valor_interno\(18) & (!\inst3|inst206|Equal0~0_combout\ & !\inst|inst5|valor_interno\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(16),
	datab => \inst|inst5|valor_interno\(18),
	datac => \inst3|inst206|Equal0~0_combout\,
	datad => \inst|inst5|valor_interno\(21),
	combout => \inst3|inst206|Equal0~1_combout\);

-- Location: LCCOMB_X7_Y8_N6
\inst3|inst206|selop[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst206|selop[2]~0_combout\ = (\inst3|inst206|Equal0~1_combout\) # ((\inst3|inst206|Equal5~1_combout\) # (\inst3|inst206|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst206|Equal0~1_combout\,
	datab => \inst3|inst206|Equal5~1_combout\,
	datad => \inst3|inst206|Equal2~1_combout\,
	combout => \inst3|inst206|selop[2]~0_combout\);

-- Location: FF_X7_Y8_N7
\inst3|inst10|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst206|selop[2]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selc~q\);

-- Location: LCCOMB_X6_Y7_N12
\inst2|inst|opres[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[0]~32_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst8|SALIDA\(0) & ((!\inst3|inst700|SALIDA\(0)) # (!\inst3|inst10|selfalgs\(1)))) # (!\inst3|inst8|SALIDA\(0) & ((\inst3|inst700|SALIDA\(0)))))) # (!\inst3|inst10|selop\(2) & 
-- (\inst3|inst10|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datab => \inst3|inst8|SALIDA\(0),
	datac => \inst3|inst10|selop\(2),
	datad => \inst3|inst700|SALIDA\(0),
	combout => \inst2|inst|opres[0]~32_combout\);

-- Location: LCCOMB_X6_Y7_N10
\inst2|inst|opres[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[0]~33_combout\ = (\inst2|inst|opres[0]~32_combout\ & ((\inst3|inst10|selop\(2)) # ((\inst2|inst|Add0~2_combout\)))) # (!\inst2|inst|opres[0]~32_combout\ & (!\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres[0]~32_combout\,
	datab => \inst3|inst10|selop\(2),
	datac => \inst2|inst|Add0~2_combout\,
	datad => \inst3|inst700|SALIDA\(1),
	combout => \inst2|inst|opres[0]~33_combout\);

-- Location: LCCOMB_X5_Y7_N18
\inst2|inst|opres[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(0) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres\(0)))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres[0]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres[0]~33_combout\,
	datac => \inst2|inst|opres\(0),
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(0));

-- Location: LCCOMB_X5_Y7_N26
\inst2|inst2|datow[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|datow\(0) = (\inst3|inst10|selc~q\ & \inst2|inst|opres\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selc~q\,
	datad => \inst2|inst|opres\(0),
	combout => \inst2|inst2|datow\(0));

-- Location: FF_X5_Y7_N27
\inst2|inst6|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst2|datow\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6|SALIDA\(0));

-- Location: FF_X10_Y8_N7
\inst|inst3|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst3|SALIDA[0]~6_combout\,
	asdata => \inst2|inst6|SALIDA\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(0));

-- Location: LCCOMB_X10_Y8_N8
\inst|inst3|SALIDA[1]~8\ : cycloneive_lcell_comb
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

-- Location: FF_X10_Y8_N9
\inst|inst3|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst3|SALIDA[1]~8_combout\,
	asdata => \inst2|inst6|SALIDA\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(1));

-- Location: LCCOMB_X10_Y8_N10
\inst|inst3|SALIDA[2]~10\ : cycloneive_lcell_comb
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

-- Location: FF_X10_Y8_N11
\inst|inst3|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst3|SALIDA[2]~10_combout\,
	asdata => \inst2|inst6|SALIDA\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(2));

-- Location: FF_X10_Y8_N13
\inst|inst3|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst3|SALIDA[3]~12_combout\,
	asdata => \inst2|inst6|SALIDA\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst2|inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|SALIDA\(3));

-- Location: LCCOMB_X11_Y8_N6
\inst|inst1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|Mux10~0_combout\ = (!\inst|inst3|SALIDA\(3) & (!\inst|inst3|SALIDA\(4) & (!\inst|inst3|SALIDA\(5) & !\inst|inst3|SALIDA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|SALIDA\(3),
	datab => \inst|inst3|SALIDA\(4),
	datac => \inst|inst3|SALIDA\(5),
	datad => \inst|inst3|SALIDA\(2),
	combout => \inst|inst1|Mux10~0_combout\);

-- Location: FF_X11_Y8_N7
\inst|inst5|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst|inst1|Mux10~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|valor_interno\(17));

-- Location: LCCOMB_X4_Y8_N4
\inst3|inst206|sr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst206|sr~2_combout\ = (\inst3|inst206|Equal5~1_combout\) # ((\inst|inst5|valor_interno\(17) & (!\inst|inst5|valor_interno\(20) & \inst3|inst206|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|valor_interno\(17),
	datab => \inst|inst5|valor_interno\(20),
	datac => \inst3|inst206|Equal5~1_combout\,
	datad => \inst3|inst206|Equal2~0_combout\,
	combout => \inst3|inst206|sr~2_combout\);

-- Location: LCCOMB_X1_Y8_N28
\inst3|inst10|selop[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst10|selop[2]~feeder_combout\ = \inst3|inst206|sr~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst206|sr~2_combout\,
	combout => \inst3|inst10|selop[2]~feeder_combout\);

-- Location: FF_X1_Y8_N29
\inst3|inst10|selop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst3|inst10|selop[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selop\(2));

-- Location: LCCOMB_X6_Y7_N26
\inst2|inst|opres[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~1_combout\ = (\inst3|inst10|selop\(2) & ((\inst3|inst700|SALIDA\(15) & ((!\inst3|inst10|selfalgs\(1)) # (!\inst3|inst8|SALIDA\(15)))) # (!\inst3|inst700|SALIDA\(15) & (\inst3|inst8|SALIDA\(15))))) # (!\inst3|inst10|selop\(2) & 
-- (((\inst3|inst10|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst700|SALIDA\(15),
	datab => \inst3|inst8|SALIDA\(15),
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst3|inst10|selop\(2),
	combout => \inst2|inst|opres[15]~1_combout\);

-- Location: LCCOMB_X4_Y7_N12
\inst2|inst|opres[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~0_combout\ = (\inst2|inst3|ci~combout\ & !\inst3|inst10|selc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|ci~combout\,
	datad => \inst3|inst10|selc~q\,
	combout => \inst2|inst|opres[15]~0_combout\);

-- Location: LCCOMB_X5_Y7_N10
\inst2|inst|opres[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres[15]~2_combout\ = (\inst3|inst10|selop\(2) & (\inst2|inst|opres[15]~1_combout\)) # (!\inst3|inst10|selop\(2) & ((\inst2|inst|opres[15]~1_combout\ & ((\inst2|inst|Add0~32_combout\))) # (!\inst2|inst|opres[15]~1_combout\ & 
-- (\inst2|inst|opres[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selop\(2),
	datab => \inst2|inst|opres[15]~1_combout\,
	datac => \inst2|inst|opres[15]~0_combout\,
	datad => \inst2|inst|Add0~32_combout\,
	combout => \inst2|inst|opres[15]~2_combout\);

-- Location: LCCOMB_X5_Y7_N28
\inst2|inst|opres[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|opres\(15) = (GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & (\inst2|inst|opres\(15))) # (!GLOBAL(\inst2|inst|opres[16]~3clkctrl_outclk\) & ((\inst2|inst|opres[15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|opres\(15),
	datac => \inst2|inst|opres[15]~2_combout\,
	datad => \inst2|inst|opres[16]~3clkctrl_outclk\,
	combout => \inst2|inst|opres\(15));

-- Location: LCCOMB_X4_Y7_N18
\inst3|inst10|selfalgs[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst10|selfalgs[0]~feeder_combout\ = \inst3|inst206|Equal2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst206|Equal2~1_combout\,
	combout => \inst3|inst10|selfalgs[0]~feeder_combout\);

-- Location: FF_X4_Y7_N19
\inst3|inst10|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst3|inst10|selfalgs[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10|selfalgs\(0));

-- Location: LCCOMB_X4_Y7_N26
\inst2|inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|Equal0~0_combout\ = (\inst3|inst10|selfalgs\(1)) # (\inst3|inst10|selfalgs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10|selfalgs\(1),
	datad => \inst3|inst10|selfalgs\(0),
	combout => \inst2|inst3|Equal0~0_combout\);

-- Location: CLKCTRL_G3
\inst2|inst3|Equal0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst3|Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst3|Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X5_Y7_N8
\inst2|inst3|ni\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|ni~combout\ = (\RESET~input_o\ & ((GLOBAL(\inst2|inst3|Equal0~0clkctrl_outclk\) & (\inst2|inst|opres\(15))) # (!GLOBAL(\inst2|inst3|Equal0~0clkctrl_outclk\) & ((\inst2|inst3|ni~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(15),
	datab => \RESET~input_o\,
	datac => \inst2|inst3|ni~combout\,
	datad => \inst2|inst3|Equal0~0clkctrl_outclk\,
	combout => \inst2|inst3|ni~combout\);

-- Location: FF_X5_Y7_N9
\inst2|inst101|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst3|ni~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst101|valor_interno~q\);

-- Location: LCCOMB_X9_Y7_N30
\inst2|inst|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~2_combout\ = (\inst2|inst|opres\(11)) # ((\inst2|inst|opres\(10)) # ((\inst2|inst|opres\(9)) # (\inst2|inst|opres\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(11),
	datab => \inst2|inst|opres\(10),
	datac => \inst2|inst|opres\(9),
	datad => \inst2|inst|opres\(12),
	combout => \inst2|inst|WideOr0~2_combout\);

-- Location: LCCOMB_X5_Y7_N22
\inst2|inst|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~3_combout\ = (\inst2|inst|opres\(14)) # ((\inst2|inst|opres\(0)) # ((\inst2|inst|opres\(13)) # (\inst2|inst|opres\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(14),
	datab => \inst2|inst|opres\(0),
	datac => \inst2|inst|opres\(13),
	datad => \inst2|inst|opres\(15),
	combout => \inst2|inst|WideOr0~3_combout\);

-- Location: LCCOMB_X5_Y8_N18
\inst2|inst|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~0_combout\ = (\inst2|inst|opres\(2)) # ((\inst2|inst|opres\(1)) # ((\inst2|inst|opres\(4)) # (\inst2|inst|opres\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(2),
	datab => \inst2|inst|opres\(1),
	datac => \inst2|inst|opres\(4),
	datad => \inst2|inst|opres\(3),
	combout => \inst2|inst|WideOr0~0_combout\);

-- Location: LCCOMB_X5_Y7_N24
\inst2|inst|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~1_combout\ = (\inst2|inst|opres\(8)) # ((\inst2|inst|opres\(7)) # ((\inst2|inst|opres\(5)) # (\inst2|inst|opres\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|opres\(8),
	datab => \inst2|inst|opres\(7),
	datac => \inst2|inst|opres\(5),
	datad => \inst2|inst|opres\(6),
	combout => \inst2|inst|WideOr0~1_combout\);

-- Location: LCCOMB_X5_Y7_N20
\inst2|inst|WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|WideOr0~4_combout\ = (\inst2|inst|WideOr0~2_combout\) # ((\inst2|inst|WideOr0~3_combout\) # ((\inst2|inst|WideOr0~0_combout\) # (\inst2|inst|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|WideOr0~2_combout\,
	datab => \inst2|inst|WideOr0~3_combout\,
	datac => \inst2|inst|WideOr0~0_combout\,
	datad => \inst2|inst|WideOr0~1_combout\,
	combout => \inst2|inst|WideOr0~4_combout\);

-- Location: LCCOMB_X5_Y7_N30
\inst2|inst3|zi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|zi~combout\ = (\RESET~input_o\ & ((GLOBAL(\inst2|inst3|Equal0~0clkctrl_outclk\) & (!\inst2|inst|WideOr0~4_combout\)) # (!GLOBAL(\inst2|inst3|Equal0~0clkctrl_outclk\) & ((\inst2|inst3|zi~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst2|inst|WideOr0~4_combout\,
	datac => \inst2|inst3|zi~combout\,
	datad => \inst2|inst3|Equal0~0clkctrl_outclk\,
	combout => \inst2|inst3|zi~combout\);

-- Location: FF_X5_Y7_N31
\inst2|inst102|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst3|zi~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst102|valor_interno~q\);

-- Location: LCCOMB_X4_Y7_N6
\inst2|inst3|vi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~0_combout\ = (\inst2|inst|opres\(16) & ((\inst3|inst10|selfalgs\(1)) # (!\inst3|inst10|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|selfalgs\(1),
	datab => \inst2|inst|opres\(16),
	datad => \inst3|inst10|selfalgs\(0),
	combout => \inst2|inst3|vi~0_combout\);

-- Location: LCCOMB_X4_Y7_N22
\inst2|inst3|vi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|vi~combout\ = (\RESET~input_o\ & ((GLOBAL(\inst2|inst3|Equal0~0clkctrl_outclk\) & (\inst2|inst3|vi~0_combout\)) # (!GLOBAL(\inst2|inst3|Equal0~0clkctrl_outclk\) & ((\inst2|inst3|vi~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst2|inst3|vi~0_combout\,
	datac => \inst2|inst3|vi~combout\,
	datad => \inst2|inst3|Equal0~0clkctrl_outclk\,
	combout => \inst2|inst3|vi~combout\);

-- Location: FF_X4_Y7_N13
\inst2|inst103|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst3|vi~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst103|valor_interno~q\);

-- Location: LCCOMB_X4_Y7_N16
\inst2|inst104|valor_interno~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst104|valor_interno~feeder_combout\ = \inst2|inst3|ci~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst3|ci~combout\,
	combout => \inst2|inst104|valor_interno~feeder_combout\);

-- Location: FF_X4_Y7_N17
\inst2|inst104|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst104|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst104|valor_interno~q\);

-- Location: LCCOMB_X4_Y7_N8
\inst2|inst3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|Equal0~1_combout\ = (\inst3|inst10|selfalgs\(1) & !\inst3|inst10|selfalgs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|selfalgs\(1),
	datad => \inst3|inst10|selfalgs\(0),
	combout => \inst2|inst3|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y7_N30
\inst2|inst3|hi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|hi~combout\ = (\RESET~input_o\ & ((\inst2|inst3|Equal0~1_combout\ & ((\inst2|inst|opres\(8)))) # (!\inst2|inst3|Equal0~1_combout\ & (\inst2|inst3|hi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|Equal0~1_combout\,
	datab => \RESET~input_o\,
	datac => \inst2|inst3|hi~combout\,
	datad => \inst2|inst|opres\(8),
	combout => \inst2|inst3|hi~combout\);

-- Location: LCCOMB_X4_Y7_N14
\inst2|inst105|valor_interno~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst105|valor_interno~feeder_combout\ = \inst2|inst3|hi~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst3|hi~combout\,
	combout => \inst2|inst105|valor_interno~feeder_combout\);

-- Location: FF_X4_Y7_N15
\inst2|inst105|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst2|inst105|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst105|valor_interno~q\);

-- Location: LCCOMB_X9_Y8_N8
\inst3|inst700666|inst1000|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|inst1000|Equal1~2_combout\ = (\inst2|inst107|selregw\(2) & \inst2|inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst107|selregw\(2),
	datad => \inst2|inst107|selregw\(0),
	combout => \inst3|inst700666|inst1000|Equal1~2_combout\);

-- Location: FF_X8_Y8_N15
\inst3|inst700666|AUX|SALIDA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(15));

-- Location: FF_X8_Y8_N1
\inst3|inst700666|AUX|SALIDA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(14));

-- Location: LCCOMB_X10_Y8_N20
\inst3|inst700666|AUX|SALIDA[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[13]~feeder_combout\ = \inst2|inst6|SALIDA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(13),
	combout => \inst3|inst700666|AUX|SALIDA[13]~feeder_combout\);

-- Location: FF_X10_Y8_N21
\inst3|inst700666|AUX|SALIDA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[13]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(13));

-- Location: FF_X8_Y8_N31
\inst3|inst700666|AUX|SALIDA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(12));

-- Location: LCCOMB_X8_Y8_N4
\inst3|inst700666|AUX|SALIDA[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[11]~feeder_combout\ = \inst2|inst6|SALIDA\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(11),
	combout => \inst3|inst700666|AUX|SALIDA[11]~feeder_combout\);

-- Location: FF_X8_Y8_N5
\inst3|inst700666|AUX|SALIDA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(11));

-- Location: FF_X8_Y8_N11
\inst3|inst700666|AUX|SALIDA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst2|inst6|SALIDA\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(10));

-- Location: LCCOMB_X8_Y8_N20
\inst3|inst700666|AUX|SALIDA[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[9]~feeder_combout\ = \inst2|inst6|SALIDA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(9),
	combout => \inst3|inst700666|AUX|SALIDA[9]~feeder_combout\);

-- Location: FF_X8_Y8_N21
\inst3|inst700666|AUX|SALIDA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(9));

-- Location: LCCOMB_X8_Y8_N26
\inst3|inst700666|AUX|SALIDA[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[8]~feeder_combout\ = \inst2|inst6|SALIDA\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(8),
	combout => \inst3|inst700666|AUX|SALIDA[8]~feeder_combout\);

-- Location: FF_X8_Y8_N27
\inst3|inst700666|AUX|SALIDA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(8));

-- Location: LCCOMB_X10_Y8_N22
\inst3|inst700666|AUX|SALIDA[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[7]~feeder_combout\ = \inst2|inst6|SALIDA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(7),
	combout => \inst3|inst700666|AUX|SALIDA[7]~feeder_combout\);

-- Location: FF_X10_Y8_N23
\inst3|inst700666|AUX|SALIDA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(7));

-- Location: LCCOMB_X10_Y8_N28
\inst3|inst700666|AUX|SALIDA[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[6]~feeder_combout\ = \inst2|inst6|SALIDA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst6|SALIDA\(6),
	combout => \inst3|inst700666|AUX|SALIDA[6]~feeder_combout\);

-- Location: FF_X10_Y8_N29
\inst3|inst700666|AUX|SALIDA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(6));

-- Location: LCCOMB_X10_Y8_N18
\inst3|inst700666|AUX|SALIDA[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[5]~feeder_combout\ = \inst2|inst6|SALIDA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(5),
	combout => \inst3|inst700666|AUX|SALIDA[5]~feeder_combout\);

-- Location: FF_X10_Y8_N19
\inst3|inst700666|AUX|SALIDA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(5));

-- Location: LCCOMB_X10_Y8_N4
\inst3|inst700666|AUX|SALIDA[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[4]~feeder_combout\ = \inst2|inst6|SALIDA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(4),
	combout => \inst3|inst700666|AUX|SALIDA[4]~feeder_combout\);

-- Location: FF_X10_Y8_N5
\inst3|inst700666|AUX|SALIDA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(4));

-- Location: LCCOMB_X10_Y8_N26
\inst3|inst700666|AUX|SALIDA[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[3]~feeder_combout\ = \inst2|inst6|SALIDA\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(3),
	combout => \inst3|inst700666|AUX|SALIDA[3]~feeder_combout\);

-- Location: FF_X10_Y8_N27
\inst3|inst700666|AUX|SALIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[3]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(3));

-- Location: LCCOMB_X10_Y8_N24
\inst3|inst700666|AUX|SALIDA[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[2]~feeder_combout\ = \inst2|inst6|SALIDA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(2),
	combout => \inst3|inst700666|AUX|SALIDA[2]~feeder_combout\);

-- Location: FF_X10_Y8_N25
\inst3|inst700666|AUX|SALIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(2));

-- Location: LCCOMB_X10_Y8_N30
\inst3|inst700666|AUX|SALIDA[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[1]~feeder_combout\ = \inst2|inst6|SALIDA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(1),
	combout => \inst3|inst700666|AUX|SALIDA[1]~feeder_combout\);

-- Location: FF_X10_Y8_N31
\inst3|inst700666|AUX|SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(1));

-- Location: LCCOMB_X10_Y8_N0
\inst3|inst700666|AUX|SALIDA[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst700666|AUX|SALIDA[0]~feeder_combout\ = \inst2|inst6|SALIDA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst6|SALIDA\(0),
	combout => \inst3|inst700666|AUX|SALIDA[0]~feeder_combout\);

-- Location: FF_X10_Y8_N1
\inst3|inst700666|AUX|SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst3|inst700666|AUX|SALIDA[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst3|inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst700666|AUX|SALIDA\(0));

ww_n <= \n~output_o\;

ww_z <= \z~output_o\;

ww_v <= \v~output_o\;

ww_c <= \c~output_o\;

ww_h <= \h~output_o\;

ww_i <= \i~output_o\;

ww_ACCA_D(15) <= \ACCA_D[15]~output_o\;

ww_ACCA_D(14) <= \ACCA_D[14]~output_o\;

ww_ACCA_D(13) <= \ACCA_D[13]~output_o\;

ww_ACCA_D(12) <= \ACCA_D[12]~output_o\;

ww_ACCA_D(11) <= \ACCA_D[11]~output_o\;

ww_ACCA_D(10) <= \ACCA_D[10]~output_o\;

ww_ACCA_D(9) <= \ACCA_D[9]~output_o\;

ww_ACCA_D(8) <= \ACCA_D[8]~output_o\;

ww_ACCA_D(7) <= \ACCA_D[7]~output_o\;

ww_ACCA_D(6) <= \ACCA_D[6]~output_o\;

ww_ACCA_D(5) <= \ACCA_D[5]~output_o\;

ww_ACCA_D(4) <= \ACCA_D[4]~output_o\;

ww_ACCA_D(3) <= \ACCA_D[3]~output_o\;

ww_ACCA_D(2) <= \ACCA_D[2]~output_o\;

ww_ACCA_D(1) <= \ACCA_D[1]~output_o\;

ww_ACCA_D(0) <= \ACCA_D[0]~output_o\;

ww_ACCB_D(15) <= \ACCB_D[15]~output_o\;

ww_ACCB_D(14) <= \ACCB_D[14]~output_o\;

ww_ACCB_D(13) <= \ACCB_D[13]~output_o\;

ww_ACCB_D(12) <= \ACCB_D[12]~output_o\;

ww_ACCB_D(11) <= \ACCB_D[11]~output_o\;

ww_ACCB_D(10) <= \ACCB_D[10]~output_o\;

ww_ACCB_D(9) <= \ACCB_D[9]~output_o\;

ww_ACCB_D(8) <= \ACCB_D[8]~output_o\;

ww_ACCB_D(7) <= \ACCB_D[7]~output_o\;

ww_ACCB_D(6) <= \ACCB_D[6]~output_o\;

ww_ACCB_D(5) <= \ACCB_D[5]~output_o\;

ww_ACCB_D(4) <= \ACCB_D[4]~output_o\;

ww_ACCB_D(3) <= \ACCB_D[3]~output_o\;

ww_ACCB_D(2) <= \ACCB_D[2]~output_o\;

ww_ACCB_D(1) <= \ACCB_D[1]~output_o\;

ww_ACCB_D(0) <= \ACCB_D[0]~output_o\;

ww_AUX_D(15) <= \AUX_D[15]~output_o\;

ww_AUX_D(14) <= \AUX_D[14]~output_o\;

ww_AUX_D(13) <= \AUX_D[13]~output_o\;

ww_AUX_D(12) <= \AUX_D[12]~output_o\;

ww_AUX_D(11) <= \AUX_D[11]~output_o\;

ww_AUX_D(10) <= \AUX_D[10]~output_o\;

ww_AUX_D(9) <= \AUX_D[9]~output_o\;

ww_AUX_D(8) <= \AUX_D[8]~output_o\;

ww_AUX_D(7) <= \AUX_D[7]~output_o\;

ww_AUX_D(6) <= \AUX_D[6]~output_o\;

ww_AUX_D(5) <= \AUX_D[5]~output_o\;

ww_AUX_D(4) <= \AUX_D[4]~output_o\;

ww_AUX_D(3) <= \AUX_D[3]~output_o\;

ww_AUX_D(2) <= \AUX_D[2]~output_o\;

ww_AUX_D(1) <= \AUX_D[1]~output_o\;

ww_AUX_D(0) <= \AUX_D[0]~output_o\;

ww_IX_D(15) <= \IX_D[15]~output_o\;

ww_IX_D(14) <= \IX_D[14]~output_o\;

ww_IX_D(13) <= \IX_D[13]~output_o\;

ww_IX_D(12) <= \IX_D[12]~output_o\;

ww_IX_D(11) <= \IX_D[11]~output_o\;

ww_IX_D(10) <= \IX_D[10]~output_o\;

ww_IX_D(9) <= \IX_D[9]~output_o\;

ww_IX_D(8) <= \IX_D[8]~output_o\;

ww_IX_D(7) <= \IX_D[7]~output_o\;

ww_IX_D(6) <= \IX_D[6]~output_o\;

ww_IX_D(5) <= \IX_D[5]~output_o\;

ww_IX_D(4) <= \IX_D[4]~output_o\;

ww_IX_D(3) <= \IX_D[3]~output_o\;

ww_IX_D(2) <= \IX_D[2]~output_o\;

ww_IX_D(1) <= \IX_D[1]~output_o\;

ww_IX_D(0) <= \IX_D[0]~output_o\;

ww_IY_D(15) <= \IY_D[15]~output_o\;

ww_IY_D(14) <= \IY_D[14]~output_o\;

ww_IY_D(13) <= \IY_D[13]~output_o\;

ww_IY_D(12) <= \IY_D[12]~output_o\;

ww_IY_D(11) <= \IY_D[11]~output_o\;

ww_IY_D(10) <= \IY_D[10]~output_o\;

ww_IY_D(9) <= \IY_D[9]~output_o\;

ww_IY_D(8) <= \IY_D[8]~output_o\;

ww_IY_D(7) <= \IY_D[7]~output_o\;

ww_IY_D(6) <= \IY_D[6]~output_o\;

ww_IY_D(5) <= \IY_D[5]~output_o\;

ww_IY_D(4) <= \IY_D[4]~output_o\;

ww_IY_D(3) <= \IY_D[3]~output_o\;

ww_IY_D(2) <= \IY_D[2]~output_o\;

ww_IY_D(1) <= \IY_D[1]~output_o\;

ww_IY_D(0) <= \IY_D[0]~output_o\;

ww_SP_D(15) <= \SP_D[15]~output_o\;

ww_SP_D(14) <= \SP_D[14]~output_o\;

ww_SP_D(13) <= \SP_D[13]~output_o\;

ww_SP_D(12) <= \SP_D[12]~output_o\;

ww_SP_D(11) <= \SP_D[11]~output_o\;

ww_SP_D(10) <= \SP_D[10]~output_o\;

ww_SP_D(9) <= \SP_D[9]~output_o\;

ww_SP_D(8) <= \SP_D[8]~output_o\;

ww_SP_D(7) <= \SP_D[7]~output_o\;

ww_SP_D(6) <= \SP_D[6]~output_o\;

ww_SP_D(5) <= \SP_D[5]~output_o\;

ww_SP_D(4) <= \SP_D[4]~output_o\;

ww_SP_D(3) <= \SP_D[3]~output_o\;

ww_SP_D(2) <= \SP_D[2]~output_o\;

ww_SP_D(1) <= \SP_D[1]~output_o\;

ww_SP_D(0) <= \SP_D[0]~output_o\;
END structure;


