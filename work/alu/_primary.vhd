library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        F               : in     vl_logic_vector(2 downto 0);
        Y               : out    vl_logic_vector(31 downto 0);
        Zero            : out    vl_logic
    );
end alu;
