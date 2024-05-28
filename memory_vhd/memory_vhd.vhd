library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_vhd is
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
		 
end entity;

architecture memory_vhd_arch of memory_vhd is

component rom_128x8_sync is
	port (clock : in std_logic;
			address : in std_logic_vector(7 downto 0);
			data_out : out std_logic_vector(7 downto 0));
end component;

component rw_96x8_sync is
	port		(clock	: in std_logic;
				 address : in std_logic_vector(7 downto 0);
				 data_in : in std_logic_vector(7 downto 0);
				 writee	: in std_logic;
				 data_out: out std_logic_vector(7 downto 0));
end component;

component output_ports is

	port		(clock	: in std_logic;
				 reset   : in std_logic;
				 data_in : in std_logic_vector(7 downto 0);
				 writee : in std_logic;
				 address : in std_logic_vector(7 downto 0);
				 port_out_00: out std_logic_vector(7 downto 0);
				 port_out_01: out std_logic_vector(7 downto 0));		 
end component;

signal rw_data_out : std_logic_vector(7 downto 0);
signal rom_data_out: std_logic_vector(7 downto 0);

begin

MUX1 : process(address,rom_data_out,rw_data_out,
					port_in_00, port_in_01)
					
begin 
	if ((to_integer(unsigned(address)) >=0) and
		  (to_integer(unsigned(address)) <= 127)) then
		  data_out <= rom_data_out;
	elsif ((to_integer(unsigned(address)) >= 128) and
			(to_integer(unsigned(address)) <=223)) then
			data_out <= rw_data_out;
			
	elsif (address = x"F0") then data_out <= port_in_00;
	elsif (address = x"F1") then data_out <= port_in_01;

	
	else data_out <=x"00";
	end if;
end process;

	U1 : rom_128x8_sync port map (address => address,clock => clock,data_out => rom_data_out);
	U2 : rw_96x8_sync port map (address => address,clock => clock,data_out => rw_data_out,data_in => data_in,writee =>writee);
	U3 : output_ports port map (address => address,clock => clock,port_out_00 => port_out_00,port_out_01 => port_out_01,reset => reset,writee => writee,data_in => data_in);
	
	
	
end architecture;
