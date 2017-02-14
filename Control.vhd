-------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Control is
port( opcode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		ALUOp : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		Jump, Jal, RegWrite, Branch, MemRead, MemtoReg, MemWrite, ALUSrc: OUT STD_LOGIC;
		RegDst: OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
);
end Control;

architecture Behavioral of Control is
begin
-- Din = ALUOp
	with opcode select 
		Jump <= '0' when "000000", -- R-type
				  '1' when "000010", -- jump
				  '1' when "000011", -- jump and link
				  '0' when others;
	with opcode select 
		Jal <= '0' when "000000", -- R-type
				  '0' when "000010", -- jump
				  '1' when "000011", -- jump and link
				  '0' when others;
				  
	with opcode select	
		RegWrite <= '1' when "000000",-- R-type
						'1' when "001000",--08 addi
						'1' when "001001",--09 addiu
						'1' when "001100",--0c andi
						'1' when "001101",--0d ori
						'1' when "100011",--23 lw
						'0' when "101011",--2B sw
						'0' when "000100",--04 beq
						'0' when "000101",--05 bne
						'1' when "001010",--0A stl
						'1' when "001011",--0B sltiu
						'0' when "000010", -- jump
						'1' when others;
			
	with opcode select
		RegDst <= "01" when "000000",--R-type r(d)
					 "00" when "100011",--23 lw  
					 "11" when "000011",---Jal
					 "00" when others; --All I types
	
	with opcode select
		Branch <= '1' when "000100",--04 beq
					 '1' when "000101",--05 bne
					 '0' when others;
	
	with opcode select
		ALUOp <= "0010" when "000000",--R-type
					"0000" when "001000",--08 addi
					"1100" when "001001",--09 addiu
					"0001" when "001100",--0c andi
					"0011" when "001101",--0d ori
					"0100" when "100011",--23 lw
					"0101" when "101011",--2B sw
					"0110" when "000100",--04 beq
					"0111" when "000101",--05 bne
					"1000" when "001010",--0A stl
					"1001" when "001011",--0B sltiu
					"1111" when others;

	with opcode select
		MemRead <= '1' when "100011",--23 lw
					  '0' when others;
					
	with opcode select 	
		MemtoReg <= '0' when "000000", --R-type
						'1' when "100011", --lw
						'0' when others;
						
	with opcode select
		MemWrite <= '1' when "101011",-- 2B sw
						'0' when others;
						
	with opcode select
		ALUSrc <= '0' when "000000",--R-type
					 '1' when "100011",--23 lw
					 '1' when "101011",-- 2B sw
					 '0' when "000100",-- 04 beq
					 '0' when "000101",-- 05 bne						
					 '1' when others;
		
		
end Behavioral;