library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decodificador is
    port (numero_binario: in std_logic_vector (7 downto 0);
			 salida : out std_logic_vector (6 downto 0));
end entity;
	Architecture DECO of decodificador is

   signal cable : std_logic_vector (3 downto 0);
begin
	cable<= numero_binario;
	 with (cable) select
	 salida<= "0000001" when "0000", --0
	           "1001111" when "0001", --1
				  "0010010" when "0010", --2
				  "0000110" when "0011", --3
				  "1001100" when "0100", --4
				  "0100100" when "0101", --5
				  "0100000" when "0110", --6
				  "0001111" when "0111", --7
				  "0000000" when "1000", --8
				  "0001100" when "1001", --9
				  "1111111" when others;

end architecture;
				  
