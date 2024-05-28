library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_tex is
port 
		(address : in std_logic_vector(7 downto 0);
		 data_in : in std_logic_vector(7 downto 0);
		 writee : in std_logic;
		 port_in_00 : in std_logic_vector(7 downto 0);
		 port_in_01 : in std_logic_vector(7 downto 0);
		 clock : in std_logic;
		 reset : in std_logic;
		 
		 address1 : out std_logic_vector(6 downto 0);
		 address2: out std_logic_vector(6 downto 0);
		 
		 
		 data_out_1 : out std_logic_vector(6 downto 0);
		 data_out_2 : out std_logic_vector(6 downto 0));
		 
end entity;

architecture memory_tex_arch of memory_tex is

component tabla is
    port (A ,B ,C ,D,E : in std_logic ;
	 ABCDEFG: out std_logic_vector (7 downto 0));
end component;


component decodificador is
    port (numero_binario: in std_logic_vector (3 downto 0);
			 salida : out std_logic_vector (6 downto 0));
end component;

component memory_vhd is
port 
		(address : in std_logic_vector(7 downto 0);
		 clock : in std_logic;
		 reset : in std_logic;
		 data_in : in std_logic_vector(7 downto 0);
		 writee : in std_logic;
		 port_in_00 : in std_logic_vector(7 downto 0);
		 port_in_01 : in std_logic_vector(7 downto 0);
		 port_out_00 : out std_logic_vector(7 downto 0);
		 port_out_01 : out std_logic_vector(7 downto 0);
		 
		 data_out : out std_logic_vector(7 downto 0));
		 
end component;
signal sport_out_00 : std_logic_vector(7 downto 0);
signal sport_out_01 : std_logic_vector(7 downto 0);
signal sdata_out : std_logic_vector(7 downto 0);
signal salida_rom_bcd :std_logic_vector (6 downto 0);
signal salida_rom_bcd2 :std_logic_vector (6 downto 0);
signal salida_ram_bcd :std_logic_vector(6 downto 0);
signal salida_ram_bcd2 : std_logic_vector(6 downto 0);




begin
U1 : memory_vhd port map (address => address, data_in=> data_in, writee=> writee,port_in_00=>port_in_00,port_in_01=> port_in_01,clock =>clock,reset => reset,port_out_00 => sport_out_00,port_out_01 => sport_out_01,data_out => sdata_out);
U2 : decodificador port map (numero_binario(0) => sdata_out(0),numero_binario(1) => sdata_out(1),numero_binario(2) => sdata_out(2),numero_binario(3) => sdata_out(3),salida => data_out_1);
U3 : decodificador port map (numero_binario(0) => sdata_out(4),numero_binario(1) => sdata_out(5),numero_binario(2) => sdata_out(6),numero_binario(3) => sdata_out(7),salida => data_out_2);
U4 : decodificador port map (numero_binario(0) => address(0),numero_binario(1) => address(1),numero_binario(2) => address(2),numero_binario(3) => address(3),salida => address1);
U5 : decodificador port map (numero_binario(0) => address(4),numero_binario(1) => address(5),numero_binario(2) => address(6),numero_binario(3) => address(7),salida =>address2);
end architecture;
