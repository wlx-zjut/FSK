library verilog;
use verilog.vl_types.all;
entity wlx_sinout is
    port(
        clk             : in     vl_logic;
        dat_out         : out    vl_logic_vector(7 downto 0)
    );
end wlx_sinout;
