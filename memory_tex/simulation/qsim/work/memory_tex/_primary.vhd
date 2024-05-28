library verilog;
use verilog.vl_types.all;
entity memory_tex is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        writee          : in     vl_logic;
        port_in_00      : in     vl_logic_vector(7 downto 0);
        port_in_01      : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        address1        : out    vl_logic_vector(6 downto 0);
        address2        : out    vl_logic_vector(6 downto 0);
        data_out_1      : out    vl_logic_vector(6 downto 0);
        data_out_2      : out    vl_logic_vector(6 downto 0)
    );
end memory_tex;
