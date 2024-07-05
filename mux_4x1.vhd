library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux_4x1 is
 port(in3, in2, in1, in0, s1, s0:in std_logic;
  Y:out std_logic);
 end entity;
 
architecture struct of mux_4x1 is
 signal sig1, sig2, sig3: std_logic;
 component mux_2x1 is
port(in1, in0,S:in std_logic;
  Y:out std_logic);
end component;

begin

	mux_inst_1:mux_2x1 port map(in1=>in1,in0=>in0, S=>s0, Y=>sig1);
	mux_inst_2:mux_2x1 port map(in1=>in3,in0=>in2, S=>s0, Y=>sig2);
	mux_inst_3:mux_2x1 port map(in1=>sig2,in0=>sig1, S=>s1, Y=>Y);
end architecture struct;