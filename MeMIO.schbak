<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="MUXin(31:0)" />
        <signal name="XLXN_7(31:0)" />
        <signal name="Din(7:0)" />
        <signal name="ReadData(31:0)" />
        <signal name="Dout(31:0)" />
        <signal name="Data(31:0)" />
        <signal name="Clock" />
        <signal name="XLXN_49" />
        <signal name="Alu_out(31:0)" />
        <signal name="OPCode(3:0)" />
        <signal name="XLXN_55" />
        <signal name="Reset" />
        <port polarity="Output" name="MUXin(31:0)" />
        <port polarity="Input" name="Din(7:0)" />
        <port polarity="Input" name="ReadData(31:0)" />
        <port polarity="Output" name="Dout(31:0)" />
        <port polarity="Input" name="Data(31:0)" />
        <port polarity="Input" name="Clock" />
        <port polarity="Input" name="Alu_out(31:0)" />
        <port polarity="Input" name="OPCode(3:0)" />
        <port polarity="Input" name="Reset" />
        <blockdef name="zero_ex">
            <timestamp>2016-4-23T18:55:16</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="Mem_Control">
            <timestamp>2016-4-24T5:37:27</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="MUX2to1_32bit" name="XLXI_3">
            <blockpin signalname="XLXN_49" name="sel" />
            <blockpin signalname="XLXN_7(31:0)" name="A(31:0)" />
            <blockpin signalname="ReadData(31:0)" name="B(31:0)" />
            <blockpin signalname="MUXin(31:0)" name="C(31:0)" />
        </block>
        <block symbolname="PC" name="XLXI_8">
            <blockpin signalname="Clock" name="Clk" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_55" name="En" />
            <blockpin signalname="Data(31:0)" name="Din(31:0)" />
            <blockpin signalname="Dout(31:0)" name="Dout(31:0)" />
        </block>
        <block symbolname="zero_ex" name="XLXI_2">
            <blockpin signalname="Din(7:0)" name="Din(7:0)" />
            <blockpin signalname="XLXN_7(31:0)" name="Dout(31:0)" />
        </block>
        <block symbolname="Mem_Control" name="XLXI_9">
            <blockpin signalname="Alu_out(31:0)" name="Alu_out(31:0)" />
            <blockpin signalname="OPCode(3:0)" name="OPCode(3:0)" />
            <blockpin signalname="XLXN_49" name="Mux_Sel" />
            <blockpin signalname="XLXN_55" name="PC_En" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <branch name="MUXin(31:0)">
            <wire x2="2224" y1="1280" y2="1280" x1="2176" />
        </branch>
        <branch name="XLXN_7(31:0)">
            <wire x2="1840" y1="1344" y2="1344" x1="1488" />
        </branch>
        <branch name="Din(7:0)">
            <wire x2="1104" y1="1344" y2="1344" x1="688" />
        </branch>
        <branch name="ReadData(31:0)">
            <wire x2="1840" y1="1408" y2="1408" x1="784" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1280" name="MUXin(31:0)" orien="R0" />
        <branch name="XLXN_49">
            <wire x2="1824" y1="608" y2="608" x1="1536" />
            <wire x2="1824" y1="608" y2="1280" x1="1824" />
            <wire x2="1840" y1="1280" y2="1280" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="928" y="608" name="Alu_out(31:0)" orien="R180" />
        <iomarker fontsize="28" x="704" y="832" name="Clock" orien="R180" />
        <iomarker fontsize="28" x="752" y="960" name="Data(31:0)" orien="R180" />
        <iomarker fontsize="28" x="688" y="1344" name="Din(7:0)" orien="R180" />
        <iomarker fontsize="28" x="784" y="1408" name="ReadData(31:0)" orien="R180" />
        <iomarker fontsize="28" x="736" y="896" name="Reset" orien="R180" />
        <branch name="Alu_out(31:0)">
            <wire x2="1152" y1="608" y2="608" x1="928" />
        </branch>
        <branch name="OPCode(3:0)">
            <wire x2="1152" y1="672" y2="672" x1="880" />
        </branch>
        <iomarker fontsize="28" x="880" y="672" name="OPCode(3:0)" orien="R180" />
        <instance x="1840" y="1440" name="XLXI_3" orien="R0">
        </instance>
        <branch name="Dout(31:0)">
            <wire x2="1584" y1="832" y2="832" x1="1568" />
            <wire x2="2064" y1="832" y2="832" x1="1584" />
            <wire x2="2080" y1="832" y2="832" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2080" y="832" name="Dout(31:0)" orien="R0" />
        <instance x="1104" y="1376" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_55">
            <wire x2="1184" y1="1024" y2="1024" x1="1168" />
            <wire x2="1168" y1="1024" y2="1120" x1="1168" />
            <wire x2="1648" y1="1120" y2="1120" x1="1168" />
            <wire x2="1648" y1="672" y2="672" x1="1536" />
            <wire x2="1648" y1="672" y2="1120" x1="1648" />
        </branch>
        <branch name="Data(31:0)">
            <wire x2="768" y1="960" y2="960" x1="752" />
            <wire x2="1184" y1="960" y2="960" x1="768" />
        </branch>
        <branch name="Reset">
            <wire x2="752" y1="896" y2="896" x1="736" />
            <wire x2="1184" y1="896" y2="896" x1="752" />
        </branch>
        <branch name="Clock">
            <wire x2="720" y1="832" y2="832" x1="704" />
            <wire x2="1184" y1="832" y2="832" x1="720" />
        </branch>
        <instance x="1184" y="992" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1152" y="704" name="XLXI_9" orien="R0">
        </instance>
    </sheet>
</drawing>