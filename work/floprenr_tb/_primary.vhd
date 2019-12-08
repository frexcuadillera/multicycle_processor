library verilog;
use verilog.vl_types.all;
entity floprenr_tb is
    generic(
        WIDTH           : integer := 32
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end floprenr_tb;
