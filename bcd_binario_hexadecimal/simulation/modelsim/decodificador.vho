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

-- DATE "05/24/2024 10:30:11"

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

ENTITY 	decodificador IS
    PORT (
	numero_binario : IN std_logic_vector(3 DOWNTO 0);
	salida : OUT std_logic_vector(6 DOWNTO 0)
	);
END decodificador;

-- Design Ports Information
-- salida[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numero_binario[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numero_binario[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numero_binario[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numero_binario[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decodificador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_numero_binario : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_salida : std_logic_vector(6 DOWNTO 0);
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \salida[4]~output_o\ : std_logic;
SIGNAL \salida[5]~output_o\ : std_logic;
SIGNAL \salida[6]~output_o\ : std_logic;
SIGNAL \numero_binario[3]~input_o\ : std_logic;
SIGNAL \numero_binario[0]~input_o\ : std_logic;
SIGNAL \numero_binario[1]~input_o\ : std_logic;
SIGNAL \numero_binario[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_numero_binario <= numero_binario;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X0_Y10_N9
\salida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\salida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\salida[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\salida[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\salida[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \salida[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\salida[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \salida[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\salida[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \salida[6]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\numero_binario[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_numero_binario(3),
	o => \numero_binario[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\numero_binario[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_numero_binario(0),
	o => \numero_binario[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\numero_binario[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_numero_binario(1),
	o => \numero_binario[1]~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\numero_binario[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_numero_binario(2),
	o => \numero_binario[2]~input_o\);

-- Location: LCCOMB_X1_Y13_N8
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\numero_binario[1]~input_o\ & (!\numero_binario[3]~input_o\ & ((!\numero_binario[2]~input_o\) # (!\numero_binario[0]~input_o\)))) # (!\numero_binario[1]~input_o\ & (\numero_binario[3]~input_o\ $ (((\numero_binario[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero_binario[3]~input_o\,
	datab => \numero_binario[0]~input_o\,
	datac => \numero_binario[1]~input_o\,
	datad => \numero_binario[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y13_N18
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\numero_binario[0]~input_o\ & ((\numero_binario[1]~input_o\) # (\numero_binario[3]~input_o\ $ (!\numero_binario[2]~input_o\)))) # (!\numero_binario[0]~input_o\ & ((\numero_binario[2]~input_o\ & (\numero_binario[3]~input_o\)) # 
-- (!\numero_binario[2]~input_o\ & ((\numero_binario[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero_binario[3]~input_o\,
	datab => \numero_binario[0]~input_o\,
	datac => \numero_binario[1]~input_o\,
	datad => \numero_binario[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y13_N20
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\numero_binario[0]~input_o\) # ((\numero_binario[1]~input_o\ & (\numero_binario[3]~input_o\)) # (!\numero_binario[1]~input_o\ & ((\numero_binario[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero_binario[3]~input_o\,
	datab => \numero_binario[0]~input_o\,
	datac => \numero_binario[1]~input_o\,
	datad => \numero_binario[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y13_N6
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\numero_binario[0]~input_o\ & ((\numero_binario[3]~input_o\) # (\numero_binario[1]~input_o\ $ (!\numero_binario[2]~input_o\)))) # (!\numero_binario[0]~input_o\ & ((\numero_binario[1]~input_o\ & (\numero_binario[3]~input_o\)) # 
-- (!\numero_binario[1]~input_o\ & ((\numero_binario[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero_binario[3]~input_o\,
	datab => \numero_binario[0]~input_o\,
	datac => \numero_binario[1]~input_o\,
	datad => \numero_binario[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y13_N16
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\numero_binario[2]~input_o\ & (\numero_binario[3]~input_o\)) # (!\numero_binario[2]~input_o\ & (\numero_binario[1]~input_o\ & ((\numero_binario[3]~input_o\) # (!\numero_binario[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero_binario[3]~input_o\,
	datab => \numero_binario[0]~input_o\,
	datac => \numero_binario[1]~input_o\,
	datad => \numero_binario[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y13_N10
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\numero_binario[3]~input_o\ & (((\numero_binario[1]~input_o\) # (\numero_binario[2]~input_o\)))) # (!\numero_binario[3]~input_o\ & (\numero_binario[2]~input_o\ & (\numero_binario[0]~input_o\ $ (\numero_binario[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero_binario[3]~input_o\,
	datab => \numero_binario[0]~input_o\,
	datac => \numero_binario[1]~input_o\,
	datad => \numero_binario[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\numero_binario[1]~input_o\ & (\numero_binario[3]~input_o\)) # (!\numero_binario[1]~input_o\ & (\numero_binario[2]~input_o\ $ (((!\numero_binario[3]~input_o\ & \numero_binario[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero_binario[3]~input_o\,
	datab => \numero_binario[0]~input_o\,
	datac => \numero_binario[1]~input_o\,
	datad => \numero_binario[2]~input_o\,
	combout => \Mux0~0_combout\);

ww_salida(0) <= \salida[0]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;

ww_salida(4) <= \salida[4]~output_o\;

ww_salida(5) <= \salida[5]~output_o\;

ww_salida(6) <= \salida[6]~output_o\;
END structure;


