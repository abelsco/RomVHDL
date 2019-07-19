-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "03/27/2018 14:19:07"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Pojeto IS
    PORT (
	ender : IN std_logic_vector(2 DOWNTO 0);
	word : OUT std_logic_vector(0 TO 3)
	);
END Pojeto;

-- Design Ports Information
-- word[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ender[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ender[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ender[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Pojeto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ender : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_word : std_logic_vector(0 TO 3);
SIGNAL \word[3]~output_o\ : std_logic;
SIGNAL \word[2]~output_o\ : std_logic;
SIGNAL \word[1]~output_o\ : std_logic;
SIGNAL \word[0]~output_o\ : std_logic;
SIGNAL \ender[0]~input_o\ : std_logic;
SIGNAL \ender[1]~input_o\ : std_logic;
SIGNAL \ender[2]~input_o\ : std_logic;

BEGIN

ww_ender <= ender;
word <= ww_word;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X38_Y34_N16
\word[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ender[0]~input_o\,
	devoe => ww_devoe,
	o => \word[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\word[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ender[1]~input_o\,
	devoe => ww_devoe,
	o => \word[2]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\word[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ender[2]~input_o\,
	devoe => ww_devoe,
	o => \word[1]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\word[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \word[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N22
\ender[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ender(0),
	o => \ender[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\ender[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ender(1),
	o => \ender[1]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\ender[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ender(2),
	o => \ender[2]~input_o\);

ww_word(3) <= \word[3]~output_o\;

ww_word(2) <= \word[2]~output_o\;

ww_word(1) <= \word[1]~output_o\;

ww_word(0) <= \word[0]~output_o\;
END structure;


