----------------------------------------------------------------------------------
-- Company: George Mason University
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity ALU is
    Port (A, B     : in  STD_LOGIC_VECTOR (31 downto 0);
          ALUCntl  : in  STD_LOGIC_VECTOR (3 downto 0);
          Carryin  : in  STD_LOGIC;
          ALUOut   : out  STD_LOGIC_VECTOR (31 downto 0);
          Zero     : out  STD_LOGIC;
          Carryout : out std_logic;
          Overflow : out  STD_LOGIC);
end ALU; 

architecture Behavioral of ALU is
signal ALU_Result : std_logic_vector (31 downto 0);
signal add_result,sub_result,a32,b32: std_logic_vector(32 downto 0);
signal c32: std_logic_vector(32 downto 0):=(others=>'0');
signal add_ov,sub_ov:std_logic;
signal sltu_result,slt_result :std_logic_vector (31 downto 0);
signal zero1, zero2, zero3 : std_logic;
signal sw_result, lw_result, beq_result, bne_result :std_logic_vector (31 downto 0);
begin
   with ALUCntl select
   ALU_Result <=add_result(31 downto 0) when "0010", --Add
                sub_result(31 downto 0) when "0110", --sub
                A AND B 		when "0000",
                A OR  B 		when "0001",
                A XOR B 		when "0011",
                A NOR B 		when "1100",		 
					 slt_result 	when "0111",
					 sltu_result 	when "1000",
					 sw_result		when "0101",
					 lw_result		when "0100",
					 beq_result		when "1010",
					 bne_result		when "1011",
                A when others;---condition for all other alu control signals
ALUOut  <= ALU_Result; 
----Addition Operation and carry out generation-----	
   a32   <='0'& A;
   b32   <='0'& B;
   c32(0)<=Carryin;
   add_result<=a32 + b32 + c32;
   sub_result<=a32 - b32;
---Zero flag-----------------------------	
   zero1 <= '1' when ALU_Result =x"00000000" else '0';
---Overflow flag---------------------------------------
   add_ov<= (A(31)and B(31)       and (not alu_result(31))) or ((not A(31))and (not B(31)) and alu_result(31));
   sub_ov<= (A(31)and (not B(31)) and (not alu_result(31))) or ((not A(31))and B(31)       and alu_result(31)); 
  with ALUCntl select
      Overflow<= add_ov when "0010",
                 sub_ov when "0110",
                 '0' when others;
---Carryout-------------------------------------------------
  With ALUCntl select 
     Carryout<= add_result(32) when "0010",
                sub_result(32) when "0110",
                '0' when others;
					 
---Set On Less Than Unsigned-----------------------------------------
process(A,B)
	begin
		if (A < B) then     -- R[s]=A, R[t]=B, R[d]=ALU_Result
			slt_result <= x"00000001";
		else 
			slt_result <= x"00000000";
		end if;
	end process;
-----Set On Less Than Signed--------------------------------------------
process(A,B)
	begin
		if ((A(31) = '0') and (B(31) = '0')) then --MSB 00
			if (A < B) then     -- R[s]=A, R[t]=B, R[d]=ALU_Result
				sltu_result <= x"00000001";
			else 
				sltu_result <= x"00000000";
			end if;
		
		elsif ((A(31) = '1') and (B(31) = '0')) then --MSB 10
			sltu_result <= x"00000001";

		elsif ((A(31) = '0') and (B(31) = '1')) then -- MSB 01
			sltu_result <= x"00000000";
			
		elsif ((A(31) = '1') and (B(31) = '1')) then --MSB 11
			if (A < B) then     -- R[s]=A, R[t]=B, R[d]=ALU_Result
				sltu_result <= x"00000000";
			else 
				sltu_result <= x"00000001";
			end if;
		else
			sltu_result <= x"FFFFFFFF";
		end if;
end process;


-----lw and sw----------------------
--lw:  R[rt] = M[R[rs]+SignExtImm] 
	lw_result<= A+B;

--sw: M[R[rs]+SignExtImm] = R[rt] 
	sw_result<= A+B;

------beq and bne-------------------------------------------	
process (A,B)	
	begin
	if (A = B) then
		beq_result <= x"00000001";
		zero2 <= '1';
	else
		beq_result <= x"00000000";
		zero2 <= '0';
	end if;
end process;

process(A,B)
	begin
	if (A = B) then
		bne_result <= x"00000000";
		zero3 <= '0';
	else
		bne_result <= x"00000001";
		zero3 <= '1';
	end if;
end process;
---------------------------
	with ALUCntl select
	zero<= zero2 when "1010",
			 zero3 when "1011",
			 zero1 when others;
	
end Behavioral;

