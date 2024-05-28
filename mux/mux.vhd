library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is
port 
		(address : in std_logic_vector(7 downto 0);
		 clock : in std_logic;
		 port_in_00 : std_logic_vector(7 downto 0);
		 port_in_01 : std_logic_vector(7 downto 0);
		 
		 data_out : out std_logic_vector(7 downto 0));
		 
		 
		 
end entity;

architecture muc_arch of mux is

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
end architecture;
	