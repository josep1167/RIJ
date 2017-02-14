<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="carryout" />
        <signal name="zero" />
        <signal name="overflow" />
        <signal name="XLXN_469(31:0)" />
        <signal name="ALUSrc" />
        <signal name="XLXN_765(31:0)" />
        <signal name="Reset" />
        <signal name="MemWrite" />
        <signal name="ReadData(31:0)" />
        <signal name="XLXN_817(3:0)" />
        <signal name="MemtoReg" />
        <signal name="ALUOp(3:0)" />
        <signal name="inst_out(5:0)" />
        <signal name="JumpR" />
        <signal name="XLXN_766(31:0)" />
        <signal name="XLXN_922" />
        <signal name="Reg(31:0)" />
        <signal name="inst_out(31:0)" />
        <signal name="pcout(31:0)" />
        <signal name="XLXN_920(31:0)" />
        <signal name="inst_out(15:0)" />
        <signal name="Clock" />
        <signal name="Jal" />
        <signal name="XLXN_921(31:0)" />
        <signal name="XLXN_825(31:0)" />
        <signal name="inst_out(15:11)" />
        <signal name="RegDst(1:0)" />
        <signal name="inst_out(20:16)" />
        <signal name="RegWrite" />
        <signal name="inst_out(25:21)" />
        <signal name="XLXN_156(4:0)" />
        <signal name="XLXN_1022(31:0)" />
        <signal name="XLXN_20" />
        <signal name="XLXN_467(31:0)" />
        <signal name="XLXN_759(31:0)" />
        <signal name="inst_out(25:0)" />
        <signal name="XLXN_834(27:0)" />
        <signal name="XLXN_837(31:28)" />
        <signal name="MemRead" />
        <signal name="Branch" />
        <signal name="inst_out(31:26)" />
        <signal name="Jump" />
        <signal name="XLXN_791" />
        <signal name="XLXN_837(31:0)" />
        <signal name="XLXN_832(31:0)" />
        <signal name="XLXN_828(31:0)" />
        <signal name="Dout(31:0)" />
        <signal name="Din(7:0)" />
        <signal name="Alu_output(31:0)" />
        <signal name="Output(31:0)" />
        <signal name="XLXN_1056(31:0)" />
        <port polarity="Output" name="carryout" />
        <port polarity="Output" name="zero" />
        <port polarity="Output" name="overflow" />
        <port polarity="Input" name="Reset" />
        <port polarity="Output" name="Reg(31:0)" />
        <port polarity="Output" name="pcout(31:0)" />
        <port polarity="Input" name="Clock" />
        <port polarity="Output" name="Dout(31:0)" />
        <port polarity="Input" name="Din(7:0)" />
        <port polarity="Output" name="Alu_output(31:0)" />
        <port polarity="Output" name="Output(31:0)" />
        <blockdef name="PC">
            <timestamp>2016-4-23T18:55:42</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="PCADD">
            <timestamp>2016-2-25T21:55:3</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="instmem">
            <timestamp>2016-4-14T21:41:44</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="regfile">
            <timestamp>2016-3-24T3:38:3</timestamp>
            <rect width="368" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-364" height="24" />
            <line x2="496" y1="-352" y2="-352" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="MUX2to1_5bit">
            <timestamp>2016-4-21T21:6:26</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="272" y="-60" height="24" />
            <line x2="336" y1="-48" y2="-48" x1="272" />
            <rect width="208" x="64" y="-120" height="180" />
        </blockdef>
        <blockdef name="Control">
            <timestamp>2016-4-24T5:58:30</timestamp>
            <line x2="384" y1="608" y2="608" x1="320" />
            <line x2="384" y1="544" y2="544" x1="320" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <line x2="384" y1="352" y2="352" x1="320" />
            <line x2="384" y1="416" y2="416" x1="320" />
            <rect width="64" x="320" y="468" height="24" />
            <line x2="384" y1="480" y2="480" x1="320" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="256" x="64" y="0" height="636" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2016-3-31T22:16:15</timestamp>
            <rect width="288" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="MUX2to1_32bit">
            <timestamp>2016-4-23T18:55:25</timestamp>
            <rect width="208" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="336" y1="-160" y2="-160" x1="272" />
            <rect width="64" x="272" y="-172" height="24" />
        </blockdef>
        <blockdef name="Sign_extend">
            <timestamp>2016-3-24T3:37:9</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="AND_Gate">
            <timestamp>2016-3-24T4:29:43</timestamp>
            <rect width="128" x="64" y="-116" height="100" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="256" y1="-64" y2="-64" x1="192" />
        </blockdef>
        <blockdef name="datamem">
            <timestamp>2016-4-23T19:11:10</timestamp>
            <rect width="368" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-300" height="24" />
            <line x2="496" y1="-288" y2="-288" x1="432" />
        </blockdef>
        <blockdef name="Add">
            <timestamp>2016-4-23T2:31:41</timestamp>
            <rect width="208" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="272" y="-76" height="24" />
            <line x2="336" y1="-64" y2="-64" x1="272" />
        </blockdef>
        <blockdef name="Shift_Left2">
            <timestamp>2016-3-24T13:33:4</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ALU_Control">
            <timestamp>2016-4-26T22:23:21</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="240" x="64" y="-64" height="124" />
            <line x2="368" y1="32" y2="32" x1="304" />
            <rect width="64" x="304" y="-44" height="24" />
            <line x2="368" y1="-32" y2="-32" x1="304" />
        </blockdef>
        <blockdef name="Shift_Left2_jump">
            <timestamp>2016-3-31T21:38:53</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="JumpAddress">
            <timestamp>2016-3-31T21:57:2</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="MeMIO">
            <timestamp>2016-4-24T6:9:31</timestamp>
            <rect width="320" x="64" y="-448" height="448" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-428" height="24" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <block symbolname="PCADD" name="XLXI_114">
            <blockpin signalname="pcout(31:0)" name="Din(31:0)" />
            <blockpin signalname="XLXN_837(31:0)" name="Dout(31:0)" />
        </block>
        <block symbolname="PC" name="XLXI_112">
            <blockpin signalname="Clock" name="Clk" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_922" name="En" />
            <blockpin signalname="XLXN_920(31:0)" name="Din(31:0)" />
            <blockpin signalname="pcout(31:0)" name="Dout(31:0)" />
        </block>
        <block symbolname="ALU_Control" name="XLXI_121">
            <blockpin signalname="inst_out(5:0)" name="Din(5:0)" />
            <blockpin signalname="ALUOp(3:0)" name="Cin(3:0)" />
            <blockpin signalname="JumpR" name="JumpR" />
            <blockpin signalname="XLXN_817(3:0)" name="Dout(3:0)" />
        </block>
        <block symbolname="instmem" name="instmem_c">
            <blockpin signalname="pcout(31:0)" name="read_inst(31:0)" />
            <blockpin signalname="inst_out(31:0)" name="inst_out(31:0)" />
        </block>
        <block symbolname="constant" name="XLXI_125">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_922" name="O" />
        </block>
        <block symbolname="MUX2to1_32bit" name="XLXI_124">
            <blockpin signalname="Jal" name="sel" />
            <blockpin signalname="Output(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_837(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_825(31:0)" name="C(31:0)" />
        </block>
        <block symbolname="MUX2to1_5bit" name="Muxleft">
            <blockpin signalname="inst_out(20:16)" name="A(4:0)" />
            <blockpin signalname="inst_out(15:11)" name="B(4:0)" />
            <blockpin signalname="RegDst(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_156(4:0)" name="C(4:0)" />
        </block>
        <block symbolname="regfile" name="Regfile_c">
            <blockpin signalname="Clock" name="clock" />
            <blockpin signalname="RegWrite" name="RegWrite" />
            <blockpin signalname="inst_out(25:21)" name="read_reg1(4:0)" />
            <blockpin signalname="inst_out(20:16)" name="read_reg2(4:0)" />
            <blockpin signalname="XLXN_156(4:0)" name="write_reg(4:0)" />
            <blockpin signalname="XLXN_825(31:0)" name="write_data(31:0)" />
            <blockpin signalname="XLXN_467(31:0)" name="read_data1(31:0)" />
            <blockpin signalname="Reg(31:0)" name="read_data2(31:0)" />
        </block>
        <block symbolname="Sign_extend" name="XLXI_34">
            <blockpin signalname="inst_out(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_1022(31:0)" name="Dout(31:0)" />
        </block>
        <block symbolname="ALU" name="Alu_c">
            <blockpin signalname="XLXN_20" name="Carryin" />
            <blockpin signalname="XLXN_467(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_469(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_817(3:0)" name="ALUCntl(3:0)" />
            <blockpin signalname="zero" name="Zero" />
            <blockpin signalname="carryout" name="Carryout" />
            <blockpin signalname="overflow" name="Overflow" />
            <blockpin signalname="Alu_output(31:0)" name="ALUOut(31:0)" />
        </block>
        <block symbolname="MUX2to1_32bit" name="MuxMid">
            <blockpin signalname="ALUSrc" name="sel" />
            <blockpin signalname="Reg(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_1022(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_469(31:0)" name="C(31:0)" />
        </block>
        <block symbolname="constant" name="XLXI_8">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="Shift_Left2" name="XLXI_120">
            <blockpin signalname="XLXN_1022(31:0)" name="Din(31:0)" />
            <blockpin signalname="XLXN_759(31:0)" name="Dout(31:0)" />
        </block>
        <block symbolname="MUX2to1_32bit" name="Mux_Spec">
            <blockpin signalname="JumpR" name="sel" />
            <blockpin signalname="XLXN_766(31:0)" name="A(31:0)" />
            <blockpin signalname="Output(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_920(31:0)" name="C(31:0)" />
        </block>
        <block symbolname="JumpAddress" name="XLXI_123">
            <blockpin signalname="XLXN_834(27:0)" name="B(27:0)" />
            <blockpin signalname="XLXN_837(31:28)" name="A(3:0)" />
            <blockpin signalname="XLXN_832(31:0)" name="Cout(31:0)" />
        </block>
        <block symbolname="Shift_Left2_jump" name="XLXI_122">
            <blockpin signalname="inst_out(25:0)" name="Din(25:0)" />
            <blockpin signalname="XLXN_834(27:0)" name="Dout(27:0)" />
        </block>
        <block symbolname="Control" name="Control_c">
            <blockpin signalname="inst_out(31:26)" name="opcode(5:0)" />
            <blockpin signalname="Jump" name="Jump" />
            <blockpin signalname="Jal" name="Jal" />
            <blockpin signalname="RegWrite" name="RegWrite" />
            <blockpin signalname="Branch" name="Branch" />
            <blockpin signalname="MemRead" name="MemRead" />
            <blockpin signalname="MemtoReg" name="MemtoReg" />
            <blockpin signalname="MemWrite" name="MemWrite" />
            <blockpin signalname="ALUSrc" name="ALUSrc" />
            <blockpin signalname="ALUOp(3:0)" name="ALUOp(3:0)" />
            <blockpin signalname="RegDst(1:0)" name="RegDst(1:0)" />
        </block>
        <block symbolname="MUX2to1_32bit" name="XLXI_103">
            <blockpin signalname="XLXN_791" name="sel" />
            <blockpin signalname="XLXN_837(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_765(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_828(31:0)" name="C(31:0)" />
        </block>
        <block symbolname="AND_Gate" name="XLXI_100">
            <blockpin signalname="Branch" name="A" />
            <blockpin signalname="zero" name="B" />
            <blockpin signalname="XLXN_791" name="C" />
        </block>
        <block symbolname="Add" name="XLXI_108">
            <blockpin signalname="XLXN_837(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_759(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_765(31:0)" name="C(31:0)" />
        </block>
        <block symbolname="MUX2to1_32bit" name="Mux_jump">
            <blockpin signalname="Jump" name="sel" />
            <blockpin signalname="XLXN_828(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_832(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_766(31:0)" name="C(31:0)" />
        </block>
        <block symbolname="MUX2to1_32bit" name="XLXI_207">
            <blockpin signalname="MemRead" name="sel" />
            <blockpin signalname="XLXN_921(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_1056(31:0)" name="B(31:0)" />
            <blockpin signalname="Output(31:0)" name="C(31:0)" />
        </block>
        <block symbolname="MeMIO" name="XLXI_208">
            <blockpin signalname="Din(7:0)" name="Din(7:0)" />
            <blockpin signalname="ReadData(31:0)" name="ReadData(31:0)" />
            <blockpin signalname="Reg(31:0)" name="Data(31:0)" />
            <blockpin signalname="Clock" name="Clock" />
            <blockpin signalname="Alu_output(31:0)" name="Alu_out(31:0)" />
            <blockpin signalname="ALUOp(3:0)" name="OPCode(3:0)" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Dout(31:0)" name="Dout(31:0)" />
            <blockpin signalname="XLXN_1056(31:0)" name="MUXin(31:0)" />
        </block>
        <block symbolname="datamem" name="Datamem_c">
            <blockpin signalname="Clock" name="clock" />
            <blockpin signalname="MemWrite" name="MemWrite" />
            <blockpin signalname="MemRead" name="MemRead" />
            <blockpin signalname="Alu_output(31:0)" name="address(31:0)" />
            <blockpin signalname="Reg(31:0)" name="write_data(31:0)" />
            <blockpin signalname="ReadData(31:0)" name="Read_data(31:0)" />
        </block>
        <block symbolname="MUX2to1_32bit" name="MUXright">
            <blockpin signalname="MemtoReg" name="sel" />
            <blockpin signalname="Alu_output(31:0)" name="A(31:0)" />
            <blockpin signalname="ReadData(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_921(31:0)" name="C(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="carryout">
            <wire x2="3456" y1="2128" y2="2128" x1="3408" />
        </branch>
        <branch name="zero">
            <wire x2="3456" y1="2064" y2="2064" x1="3408" />
        </branch>
        <branch name="overflow">
            <wire x2="3456" y1="2192" y2="2192" x1="3408" />
        </branch>
        <branch name="XLXN_469(31:0)">
            <wire x2="2992" y1="2192" y2="2192" x1="2864" />
        </branch>
        <branch name="ALUSrc">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="2192" type="branch" />
            <wire x2="2528" y1="2192" y2="2192" x1="2512" />
        </branch>
        <branch name="XLXN_765(31:0)">
            <wire x2="3728" y1="816" y2="816" x1="3328" />
            <wire x2="3728" y1="768" y2="816" x1="3728" />
            <wire x2="3952" y1="768" y2="768" x1="3728" />
        </branch>
        <instance x="768" y="1536" name="XLXI_114" orien="R270">
        </instance>
        <branch name="Reset">
            <wire x2="272" y1="2384" y2="2384" x1="160" />
        </branch>
        <instance x="272" y="2480" name="XLXI_112" orien="R0">
        </instance>
        <branch name="ReadData(31:0)">
            <wire x2="4416" y1="2064" y2="2064" x1="4336" />
        </branch>
        <branch name="XLXN_817(3:0)">
            <wire x2="2960" y1="2256" y2="2784" x1="2960" />
            <wire x2="2992" y1="2256" y2="2256" x1="2960" />
        </branch>
        <branch name="ALUOp(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="2848" type="branch" />
            <wire x2="2592" y1="2848" y2="2848" x1="2416" />
        </branch>
        <branch name="inst_out(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="2784" type="branch" />
            <wire x2="2592" y1="2784" y2="2784" x1="2416" />
        </branch>
        <instance x="2592" y="2816" name="XLXI_121" orien="R0">
        </instance>
        <branch name="JumpR">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="2848" type="branch" />
            <wire x2="3040" y1="2848" y2="2848" x1="2960" />
        </branch>
        <branch name="JumpR">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4000" y="48" type="branch" />
            <wire x2="4000" y1="48" y2="48" x1="3904" />
        </branch>
        <branch name="XLXN_766(31:0)">
            <wire x2="4976" y1="112" y2="112" x1="3904" />
            <wire x2="4976" y1="112" y2="560" x1="4976" />
            <wire x2="4976" y1="560" y2="560" x1="4912" />
        </branch>
        <branch name="XLXN_922">
            <wire x2="272" y1="2512" y2="2512" x1="224" />
        </branch>
        <branch name="inst_out(31:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="2944" type="branch" />
            <wire x2="736" y1="2864" y2="2944" x1="736" />
        </branch>
        <branch name="pcout(31:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="736" y="2064" type="branch" />
            <wire x2="736" y1="1968" y2="1968" x1="624" />
            <wire x2="736" y1="1968" y2="2064" x1="736" />
            <wire x2="736" y1="2064" y2="2320" x1="736" />
            <wire x2="736" y1="2320" y2="2416" x1="736" />
            <wire x2="736" y1="2320" y2="2320" x1="656" />
            <wire x2="736" y1="1536" y2="1968" x1="736" />
        </branch>
        <instance x="768" y="2416" name="instmem_c" orien="M90">
        </instance>
        <instance x="80" y="2480" name="XLXI_125" orien="R0">
        </instance>
        <branch name="XLXN_920(31:0)">
            <wire x2="3568" y1="48" y2="48" x1="256" />
            <wire x2="256" y1="48" y2="2448" x1="256" />
            <wire x2="272" y1="2448" y2="2448" x1="256" />
        </branch>
        <branch name="inst_out(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1824" type="branch" />
            <wire x2="1808" y1="1824" y2="1824" x1="1488" />
        </branch>
        <branch name="Clock">
            <wire x2="272" y1="2320" y2="2320" x1="160" />
        </branch>
        <branch name="Jal">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="2992" type="branch" />
            <wire x2="1392" y1="2992" y2="2992" x1="1328" />
        </branch>
        <instance x="1392" y="3152" name="XLXI_124" orien="R0">
        </instance>
        <instance x="1392" y="2432" name="Muxleft" orien="R0">
        </instance>
        <instance x="1808" y="2448" name="Regfile_c" orien="R0">
        </instance>
        <branch name="inst_out(15:11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="2400" type="branch" />
            <wire x2="1392" y1="2400" y2="2400" x1="1296" />
        </branch>
        <branch name="RegDst(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="2464" type="branch" />
            <wire x2="1392" y1="2464" y2="2464" x1="1328" />
        </branch>
        <branch name="inst_out(20:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="2288" type="branch" />
            <wire x2="1328" y1="2288" y2="2288" x1="1264" />
            <wire x2="1808" y1="2288" y2="2288" x1="1328" />
            <wire x2="1328" y1="2288" y2="2336" x1="1328" />
            <wire x2="1392" y1="2336" y2="2336" x1="1328" />
        </branch>
        <branch name="Clock">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2096" type="branch" />
            <wire x2="1808" y1="2096" y2="2096" x1="1648" />
        </branch>
        <branch name="RegWrite">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="2160" type="branch" />
            <wire x2="1808" y1="2160" y2="2160" x1="1616" />
        </branch>
        <branch name="inst_out(25:21)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="2224" type="branch" />
            <wire x2="1808" y1="2224" y2="2224" x1="1520" />
        </branch>
        <branch name="XLXN_156(4:0)">
            <wire x2="1760" y1="2384" y2="2384" x1="1728" />
            <wire x2="1808" y1="2352" y2="2352" x1="1760" />
            <wire x2="1760" y1="2352" y2="2384" x1="1760" />
        </branch>
        <instance x="1808" y="1856" name="XLXI_34" orien="R0">
        </instance>
        <branch name="XLXN_1022(31:0)">
            <wire x2="2368" y1="1824" y2="1824" x1="2192" />
            <wire x2="2560" y1="1824" y2="1824" x1="2368" />
            <wire x2="2368" y1="1824" y2="2320" x1="2368" />
            <wire x2="2528" y1="2320" y2="2320" x1="2368" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2992" y1="2064" y2="2064" x1="2944" />
        </branch>
        <branch name="XLXN_467(31:0)">
            <wire x2="2320" y1="2096" y2="2096" x1="2304" />
            <wire x2="2320" y1="2096" y2="2128" x1="2320" />
            <wire x2="2992" y1="2128" y2="2128" x1="2320" />
        </branch>
        <instance x="2560" y="1856" name="XLXI_120" orien="R0">
        </instance>
        <branch name="XLXN_759(31:0)">
            <wire x2="2960" y1="1824" y2="1824" x1="2944" />
            <wire x2="2992" y1="848" y2="848" x1="2960" />
            <wire x2="2960" y1="848" y2="1824" x1="2960" />
        </branch>
        <instance x="3904" y="208" name="Mux_Spec" orien="M0">
        </instance>
        <branch name="inst_out(25:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="304" type="branch" />
            <wire x2="816" y1="304" y2="304" x1="512" />
        </branch>
        <branch name="XLXN_834(27:0)">
            <wire x2="1664" y1="304" y2="304" x1="1200" />
        </branch>
        <instance x="1664" y="400" name="XLXI_123" orien="R0">
        </instance>
        <branch name="XLXN_837(31:28)">
            <wire x2="1664" y1="368" y2="368" x1="1520" />
        </branch>
        <instance x="816" y="336" name="XLXI_122" orien="R0">
        </instance>
        <text x="1416" y="364">PCout(31-26)</text>
        <branch name="ALUSrc">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1232" type="branch" />
            <wire x2="1824" y1="1232" y2="1232" x1="1712" />
        </branch>
        <branch name="MemWrite">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1168" type="branch" />
            <wire x2="1824" y1="1168" y2="1168" x1="1712" />
        </branch>
        <branch name="MemtoReg">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1104" type="branch" />
            <wire x2="1824" y1="1104" y2="1104" x1="1712" />
        </branch>
        <branch name="MemRead">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1040" type="branch" />
            <wire x2="1824" y1="1040" y2="1040" x1="1712" />
        </branch>
        <branch name="RegDst(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="976" type="branch" />
            <wire x2="1824" y1="976" y2="976" x1="1712" />
        </branch>
        <branch name="Branch">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="912" type="branch" />
            <wire x2="1824" y1="912" y2="912" x1="1712" />
        </branch>
        <branch name="RegWrite">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="848" type="branch" />
            <wire x2="1824" y1="848" y2="848" x1="1712" />
        </branch>
        <branch name="inst_out(31:26)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="848" type="branch" />
            <wire x2="1328" y1="848" y2="848" x1="1232" />
        </branch>
        <branch name="ALUOp(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1296" type="branch" />
            <wire x2="1824" y1="1296" y2="1296" x1="1712" />
        </branch>
        <branch name="Jump">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1360" type="branch" />
            <wire x2="1824" y1="1360" y2="1360" x1="1712" />
        </branch>
        <branch name="Jal">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1424" type="branch" />
            <wire x2="1824" y1="1424" y2="1424" x1="1712" />
        </branch>
        <instance x="1328" y="816" name="Control_c" orien="R0">
        </instance>
        <branch name="zero">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="672" type="branch" />
            <wire x2="3408" y1="672" y2="672" x1="3360" />
        </branch>
        <branch name="Branch">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="608" type="branch" />
            <wire x2="3408" y1="608" y2="608" x1="3376" />
        </branch>
        <instance x="3952" y="800" name="XLXI_103" orien="R0">
        </instance>
        <branch name="XLXN_791">
            <wire x2="3952" y1="640" y2="640" x1="3664" />
        </branch>
        <instance x="3408" y="704" name="XLXI_100" orien="R0">
        </instance>
        <instance x="2992" y="880" name="XLXI_108" orien="R0">
        </instance>
        <branch name="XLXN_837(31:0)">
            <wire x2="736" y1="592" y2="1104" x1="736" />
            <wire x2="736" y1="1104" y2="1152" x1="736" />
            <wire x2="864" y1="1104" y2="1104" x1="736" />
            <wire x2="864" y1="1104" y2="3120" x1="864" />
            <wire x2="1392" y1="3120" y2="3120" x1="864" />
            <wire x2="2960" y1="592" y2="592" x1="736" />
            <wire x2="2960" y1="592" y2="704" x1="2960" />
            <wire x2="3952" y1="704" y2="704" x1="2960" />
            <wire x2="2960" y1="704" y2="784" x1="2960" />
            <wire x2="2992" y1="784" y2="784" x1="2960" />
        </branch>
        <branch name="XLXN_832(31:0)">
            <wire x2="4384" y1="304" y2="304" x1="2048" />
            <wire x2="4384" y1="304" y2="688" x1="4384" />
            <wire x2="4576" y1="688" y2="688" x1="4384" />
        </branch>
        <branch name="XLXN_828(31:0)">
            <wire x2="4304" y1="640" y2="640" x1="4288" />
            <wire x2="4576" y1="624" y2="624" x1="4304" />
            <wire x2="4304" y1="624" y2="640" x1="4304" />
        </branch>
        <branch name="Jump">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4496" y="560" type="branch" />
            <wire x2="4576" y1="560" y2="560" x1="4496" />
        </branch>
        <instance x="4576" y="720" name="Mux_jump" orien="R0">
        </instance>
        <branch name="Dout(31:0)">
            <wire x2="4592" y1="1104" y2="1104" x1="4496" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3936" y="1488" type="branch" />
            <wire x2="4048" y1="1488" y2="1488" x1="3936" />
        </branch>
        <branch name="ALUOp(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3936" y="1424" type="branch" />
            <wire x2="4048" y1="1424" y2="1424" x1="3936" />
        </branch>
        <branch name="Clock">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3936" y="1296" type="branch" />
            <wire x2="4048" y1="1296" y2="1296" x1="3936" />
        </branch>
        <branch name="Din(7:0)">
            <wire x2="4048" y1="1104" y2="1104" x1="3936" />
        </branch>
        <branch name="ReadData(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3936" y="1168" type="branch" />
            <wire x2="4048" y1="1168" y2="1168" x1="3936" />
        </branch>
        <branch name="Reg(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3920" y="1232" type="branch" />
            <wire x2="4048" y1="1232" y2="1232" x1="3920" />
        </branch>
        <iomarker fontsize="28" x="160" y="2320" name="Clock" orien="R180" />
        <iomarker fontsize="28" x="160" y="2384" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="624" y="1968" name="pcout(31:0)" orien="R180" />
        <iomarker fontsize="28" x="4592" y="1104" name="Dout(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3936" y="1104" name="Din(7:0)" orien="R180" />
        <instance x="4048" y="1520" name="XLXI_208" orien="R0">
        </instance>
        <branch name="MemRead">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4752" y="1632" type="branch" />
            <wire x2="4800" y1="1632" y2="1632" x1="4752" />
        </branch>
        <branch name="MemWrite">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3808" y="2128" type="branch" />
            <wire x2="3840" y1="2128" y2="2128" x1="3808" />
        </branch>
        <branch name="Clock">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="2064" type="branch" />
            <wire x2="3840" y1="2064" y2="2064" x1="3792" />
        </branch>
        <branch name="MemRead">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3808" y="2192" type="branch" />
            <wire x2="3840" y1="2192" y2="2192" x1="3808" />
        </branch>
        <branch name="MemtoReg">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4368" y="1936" type="branch" />
            <wire x2="4416" y1="1936" y2="1936" x1="4368" />
        </branch>
        <instance x="2528" y="2352" name="MuxMid" orien="R0">
        </instance>
        <instance x="2800" y="2032" name="XLXI_8" orien="R0">
        </instance>
        <instance x="2992" y="2288" name="Alu_c" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3456" y="2192" name="overflow" orien="R0" />
        <iomarker fontsize="28" x="3456" y="2128" name="carryout" orien="R0" />
        <iomarker fontsize="28" x="3456" y="2064" name="zero" orien="R0" />
        <instance x="3840" y="2352" name="Datamem_c" orien="R0">
        </instance>
        <instance x="4416" y="2096" name="MUXright" orien="R0">
        </instance>
        <branch name="XLXN_1056(31:0)">
            <wire x2="4592" y1="1488" y2="1488" x1="4496" />
            <wire x2="4592" y1="1488" y2="1760" x1="4592" />
            <wire x2="4800" y1="1760" y2="1760" x1="4592" />
        </branch>
        <branch name="XLXN_921(31:0)">
            <wire x2="4736" y1="1696" y2="1856" x1="4736" />
            <wire x2="4800" y1="1856" y2="1856" x1="4736" />
            <wire x2="4800" y1="1856" y2="1936" x1="4800" />
            <wire x2="4800" y1="1696" y2="1696" x1="4736" />
            <wire x2="4800" y1="1936" y2="1936" x1="4752" />
        </branch>
        <instance x="4800" y="1792" name="XLXI_207" orien="R0">
        </instance>
        <branch name="Reg(31:0)">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="2416" type="branch" />
            <wire x2="2464" y1="2416" y2="2416" x1="2304" />
            <wire x2="3152" y1="2416" y2="2416" x1="2464" />
            <wire x2="3360" y1="2416" y2="2416" x1="3152" />
            <wire x2="2528" y1="2256" y2="2256" x1="2464" />
            <wire x2="2464" y1="2256" y2="2416" x1="2464" />
            <wire x2="3152" y1="2320" y2="2416" x1="3152" />
            <wire x2="3840" y1="2320" y2="2320" x1="3152" />
        </branch>
        <branch name="Alu_output(31:0)">
            <wire x2="3616" y1="2256" y2="2256" x1="3408" />
            <wire x2="3840" y1="2256" y2="2256" x1="3616" />
            <wire x2="4048" y1="1360" y2="1360" x1="3616" />
            <wire x2="3616" y1="1360" y2="1792" x1="3616" />
            <wire x2="3616" y1="1792" y2="2000" x1="3616" />
            <wire x2="3616" y1="2000" y2="2256" x1="3616" />
            <wire x2="4416" y1="2000" y2="2000" x1="3616" />
            <wire x2="3696" y1="1792" y2="1792" x1="3616" />
        </branch>
        <branch name="Output(31:0)">
            <wire x2="1392" y1="3056" y2="3056" x1="1312" />
            <wire x2="1312" y1="3056" y2="3408" x1="1312" />
            <wire x2="5200" y1="3408" y2="3408" x1="1312" />
            <wire x2="5200" y1="176" y2="176" x1="3904" />
            <wire x2="5200" y1="176" y2="1632" x1="5200" />
            <wire x2="5200" y1="1632" y2="3408" x1="5200" />
            <wire x2="5264" y1="1632" y2="1632" x1="5200" />
            <wire x2="5200" y1="1632" y2="1632" x1="5136" />
        </branch>
        <iomarker fontsize="28" x="3696" y="1792" name="Alu_output(31:0)" orien="R0" />
        <iomarker fontsize="28" x="5264" y="1632" name="Output(31:0)" orien="R0" />
        <branch name="XLXN_825(31:0)">
            <wire x2="1792" y1="2992" y2="2992" x1="1728" />
            <wire x2="1808" y1="2416" y2="2416" x1="1792" />
            <wire x2="1792" y1="2416" y2="2992" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="3360" y="2416" name="Reg(31:0)" orien="R0" />
    </sheet>
</drawing>