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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/23/2024 15:03:39"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux IS
    PORT (
	address : IN std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	port_in_00 : IN std_logic_vector(7 DOWNTO 0);
	port_in_01 : IN std_logic_vector(7 DOWNTO 0);
	data_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END mux;

-- Design Ports Information
-- clock	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[0]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[4]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[4]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[5]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[6]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[7]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[7]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_port_in_00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \port_in_01[0]~input_o\ : std_logic;
SIGNAL \port_in_00[0]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \data_out~0_combout\ : std_logic;
SIGNAL \port_in_00[1]~input_o\ : std_logic;
SIGNAL \port_in_01[1]~input_o\ : std_logic;
SIGNAL \data_out~1_combout\ : std_logic;
SIGNAL \port_in_01[2]~input_o\ : std_logic;
SIGNAL \port_in_00[2]~input_o\ : std_logic;
SIGNAL \data_out~2_combout\ : std_logic;
SIGNAL \port_in_01[3]~input_o\ : std_logic;
SIGNAL \port_in_00[3]~input_o\ : std_logic;
SIGNAL \data_out~3_combout\ : std_logic;
SIGNAL \port_in_01[4]~input_o\ : std_logic;
SIGNAL \port_in_00[4]~input_o\ : std_logic;
SIGNAL \data_out~4_combout\ : std_logic;
SIGNAL \port_in_00[5]~input_o\ : std_logic;
SIGNAL \port_in_01[5]~input_o\ : std_logic;
SIGNAL \data_out~5_combout\ : std_logic;
SIGNAL \port_in_00[6]~input_o\ : std_logic;
SIGNAL \port_in_01[6]~input_o\ : std_logic;
SIGNAL \data_out~6_combout\ : std_logic;
SIGNAL \port_in_01[7]~input_o\ : std_logic;
SIGNAL \port_in_00[7]~input_o\ : std_logic;
SIGNAL \data_out~7_combout\ : std_logic;

BEGIN

ww_address <= address;
ww_clock <= clock;
ww_port_in_00 <= port_in_00;
ww_port_in_01 <= port_in_01;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y6_N2
\data_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~0_combout\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\data_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~1_combout\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\data_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~2_combout\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\data_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~3_combout\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\data_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~4_combout\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\data_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~5_combout\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\data_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~6_combout\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\data_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~7_combout\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOIBUF_X0_Y5_N1
\port_in_01[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(0),
	o => \port_in_01[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\port_in_00[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(0),
	o => \port_in_00[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\address[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\address[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\address[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\address[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\address[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: LCCOMB_X1_Y5_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\address[1]~input_o\ & (!\address[2]~input_o\ & (!\address[3]~input_o\ & \address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[4]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y5_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\address[7]~input_o\ & (\address[5]~input_o\ & (\address[6]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[7]~input_o\,
	datab => \address[5]~input_o\,
	datac => \address[6]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y5_N12
\data_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~0_combout\ = (\Equal0~1_combout\ & ((\address[0]~input_o\ & (\port_in_01[0]~input_o\)) # (!\address[0]~input_o\ & ((\port_in_00[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_01[0]~input_o\,
	datab => \port_in_00[0]~input_o\,
	datac => \address[0]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \data_out~0_combout\);

-- Location: IOIBUF_X14_Y0_N22
\port_in_00[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(1),
	o => \port_in_00[1]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\port_in_01[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(1),
	o => \port_in_01[1]~input_o\);

-- Location: LCCOMB_X1_Y5_N14
\data_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~1_combout\ = (\Equal0~1_combout\ & ((\address[0]~input_o\ & ((\port_in_01[1]~input_o\))) # (!\address[0]~input_o\ & (\port_in_00[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_00[1]~input_o\,
	datab => \port_in_01[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \data_out~1_combout\);

-- Location: IOIBUF_X0_Y7_N15
\port_in_01[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(2),
	o => \port_in_01[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\port_in_00[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(2),
	o => \port_in_00[2]~input_o\);

-- Location: LCCOMB_X1_Y5_N0
\data_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~2_combout\ = (\Equal0~1_combout\ & ((\address[0]~input_o\ & (\port_in_01[2]~input_o\)) # (!\address[0]~input_o\ & ((\port_in_00[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_01[2]~input_o\,
	datab => \port_in_00[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \data_out~2_combout\);

-- Location: IOIBUF_X0_Y5_N15
\port_in_01[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(3),
	o => \port_in_01[3]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\port_in_00[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(3),
	o => \port_in_00[3]~input_o\);

-- Location: LCCOMB_X1_Y5_N26
\data_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~3_combout\ = (\Equal0~1_combout\ & ((\address[0]~input_o\ & (\port_in_01[3]~input_o\)) # (!\address[0]~input_o\ & ((\port_in_00[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_01[3]~input_o\,
	datab => \port_in_00[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \data_out~3_combout\);

-- Location: IOIBUF_X0_Y9_N22
\port_in_01[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(4),
	o => \port_in_01[4]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\port_in_00[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(4),
	o => \port_in_00[4]~input_o\);

-- Location: LCCOMB_X1_Y5_N20
\data_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~4_combout\ = (\Equal0~1_combout\ & ((\address[0]~input_o\ & (\port_in_01[4]~input_o\)) # (!\address[0]~input_o\ & ((\port_in_00[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_01[4]~input_o\,
	datab => \port_in_00[4]~input_o\,
	datac => \address[0]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \data_out~4_combout\);

-- Location: IOIBUF_X3_Y0_N29
\port_in_00[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(5),
	o => \port_in_00[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\port_in_01[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(5),
	o => \port_in_01[5]~input_o\);

-- Location: LCCOMB_X1_Y5_N22
\data_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~5_combout\ = (\Equal0~1_combout\ & ((\address[0]~input_o\ & ((\port_in_01[5]~input_o\))) # (!\address[0]~input_o\ & (\port_in_00[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \Equal0~1_combout\,
	datac => \port_in_00[5]~input_o\,
	datad => \port_in_01[5]~input_o\,
	combout => \data_out~5_combout\);

-- Location: IOIBUF_X0_Y6_N22
\port_in_00[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(6),
	o => \port_in_00[6]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\port_in_01[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(6),
	o => \port_in_01[6]~input_o\);

-- Location: LCCOMB_X1_Y5_N8
\data_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~6_combout\ = (\Equal0~1_combout\ & ((\address[0]~input_o\ & ((\port_in_01[6]~input_o\))) # (!\address[0]~input_o\ & (\port_in_00[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_00[6]~input_o\,
	datab => \port_in_01[6]~input_o\,
	datac => \address[0]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \data_out~6_combout\);

-- Location: IOIBUF_X0_Y6_N8
\port_in_01[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(7),
	o => \port_in_01[7]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\port_in_00[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(7),
	o => \port_in_00[7]~input_o\);

-- Location: LCCOMB_X1_Y5_N18
\data_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~7_combout\ = (\Equal0~1_combout\ & ((\address[0]~input_o\ & (\port_in_01[7]~input_o\)) # (!\address[0]~input_o\ & ((\port_in_00[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \port_in_01[7]~input_o\,
	datab => \Equal0~1_combout\,
	datac => \address[0]~input_o\,
	datad => \port_in_00[7]~input_o\,
	combout => \data_out~7_combout\);

-- Location: IOIBUF_X11_Y0_N29
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;
END structure;


