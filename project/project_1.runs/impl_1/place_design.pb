
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35ti2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35ti2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Combinatorial Loop Alert: 1 LUT cells form a combinatorial loop. This can create a race condition. Timing analysis may not be accurate. The preferred resolution is to modify the design to remove combinatorial logic loops. If the loop is known and understood, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint on any one of the nets in the loop: 'set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <myHier/myNet>]'. One net in the loop is %s. Please evaluate your design. The cells in the loop are: %s.%s*DRC2B
 ",

AN_OBUF[2]
AN_OBUF[2]2default:default2default:default2b
 "L
Seven_seg_OBUF[1]_inst_i_2	Seven_seg_OBUF[1]_inst_i_22default:default2default:default2C
 +DRC|Netlist|Design Level|Combinatorial Loop2default:default8ZLUTLP-1h px? 
?
?Combinatorial Loop Alert: 1 LUT cells form a combinatorial loop. This can create a race condition. Timing analysis may not be accurate. The preferred resolution is to modify the design to remove combinatorial logic loops. If the loop is known and understood, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint on any one of the nets in the loop: 'set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <myHier/myNet>]'. One net in the loop is %s. Please evaluate your design. The cells in the loop are: %s.%s*DRC2j
 "T
Seven_seg_OBUF[1]_inst_i_3_n_0Seven_seg_OBUF[1]_inst_i_3_n_02default:default2default:default2b
 "L
Seven_seg_OBUF[1]_inst_i_3	Seven_seg_OBUF[1]_inst_i_32default:default2default:default2C
 +DRC|Netlist|Design Level|Combinatorial Loop2default:default8ZLUTLP-1h px? 
?
?Combinatorial Loop Alert: 1 LUT cells form a combinatorial loop. This can create a race condition. Timing analysis may not be accurate. The preferred resolution is to modify the design to remove combinatorial logic loops. If the loop is known and understood, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint on any one of the nets in the loop: 'set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <myHier/myNet>]'. One net in the loop is %s. Please evaluate your design. The cells in the loop are: %s.%s*DRC2R
 "<
clk/f_reduction[0]clk/f_reduction[0]2default:default2default:default2b
 "L
clk/f_reduction0_carry_i_1	clk/f_reduction0_carry_i_12default:default2default:default2C
 +DRC|Netlist|Design Level|Combinatorial Loop2default:default8ZLUTLP-1h px? 
?
?Combinatorial Loop Alert: 2 LUT cells form a combinatorial loop. This can create a race condition. Timing analysis may not be accurate. The preferred resolution is to modify the design to remove combinatorial logic loops. If the loop is known and understood, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint on any one of the nets in the loop: 'set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <myHier/myNet>]'. One net in the loop is %s. Please evaluate your design. The cells in the loop are: %s.%s*DRC2B
 ",

AN_OBUF[2]
AN_OBUF[2]2default:default2default:default2?
 "L
Seven_seg_OBUF[1]_inst_i_2	Seven_seg_OBUF[1]_inst_i_22default:default"L
Seven_seg_OBUF[1]_inst_i_3	Seven_seg_OBUF[1]_inst_i_32default:default2default:default2C
 +DRC|Netlist|Design Level|Combinatorial Loop2default:default8ZLUTLP-1h px? 
?
?Combinatorial Loop Alert: 4 LUT cells form a combinatorial loop. This can create a race condition. Timing analysis may not be accurate. The preferred resolution is to modify the design to remove combinatorial logic loops. If the loop is known and understood, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint on any one of the nets in the loop: 'set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <myHier/myNet>]'. One net in the loop is %s. Please evaluate your design. The cells in the loop are: %s.%s*DRC2X
 "B
clk/clk_o_reg_i_2_n_0clk/clk_o_reg_i_2_n_02default:default2default:default2?
 ":
clk/clk_o_reg_i_2	clk/clk_o_reg_i_22default:default":
clk/clk_o_reg_i_3	clk/clk_o_reg_i_32default:default":
clk/clk_o_reg_i_4	clk/clk_o_reg_i_42default:default":
clk/clk_o_reg_i_5	clk/clk_o_reg_i_52default:default2default:default2C
 +DRC|Netlist|Design Level|Combinatorial Loop2default:default8ZLUTLP-1h px? 
k
DRC finished with %s
79*	vivadotcl21
0 Errors, 5 Critical Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1590.5662default:default2
0.0002default:defaultZ17-268h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: e62862a2
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.006 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1590.5662default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 1518dfc54
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.080 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 158de5ee2
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.179 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 158de5ee2
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.180 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 158de5ee2
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.183 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 158de5ee2
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.184 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
2.2 2default:default25
!Update Timing before SLR Path Opt2default:defaultZ18-101h px? 
W
BPhase 2.2 Update Timing before SLR Path Opt | Checksum: 158de5ee2
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.185 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
x

Phase %s%s
101*constraints2
2.3 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px? 
K
6Phase 2.3 Global Placement Core | Checksum: 167754ba4
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.806 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 167754ba4
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.808 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 167754ba4
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.810 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1c8f1faaa
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.815 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1ec031244
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.824 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1ec031244
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.824 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 1b502b791
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.945 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
G
2Phase 3.6 Re-assign LUT pins | Checksum: de260631
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.952 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
S
>Phase 3.7 Pipeline Register Optimization | Checksum: de260631
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.953 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
C
.Phase 3 Detail Placement | Checksum: de260631
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.954 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
M
8Phase 4.1 Post Commit Optimization | Checksum: de260631
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.956 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
K
6Phase 4.2 Post Placement Cleanup | Checksum: de260631
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.958 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 


Phase %s%s
101*constraints2
4.3.1 2default:default2.
Print Estimated Congestion2default:defaultZ18-101h px? 
?
'Post-Placement Estimated Congestion %s
38*	placeflow2?
?
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                1x1|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|
2default:defaultZ30-612h px? 
Q
<Phase 4.3.1 Print Estimated Congestion | Checksum: de260631
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.959 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
E
0Phase 4.3 Placer Reporting | Checksum: de260631
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.960 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1590.5662default:default2
0.0002default:defaultZ17-268h px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.961 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
[
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: de260631
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.961 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
=
(Ending Placer Task | Checksum: b1194ddc
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.961 . Memory (MB): peak = 1590.566 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432default:default2
12default:default2
52default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0402default:default2
1590.5662default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2j
VC:/Users/filip/OneDrive/Plocha/Lab_12/project_123/project_1.runs/impl_1/top_placed.dcp2default:defaultZ17-1381h px? 
^
%s4*runtcl2B
.Executing : report_io -file top_io_placed.rpt
2default:defaulth px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.042 . Memory (MB): peak = 1590.566 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2r
^Executing : report_utilization -file top_utilization_placed.rpt -pb top_utilization_placed.pb
2default:defaulth px? 
{
%s4*runtcl2_
KExecuting : report_control_sets -verbose -file top_control_sets_placed.rpt
2default:defaulth px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.002 . Memory (MB): peak = 1590.566 ; gain = 0.000
*commonh px? 


End Record