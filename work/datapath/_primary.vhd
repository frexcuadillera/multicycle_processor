library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        pcen            : in     vl_logic;
        irwrite         : in     vl_logic;
        regwrite        : in     vl_logic;
        alusrca         : in     vl_logic;
        iord            : in     vl_logic;
        memtoreg        : in     vl_logic;
        regdst          : in     vl_logic;
        alusrcb         : in     vl_logic_vector(1 downto 0);
        pcsrc           : in     vl_logic_vector(1 downto 0);
        alucontrol      : in     vl_logic_vector(2 downto 0);
        op              : out    vl_logic_vector(5 downto 0);
        funct           : out    vl_logic_vector(5 downto 0);
        zero            : out    vl_logic;
        adr             : out    vl_logic_vector(31 downto 0);
        writedata       : out    vl_logic_vector(31 downto 0);
        readdata        : in     vl_logic_vector(31 downto 0)
    );
end datapath;
