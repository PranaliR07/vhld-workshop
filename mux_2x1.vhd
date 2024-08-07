library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux_2x1 is
 port(in1, in0,S:in std_logic;
  Y:out std_logic);
 end entity;
 
architecture struct of mux_2x1 is
 signal sig1, sig2, sig3: std_logic;
begin
	and_inst_1:AND_2 PORT map(in0, sig1, sig2);
	and_inst_2:AND_2 PORT map(S, in1, sig3);
	or_inst_1:OR_2 PORT map(sig2, sig3, Y);
	invert_inst_1:INVERTER PORT map(S, sig1);

end architecture;

