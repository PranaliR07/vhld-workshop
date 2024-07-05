library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component mux_4x1 is
port(in3, in2, in1, in0, s1, s0:in std_logic;
  Y:out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: mux_4x1 port map (in3 => input_vector(5), in2 => input_vector(4), in1 => input_vector(3),
												in0 => input_vector(2),
											s1 => input_vector(1),s0 => input_vector(0),Y => output_vector(0));

end DutWrap;