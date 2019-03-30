library verilog;
use verilog.vl_types.all;
entity counter1 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        count_1         : out    vl_logic_vector(3 downto 0);
        count_2         : out    vl_logic_vector(3 downto 0)
    );
end counter1;
