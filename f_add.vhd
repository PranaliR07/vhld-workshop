library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity f_add is
 port(A,M,c:in std_logic;
 sum, carry :out std_logic);
 end entity;
 
architecture struct of f_add is
 signal sig1, sig2, sig3, sig4,sig5, sig6, sig7: std_logic;
begin
	inst1:NAND_2 PORT map(a, b, sig1);
	inst2:NAND_2 PORT map(a, sig1, sig2);
	inst3:NAND_2 PORT map(sig1, b, sig3);
	inst4:NAND_2 PORT map(sig2, sig3, sig4);
	inst5:NAND_2 PORT map(sig4, c, sig5);
	inst6:NAND_2 PORT map(sig4, sig5, sig6);
	inst7:NAND_2 PORT map(sig5, c, sig7);
	inst8:NAND_2 PORT map(sig6, sig7, sum);
	inst9:NAND_2 PORT map(sig1, sig5, carry);

end architecture;