library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Add is
port(A, B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		C : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
end Add;

architecture Behavioral of Add is
begin
 C<= A+B; --branch target address
end Behavioral;

