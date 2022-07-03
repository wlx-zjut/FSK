library verilog;
use verilog.vl_types.all;
entity zn_compare is
    port(
        fre_o           : in     vl_logic_vector(15 downto 0);
        dataout         : out    vl_logic
    );
end zn_compare;
