----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ALU_Control is
port( Din: IN std_logic_vector(5 downto 0);
		Cin: IN std_logic_vector(3 downto 0);
		JumpR : OUT STD_LOGIC;
		Dout: OUT std_logic_vector(3 downto 0));
end ALU_Control;

architecture Behavioral of ALU_Control is
signal sig: STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
	with Din select
		sig <=   "0010" when "100000", --add
					"0010" when "100001", --addu
					"0110" when "100010", --sub
					"0110" when "100011", --subu
					"0000" when "100100", --and
					"0001" when "100101", --or
					"0011" when "100110", --xor
					"1100" when "100111", --nor
					"0111" when "101010", --slt
					"1000" when "101011", --sltu
					"1111" when others;
		with Cin select
			Dout <=  sig when "0010", --R type
					"0010" when "0000", --addi
					"0010" when "1100", --addiu
					"0000" when "0001", --andi
					"0001" when "0011", --ori
					"0100" when "0100", --lw
					"0101" when "0101", --sw
					"1010" when "0110", --beq
					"1011" when "0111",-- bne
					"0111" when "1000", --slt
					"1000" when "1001", --sltu
					"1111" when others;
					
process (Cin, Din)
begin	
	if (Cin = "0010" and Din = "001000") then
		JumpR <= '1'; 									--Jump register
	else 
		JumpR <= '0';
	end if;
end process;
					--if function 8 and op code  000
					
end Behavioral;

