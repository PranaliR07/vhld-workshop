library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity and_is
port(in1,in2:in std_logic;
     out1 :out std_logic);

	  end entity;

architecture struct of and_is
	  signal sig1,sig2:std_logic;
begin
inst1:NAND_2 port map(in1,in2,sig1);
inst2:NAND_2 port map(sig1,sig1,out1);

end architecture;