--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Datapath.vhf
-- /___/   /\     Timestamp : 04/27/2016 19:00:55
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Xilinx/Lab6/Datapath.vhf -w C:/Xilinx/Lab6/Datapath.sch
--Design Name: Datapath
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

entity MeMIO_MUSER_Datapath is
   port ( Alu_out  : in    std_logic_vector (31 downto 0); 
          Clock    : in    std_logic; 
          Data     : in    std_logic_vector (31 downto 0); 
          Din      : in    std_logic_vector (7 downto 0); 
          OPCode   : in    std_logic_vector (3 downto 0); 
          ReadData : in    std_logic_vector (31 downto 0); 
          Reset    : in    std_logic; 
          Dout     : out   std_logic_vector (31 downto 0); 
          MUXin    : out   std_logic_vector (31 downto 0));
end MeMIO_MUSER_Datapath;

architecture BEHAVIORAL of MeMIO_MUSER_Datapath is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Datapath is
   port ( Clock      : in    std_logic; 
          Din        : in    std_logic_vector (7 downto 0); 
          Reset      : in    std_logic; 
          Alu_output : out   std_logic_vector (31 downto 0); 
          carryout   : out   std_logic; 
          Dout       : out   std_logic_vector (31 downto 0); 
          Output     : out   std_logic_vector (31 downto 0); 
          overflow   : out   std_logic; 
          pcout      : out   std_logic_vector (31 downto 0); 
          Reg        : out   std_logic_vector (31 downto 0); 
          zero       : out   std_logic);
end Datapath;

