library verilog;
use verilog.vl_types.all;
entity memory_tex_vlg_check_tst is
    port(
        address1        : in     vl_logic_vector(6 downto 0);
        address2        : in     vl_logic_vector(6 downto 0);
        data_out_1      : in     vl_logic_vector(6 downto 0);
        data_out_2      : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end memory_tex_vlg_check_tst;
