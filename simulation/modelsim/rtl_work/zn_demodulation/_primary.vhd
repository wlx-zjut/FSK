library verilog;
use verilog.vl_types.all;
entity zn_demodulation is
    port(
        clk             : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        rst             : in     vl_logic;
        data_out        : out    vl_logic
    );
end zn_demodulation;
