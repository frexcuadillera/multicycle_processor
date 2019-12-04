library verilog;
use verilog.vl_types.all;
entity mips is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        adr             : out    vl_logic_vector(31 downto 0);
        writedata       : out    vl_logic_vector(31 downto 0);
        memwrite        : out    vl_logic;
        readdata        : in     vl_logic_vector(31 downto 0)
    );
end mips;
