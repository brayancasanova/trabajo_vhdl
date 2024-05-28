library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity output_ports is

	port		(clock	: in std_logic;
				 reset   : in std_logic;
				 data_in : in std_logic_vector(7 downto 0);
				 writee : in std_logic;
				 address : in std_logic_vector(7 downto 0);
				 port_out_00: out std_logic_vector(7 downto 0);
				 port_out_01: out std_logic_vector(7 downto 0));
				 
end entity;

architecture output_ports_arch of output_ports is


begin
--port_out_00 description : ADDRESS X"E0"
	U3 :process(clock,reset)
		begin
			if(reset ='0')then
				port_out_00 <=x"00";
			elsif (clock'event and clock ='1')then
				if (address = x"E0" and writee ='1') then
					port_out_00 <=data_in;
				end if;
			end if;
	end process;

--port_out_01 description : ADDRESS X"E1"
	U4 :process(clock,reset)
		begin
			if(reset ='0') then
				port_out_01 <=x"00";
			elsif (clock'event and clock='1') then
				if (address = x"E1" and writee ='1') then
					port_out_01 <= data_in;
				end if;
			end if;
	end process;
	

	
	
end output_ports_arch;
		