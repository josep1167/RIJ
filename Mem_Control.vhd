--------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mem_Control is
    Port ( Alu_out: in  STD_LOGIC_VECTOR (31 downto 0);
			  OPCode: in  STD_LOGIC_VECTOR(3 downto 0);
           Mux_Sel, PC_En : out  STD_LOGIC);
end Mem_Control;

architecture Behavioral of Mem_Control is
begin

process(Alu_out,OPCode)
begin
-- SW 011011
-- LW 010011
--- Activate PC when alu is 52/34 and sw
if (Alu_out =x"00000034") and (OPCode="0101") then
		PC_En<='1';
		else 
		PC_En<='0';
end if;
--- Mux_sel is the  when alu is 48/30 and LW
if (Alu_out =x"00000030") and (OPCode ="0100") then
		Mux_Sel<='0';-- Will selct Din
		else 
		Mux_Sel<='1';-- Will select Read data
end if;

end process;
end Behavioral;

