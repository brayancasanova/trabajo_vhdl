library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decodificador2 is
    port (numero_binario: in std_logic_vector (3 downto 0);
			 salida : out std_logic_vector (6 downto 0));
end entity;
	Architecture DECO of decodificador2 is

   signal cable : std_logic_vector (3 downto 0);
begin
	cable<= numero_binario;
	 with (cable) select
	 salida<= "0001001" when "1010", --10
	           "1100000" when "1011", --11
				  "0110001" when "1100", --12
				  "1000010" when "1101", --13
				  "0110000" when "1110", --14
				  "0111000" when "1111", --15
				  "1111111" when others;

end architecture;