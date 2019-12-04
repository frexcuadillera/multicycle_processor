library verilog;
use verilog.vl_types.all;
entity topmulti is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        writedata       : out    vl_logic_vector(31 downto 0);
        adr             : out    vl_logic_vector(31 downto 0);
        memwrite        : out    vl_logic
    );
end topmulti;
