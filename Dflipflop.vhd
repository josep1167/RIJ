library ieee;
use ieee.std_logic_1164.all;

entity Dflipflop is
port ( D, Clk, Reset, En : in STD_LOGIC; 
       Q : out STD_LOGIC );
end Dflipflop;

architecture Behavioral of Dflipflop is
signal Qint: std_logic;
begin
   process(Clk, Reset)
   begin
      if (Reset = '1') then Qint <= '0';
		elsif (Clk'event) and (Clk = '1') then
			if En = '1' then Qint <= D;
			else Qint <= Qint;
      end if; end if;
   end process;
	Q <= Qint;
end Behavioral;