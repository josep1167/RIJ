library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX2to1_32bit is
port( A,B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		sel : IN STD_LOGIC;
		C : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);
end MUX2to1_32bit;

architecture Behavioral of MUX2to1_32bit is
begin
 with sel select
	C <= A when '0',
		  B when '1',
		  A when others;
end Behavioral;

