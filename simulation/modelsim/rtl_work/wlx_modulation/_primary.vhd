library verilog;
use verilog.vl_types.all;
entity wlx_modulation is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        fsk_to_DAC      : out    vl_logic_vector(7 downto 0)
    );
end wlx_modulation;
