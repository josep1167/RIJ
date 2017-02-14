library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX2to1_5bit is
port( A,B : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		sel : IN STD_LOGIC_VECTOR(1 downto 0);
		C : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
);
end MUX2to1_5bit;

architecture Behavioral of MUX2to1_5bit is

begin

 with sel select
	C <= A when "00",
		  B when "01",
		  "11111" when "11",
		  A when others;
end Behavioral;