architecture BEHAVIORAL of Datapath is
   signal ALUOp            : std_logic_vector (3 downto 0);
   signal ALUSrc           : std_logic;
   signal Branch           : std_logic;
   signal inst_out         : std_logic_vector (31 downto 0);
   signal Jal              : std_logic;
   signal Jump             : std_logic;
   signal JumpR            : std_logic;
   signal MemRead          : std_logic;
   signal MemtoReg         : std_logic;
   signal MemWrite         : std_logic;
   signal ReadData         : std_logic_vector (31 downto 0);
   signal RegDst           : std_logic_vector (1 downto 0);
   signal RegWrite         : std_logic;
   signal XLXN_20          : std_logic;
   signal XLXN_156         : std_logic_vector (4 downto 0);
   signal XLXN_467         : std_logic_vector (31 downto 0);
   signal XLXN_469         : std_logic_vector (31 downto 0);
   signal XLXN_759         : std_logic_vector (31 downto 0);
   signal XLXN_765         : std_logic_vector (31 downto 0);
   signal XLXN_766         : std_logic_vector (31 downto 0);
   signal XLXN_791         : std_logic;
   signal XLXN_817         : std_logic_vector (3 downto 0);
   signal XLXN_825         : std_logic_vector (31 downto 0);
   signal XLXN_828         : std_logic_vector (31 downto 0);
   signal XLXN_832         : std_logic_vector (31 downto 0);
   signal XLXN_834         : std_logic_vector (27 downto 0);
   signal XLXN_837         : std_logic_vector (31 downto 0);
   signal XLXN_920         : std_logic_vector (31 downto 0);
   signal XLXN_921         : std_logic_vector (31 downto 0);
   signal XLXN_922         : std_logic;
   signal XLXN_1022        : std_logic_vector (31 downto 0);
   signal XLXN_1056        : std_logic_vector (31 downto 0);
   signal Output_DUMMY     : std_logic_vector (31 downto 0);
   signal pcout_DUMMY      : std_logic_vector (31 downto 0);
   signal Alu_output_DUMMY : std_logic_vector (31 downto 0);
   signal zero_DUMMY       : std_logic;
   signal Reg_DUMMY        : std_logic_vector (31 downto 0);
   component ALU
      port ( Carryin  : in    std_logic; 
             A        : in    std_logic_vector (31 downto 0); 
             B        : in    std_logic_vector (31 downto 0); 
             ALUCntl  : in    std_logic_vector (3 downto 0); 
             Zero     : out   std_logic; 
             Carryout : out   std_logic; 
             Overflow : out   std_logic; 
             ALUOut   : out   std_logic_vector (31 downto 0));
   end component;
   
   component Control
      port ( opcode   : in    std_logic_vector (5 downto 0); 
             Jump     : out   std_logic; 
             Jal      : out   std_logic; 
             RegWrite : out   std_logic; 
             Branch   : out   std_logic; 
             MemRead  : out   std_logic; 
             MemtoReg : out   std_logic; 
             MemWrite : out   std_logic; 
             ALUSrc   : out   std_logic; 
             ALUOp    : out   std_logic_vector (3 downto 0); 
             RegDst   : out   std_logic_vector (1 downto 0));
   end component;
   
   component datamem
      port ( clock      : in    std_logic; 
             MemWrite   : in    std_logic; 
             MemRead    : in    std_logic; 
             address    : in    std_logic_vector (31 downto 0); 
             write_data : in    std_logic_vector (31 downto 0); 
             Read_data  : out   std_logic_vector (31 downto 0));
   end component;
   
   component instmem
      port ( read_inst : in    std_logic_vector (31 downto 0); 
             inst_out  : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX2to1_5bit
      port ( A   : in    std_logic_vector (4 downto 0); 
             B   : in    std_logic_vector (4 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             C   : out   std_logic_vector (4 downto 0));
   end component;
   
   component MUX2to1_32bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             C   : out   std_logic_vector (31 downto 0));
   end component;
   
   component regfile
      port ( clock      : in    std_logic; 
             RegWrite   : in    std_logic; 
             read_reg1  : in    std_logic_vector (4 downto 0); 
             read_reg2  : in    std_logic_vector (4 downto 0); 
             write_reg  : in    std_logic_vector (4 downto 0); 
             write_data : in    std_logic_vector (31 downto 0); 
             read_data1 : out   std_logic_vector (31 downto 0); 
             read_data2 : out   std_logic_vector (31 downto 0));
   end component;
   
   component Sign_extend
      port ( Din  : in    std_logic_vector (15 downto 0); 
             Dout : out   std_logic_vector (31 downto 0));
   end component;
   
   component AND_Gate
      port ( A : in    std_logic; 
             B : in    std_logic; 
             C : out   std_logic);
   end component;
   
   component Add
      port ( A : in    std_logic_vector (31 downto 0); 
             B : in    std_logic_vector (31 downto 0); 
             C : out   std_logic_vector (31 downto 0));
   end component;
   
   component PC
      port ( Clk   : in    std_logic; 
             Reset : in    std_logic; 
             En    : in    std_logic; 
             Din   : in    std_logic_vector (31 downto 0); 
             Dout  : out   std_logic_vector (31 downto 0));
   end component;
   
   component PCADD
      port ( Din  : in    std_logic_vector (31 downto 0); 
             Dout : out   std_logic_vector (31 downto 0));
   end component;
   
   component Shift_Left2
      port ( Din  : in    std_logic_vector (31 downto 0); 
             Dout : out   std_logic_vector (31 downto 0));
   end component;
   
   component ALU_Control
      port ( Din   : in    std_logic_vector (5 downto 0); 
             Cin   : in    std_logic_vector (3 downto 0); 
             JumpR : out   std_logic; 
             Dout  : out   std_logic_vector (3 downto 0));
   end component;
   
   component Shift_Left2_jump
      port ( Din  : in    std_logic_vector (25 downto 0); 
             Dout : out   std_logic_vector (27 downto 0));
   end component;
   
   component JumpAddress
      port ( B    : in    std_logic_vector (27 downto 0); 
             A    : in    std_logic_vector (3 downto 0); 
             Cout : out   std_logic_vector (31 downto 0));
   end component;
   
   component MeMIO_MUSER_Datapath
      port ( Din      : in    std_logic_vector (7 downto 0); 
             ReadData : in    std_logic_vector (31 downto 0); 
             Data     : in    std_logic_vector (31 downto 0); 
             Clock    : in    std_logic; 
             Alu_out  : in    std_logic_vector (31 downto 0); 
             OPCode   : in    std_logic_vector (3 downto 0); 
             Reset    : in    std_logic; 
             Dout     : out   std_logic_vector (31 downto 0); 
             MUXin    : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXN_20 <= '0';
   XLXN_922 <= '1';
   Alu_output(31 downto 0) <= Alu_output_DUMMY(31 downto 0);
   Output(31 downto 0) <= Output_DUMMY(31 downto 0);
   pcout(31 downto 0) <= pcout_DUMMY(31 downto 0);
   Reg(31 downto 0) <= Reg_DUMMY(31 downto 0);
   zero <= zero_DUMMY;
   Alu_c : ALU
      port map (A(31 downto 0)=>XLXN_467(31 downto 0),
                ALUCntl(3 downto 0)=>XLXN_817(3 downto 0),
                B(31 downto 0)=>XLXN_469(31 downto 0),
                Carryin=>XLXN_20,
                ALUOut(31 downto 0)=>Alu_output_DUMMY(31 downto 0),
                Carryout=>carryout,
                Overflow=>overflow,
                Zero=>zero_DUMMY);
   
   Control_c : Control
      port map (opcode(5 downto 0)=>inst_out(31 downto 26),
                ALUOp(3 downto 0)=>ALUOp(3 downto 0),
                ALUSrc=>ALUSrc,
                Branch=>Branch,
                Jal=>Jal,
                Jump=>Jump,
                MemRead=>MemRead,
                MemtoReg=>MemtoReg,
                MemWrite=>MemWrite,
                RegDst(1 downto 0)=>RegDst(1 downto 0),
                RegWrite=>RegWrite);
   
   Datamem_c : datamem
      port map (address(31 downto 0)=>Alu_output_DUMMY(31 downto 0),
                clock=>Clock,
                MemRead=>MemRead,
                MemWrite=>MemWrite,
                write_data(31 downto 0)=>Reg_DUMMY(31 downto 0),
                Read_data(31 downto 0)=>ReadData(31 downto 0));
   
   instmem_c : instmem
      port map (read_inst(31 downto 0)=>pcout_DUMMY(31 downto 0),
                inst_out(31 downto 0)=>inst_out(31 downto 0));
   
   Muxleft : MUX2to1_5bit
      port map (A(4 downto 0)=>inst_out(20 downto 16),
                B(4 downto 0)=>inst_out(15 downto 11),
                sel(1 downto 0)=>RegDst(1 downto 0),
                C(4 downto 0)=>XLXN_156(4 downto 0));
   
   MuxMid : MUX2to1_32bit
      port map (A(31 downto 0)=>Reg_DUMMY(31 downto 0),
                B(31 downto 0)=>XLXN_1022(31 downto 0),
                sel=>ALUSrc,
                C(31 downto 0)=>XLXN_469(31 downto 0));
   
   MUXright : MUX2to1_32bit
      port map (A(31 downto 0)=>Alu_output_DUMMY(31 downto 0),
                B(31 downto 0)=>ReadData(31 downto 0),
                sel=>MemtoReg,
                C(31 downto 0)=>XLXN_921(31 downto 0));
   
   Mux_jump : MUX2to1_32bit
      port map (A(31 downto 0)=>XLXN_828(31 downto 0),
                B(31 downto 0)=>XLXN_832(31 downto 0),
                sel=>Jump,
                C(31 downto 0)=>XLXN_766(31 downto 0));
   
   Mux_Spec : MUX2to1_32bit
      port map (A(31 downto 0)=>XLXN_766(31 downto 0),
                B(31 downto 0)=>Output_DUMMY(31 downto 0),
                sel=>JumpR,
                C(31 downto 0)=>XLXN_920(31 downto 0));
   
   Regfile_c : regfile
      port map (clock=>Clock,
                read_reg1(4 downto 0)=>inst_out(25 downto 21),
                read_reg2(4 downto 0)=>inst_out(20 downto 16),
                RegWrite=>RegWrite,
                write_data(31 downto 0)=>XLXN_825(31 downto 0),
                write_reg(4 downto 0)=>XLXN_156(4 downto 0),
                read_data1(31 downto 0)=>XLXN_467(31 downto 0),
                read_data2(31 downto 0)=>Reg_DUMMY(31 downto 0));
   
   XLXI_34 : Sign_extend
      port map (Din(15 downto 0)=>inst_out(15 downto 0),
                Dout(31 downto 0)=>XLXN_1022(31 downto 0));
   
   XLXI_100 : AND_Gate
      port map (A=>Branch,
                B=>zero_DUMMY,
                C=>XLXN_791);
   
   XLXI_103 : MUX2to1_32bit
      port map (A(31 downto 0)=>XLXN_837(31 downto 0),
                B(31 downto 0)=>XLXN_765(31 downto 0),
                sel=>XLXN_791,
                C(31 downto 0)=>XLXN_828(31 downto 0));
   
   XLXI_108 : Add
      port map (A(31 downto 0)=>XLXN_837(31 downto 0),
                B(31 downto 0)=>XLXN_759(31 downto 0),
                C(31 downto 0)=>XLXN_765(31 downto 0));
   
   XLXI_112 : PC
      port map (Clk=>Clock,
                Din(31 downto 0)=>XLXN_920(31 downto 0),
                En=>XLXN_922,
                Reset=>Reset,
                Dout(31 downto 0)=>pcout_DUMMY(31 downto 0));
   
   XLXI_114 : PCADD
      port map (Din(31 downto 0)=>pcout_DUMMY(31 downto 0),
                Dout(31 downto 0)=>XLXN_837(31 downto 0));
   
   XLXI_120 : Shift_Left2
      port map (Din(31 downto 0)=>XLXN_1022(31 downto 0),
                Dout(31 downto 0)=>XLXN_759(31 downto 0));
   
   XLXI_121 : ALU_Control
      port map (Cin(3 downto 0)=>ALUOp(3 downto 0),
                Din(5 downto 0)=>inst_out(5 downto 0),
                Dout(3 downto 0)=>XLXN_817(3 downto 0),
                JumpR=>JumpR);
   
   XLXI_122 : Shift_Left2_jump
      port map (Din(25 downto 0)=>inst_out(25 downto 0),
                Dout(27 downto 0)=>XLXN_834(27 downto 0));
   
   XLXI_123 : JumpAddress
      port map (A(3 downto 0)=>XLXN_837(31 downto 28),
                B(27 downto 0)=>XLXN_834(27 downto 0),
                Cout(31 downto 0)=>XLXN_832(31 downto 0));
   
   XLXI_124 : MUX2to1_32bit
      port map (A(31 downto 0)=>Output_DUMMY(31 downto 0),
                B(31 downto 0)=>XLXN_837(31 downto 0),
                sel=>Jal,
                C(31 downto 0)=>XLXN_825(31 downto 0));
   
   XLXI_207 : MUX2to1_32bit
      port map (A(31 downto 0)=>XLXN_921(31 downto 0),
                B(31 downto 0)=>XLXN_1056(31 downto 0),
                sel=>MemRead,
                C(31 downto 0)=>Output_DUMMY(31 downto 0));
   
   XLXI_208 : MeMIO_MUSER_Datapath
      port map (Alu_out(31 downto 0)=>Alu_output_DUMMY(31 downto 0),
                Clock=>Clock,
                Data(31 downto 0)=>Reg_DUMMY(31 downto 0),
                Din(7 downto 0)=>Din(7 downto 0),
                OPCode(3 downto 0)=>ALUOp(3 downto 0),
                ReadData(31 downto 0)=>ReadData(31 downto 0),
                Reset=>Reset,
                Dout(31 downto 0)=>Dout(31 downto 0),
                MUXin(31 downto 0)=>XLXN_1056(31 downto 0));
   
end BEHAVIORAL;


