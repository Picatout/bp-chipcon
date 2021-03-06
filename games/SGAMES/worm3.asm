	JP code_01A

data_002:
	DB #57, #6F, #72, #6D

data_006:
	DB #00, #52, #42, #39, #32

data_00B:
	DB #00, #00, #00, #3E, #05, #00, #2B, #7C
	DB #00, #00, #06, #1E, #01, #00, #04
code_01A:
	HIGH
	CLS
	LD I, data_00B
	LD VE, [I]
	LD I, data_168
code_024:
	LD [I], V0
	ADD I, VC
	ADD V1, 1
	SE V1, 0
	JP code_024
	LD I, data_150
	DRW VA, VB, 3
code_032:
	DRW V4, V2, 1
	DRW V4, V3, 1
	ADD V4, 3
	SE V4, 122
	JP code_032
	LD I, data_15F
	LD V3, 4
code_040:
	DRW V3, V2, 9
	DRW V4, V2, 9
	ADD V2, 9
	SE V2, 63
	JP code_040
	LD I, data_006
	LD V0, [I]
	LD I, data_002
	LD B, V0
	LD V3, 46
	CALL code_0E4
	LD I, data_002
	LD B, V5
	CALL code_0E2
	CALL code_132
code_05E:
	LD I, data_15E
	DRW V7, V6, 1
	ADD V6, 254
	SE V6, 17
	JP code_05E
code_068:
	LD V3, 6
	LD DT, V3
	LD I, data_168
	ADD I, V8
	LD V0, [I]
	LD V4, V0
	LD V0, VA
	LD [I], V0
	LD I, data_268
	ADD I, V8
	LD V0, [I]
	LD V1, V0
	LD V0, VB
	LD [I], V0
	LD I, data_152
	SE V4, 0
	DRW V4, V1, 3
	LD I, data_148
	ADD I, V9
	LD V1, [I]
	LD I, data_155
	DRW VA, VB, 2
	ADD VA, V0
	ADD VB, V1
	LD I, data_150
	DRW VA, VB, 3
	SE VF, 0
	JP code_0FC
	RND V0, #0F
	SNE V0, 0
	CALL code_12E
code_0A6:
	ADD V8, 1
	SNE  V8, VE
	LD V8, 0
code_0AC:
	LD V1, 8
	SKP V1
	LD V6, 0
	SKP V1
	JP code_0C0
	SE V6, 0
	JP code_0C0
	ADD V9, 2
	LD V6, 6
	AND V9, V6
code_0C0:
	LD V1, 9
	SKP V1
	LD V7, 0
	SKP V1
	JP code_0D4
	SE V7, 0
	JP code_0D4
	ADD V9, 254
	LD V7, 6
	AND V9, V7
code_0D4:
	LD V3, DT
	SE V3, 0
	JP code_0AC
	JP code_068
code_0DC:
	CALL code_0E2
	LD I, data_002
	LD B, V5
code_0E2:
	LD V3, 0
code_0E4:
	LD V4, 124
	LD I, data_002
	LD V2, [I]
	LD F, V0
	DRW V4, V3, 5
	ADD V3, 6
	LD F, V1
	DRW V4, V3, 5
	ADD V3, 6
	LD F, V2
	DRW V4, V3, 5
	RET
code_0FC:
	CALL code_142
	LD I, data_150
	DRW VA, VB, 3
	DRW VA, VB, 3
	SE VF, 0
	JP code_112
	LD V4, 2
	LD ST, V4
	ADD V5, 1
	CALL code_0DC
	JP code_0A6
code_112:
	LD V4, 10
	LD ST, V4
	DRW VA, VB, 3
	SUB VA, V0
	SUB VB, V1
	LD I, data_155
	DRW VA, VB, 2
	LD I, data_006
	LD V0, [I]
	SUB V0, V5
	LD V0, V5
	SNE VF, 0
	LD [I], V0
code_12C:
	JP code_12C
code_12E:
	ADD VE, 1
	RET
code_132:
	LD I, data_157
code_134:
	RND VC, #7C
	ADD VC, 2
	RND VD, #3C
	ADD VD, 2
	DRW VC, VD, 7
	SNE VF, 0
	RET
code_142:
	LD I, data_157
	DRW VC, VD, 7
	JP code_134

data_148:
	DB #04, #00, #00, #FC, #FC, #00, #00, #04

data_150:
	DB #E0, #E0

data_152:
	DB #E0, #A0, #E0

data_155:
	DB #00, #40

data_157:
	DB #38, #7C, #DE, #FE, #FE, #7C, #38

data_15E:
	DB #F0

data_15F:
	DB #80, #80, #80, #80, #80, #80, #80, #80
	DB #80

data_168:
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
	DB #00, #00, #00, #00, #00, #00, #00, #00
data_268:
	DB #00
