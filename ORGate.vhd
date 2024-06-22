library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity muxx is
port(in1,in2 : in std_logic;
     out1:out std_logic);

	  end entity;

	  architecture struct of ORgate is
	  signal sig1,sig2:std_logic;
	 
	 --//basic architecture moodule

begin
inst1: NAND_2 port map(A=>in1,b=>in1,Y=>sig1);
inst2: NAND_2 port map(A=>in2,b=>in2,Y=>sig2);
inst3: NAND_2 port map(A=>sig1,b=>sig2,Y=>out1);
end architecture;
