library verilog;
use verilog.vl_types.all;
entity flopr_tb is
    generic(
        WIDTH           : integer := 32
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end flopr_tb;
