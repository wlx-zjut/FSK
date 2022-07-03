library verilog;
use verilog.vl_types.all;
entity zn_wlx_freq_detect is
    generic(
        SCH_thread0     : integer := 150
    );
    port(
        sample_clk      : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        rst             : in     vl_logic;
        freq_detect_out : out    vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SCH_thread0 : constant is 2;
end zn_wlx_freq_detect;
