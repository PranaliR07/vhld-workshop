library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity addsub_34 is
 port(a3,a2,a1,a0,b3,b2,b1,b0,M:in std_logic;
		Cout, s3,s2,s1,s0:out std_logic);
 end entity;
 
architecture struct of addsub_34 is
 signal sig3, sig2, sig1, sig0,c1, c2, c3: std_logic;
begin
	adder3:FULL_ADDER port map(A=>sig3, B=>a3, Cin=>c3, sum=>S3, Cout=>Cout);
	adder2:FULL_ADDER port map(A=>sig2, B=>a2, Cin=>c2, sum=>S2, Cout=>c3);
	adder1:FULL_ADDER port map(A=>sig1, B=>a1, Cin=>c1, sum=>S1, Cout=>c2);
	adder0:FULL_ADDER port map(A=>sig0, B=>a0, Cin=>M, sum=>S0, Cout=>c1);
	xor3:XOR_2 port map(A=>b3, B=>M, Y=>sig3);
	xor2:XOR_2 port map(A=>b2, B=>M, Y=>sig2);
	xor1:XOR_2 port map(A=>b1, B=>M, Y=>sig1);
	xor0:XOR_2 port map(A=>b0, B=>M, Y=>sig0);

end architecture;