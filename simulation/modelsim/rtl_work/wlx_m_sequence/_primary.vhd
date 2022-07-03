library verilog;
use verilog.vl_types.all;
entity wlx_m_sequence is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \out\           : out    vl_logic
    );
end wlx_m_sequence;
