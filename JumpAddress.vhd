library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity JumpAddress is
port( B: IN STD_LOGIC_VECTOR(27 DOWNTO 0);
		A : IN STD_LOGIC_VECTOR(3 downto 0);
		Cout: out std_logic_vector(31 downto 0)
);
end JumpAddress;

architecture Behavioral of JumpAddress is
begin
	Cout <= A&B;
end Behavioral;
