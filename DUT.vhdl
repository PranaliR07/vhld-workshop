library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component mux_4x1_4bit is
 port(a, b, c, d:in std_logic_vector(3 downto 0); s:in std_logic_vector(1 downto 0);
  Y:out std_logic_vector(3 downto 0));
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: mux_4x1_4bit port map (
	
	d(3) => input_vector(17),
	d(2) => input_vector(16),
	d(1) => input_vector(15),
	d(0) => input_vector(14),
	c(3) => input_vector(13),
	c(2) => input_vector(12),
	c(1) => input_vector(11),
	c(0) => input_vector(10),
	b(3) => input_vector(9),
	b(2) => input_vector(8),
	b(1) => input_vector(7),
	b(0) => input_vector(6),
	a(3) => input_vector(5),
	a(2) => input_vector(4),
	a(1) => input_vector(3),
	a(0) => input_vector(2),
	s(1) => input_vector(1),
	s(0) => input_vector(0),
	
	y(3) => output_vector(3),
	y(2) => output_vector(2),
	y(1) => output_vector(1),
	y(0) => output_vector(0)
	);

end DutWrap;