library verilog;
use verilog.vl_types.all;
entity ex_1_logica is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        AND_OUT         : out    vl_logic
    );
end ex_1_logica;
