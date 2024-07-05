library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux_4bit_4x1 is
 port(a, b, c, d:in std_logic_vector(3 downto 0); s:in std_logic_vector(1 downto 0);
  Y:out std_logic_vector(3 downto 0));
 end entity;
 
architecture struct of mux_4bit_4x1 is
 component mux_4x1 is
	port(in3, in2, in1, in0, s1, s0:in std_logic;
		Y:out std_logic);
end component;
begin
	mux_inst_1:mux_4x1 port map(d(3), c(3), b(3), a(3), s(1), s(0), Y(3));
	mux_inst_2:mux_4x1 port map(d(2), c(2), b(2), a(2), s(1), s(0), Y(2));
	mux_inst_3:mux_4x1 port map(d(1), c(1), b(1), a(1), s(1), s(0), Y(1));
	mux_inst_4:mux_4x1 port map(d(0), c(0), b(0), a(0), s(1), s(0), Y(0));
end architecture struct;