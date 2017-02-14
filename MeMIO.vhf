--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : MeMIO.vhf
-- /___/   /\     Timestamp : 04/24/2016 02:10:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Xilinx/Lab6/MeMIO.vhf -w C:/Xilinx/Lab6/MeMIO.sch
--Design Name: MeMIO
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity MeMIO is
   port ( Alu_out  : in    std_logic_vector (31 downto 0); 
          Clock    : in    std_logic; 
          Data     : in    std_logic_vector (31 downto 0); 
          Din      : in    std_logic_vector (7 downto 0); 
          OPCode   : in    std_logic_vector (3 downto 0); 
          ReadData : in    std_logic_vector (31 downto 0); 
          Reset    : in    std_logic; 
          Dout     : out   std_logic_vector (31 downto 0); 
          MUXin    : out   std_logic_vector (31 downto 0));
end MeMIO;

architecture BEHAVIORAL of MeMIO is
   signal XLXN_7   : std_logic_vector (31 downto 0);
   signal XLXN_49  : std_logic;
   signal XLXN_55  : std_logic;
   component zero_ex
      port ( Din  : in    std_logic_vector (7 downto 0); 
             Dout : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX2to1_32bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             C   : out   std_logic_vector (31 downto 0));
   end component;
   
   component PC
      port ( Clk   : in    std_logic; 
             Reset : in    std_logic; 
             En    : in    std_logic; 
             Din   : in    std_logic_vector (31 downto 0); 
             Dout  : out   std_logic_vector (31 downto 0));
   end component;
   
   component Mem_Control
      port ( Alu_out : in    std_logic_vector (31 downto 0); 
             OPCode  : in    std_logic_vector (3 downto 0); 
             Mux_Sel : out   std_logic; 
             PC_En   : out   std_logic);
   end component;
   
begin
   XLXI_2 : zero_ex
      port map (Din(7 downto 0)=>Din(7 downto 0),
                Dout(31 downto 0)=>XLXN_7(31 downto 0));
   
   XLXI_3 : MUX2to1_32bit
      port map (A(31 downto 0)=>XLXN_7(31 downto 0),
                B(31 downto 0)=>ReadData(31 downto 0),
                sel=>XLXN_49,
                C(31 downto 0)=>MUXin(31 downto 0));
   
   XLXI_8 : PC
      port map (Clk=>Clock,
                Din(31 downto 0)=>Data(31 downto 0),
                En=>XLXN_55,
                Reset=>Reset,
                Dout(31 downto 0)=>Dout(31 downto 0));
   
   XLXI_9 : Mem_Control
      port map (Alu_out(31 downto 0)=>Alu_out(31 downto 0),
                OPCode(3 downto 0)=>OPCode(3 downto 0),
                Mux_Sel=>XLXN_49,
                PC_En=>XLXN_55);
   
end BEHAVIORAL;


