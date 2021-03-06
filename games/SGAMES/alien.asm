	JP code_012
	DB #4A, #6F, #6E, #61, #73, #20, #4C, #69
	DB #6E, #64, #73, #74, #65, #64, #74, #00
code_012:
	HIGH
	JP code_08A
code_016:
	LD V4, 1
	LD I, data_310
	LD VB, 0
	LD VC, 59
code_01E:
	DRW VB, VC, 4
	ADD VB, 8
	SE VB, 128
	JP code_01E
	LD V8, 60
	LD I, data_308
	LD V9, 53
	DRW V8, V9, 6
	LD V3, 0
code_030:
	SNE V3, 0
	JP code_03A
	LD I, data_30E
	DRW V2, V3, 2
	LD V3, 0
code_03A:
	LD VC, V4
	ADD VC, 255
	LD VB, 3
	AND VC, VB
	LD VB, 0
code_044:
	SNE VC, 0
	JP code_04E
	ADD VB, 5
	ADD VC, 255
	JP code_044
code_04E:
	LD V1, 0
code_050:
	LD I, data_2EE
	ADD I, VB
	LD V0, [I]
	LD I, data_316
	ADD I, V1
	LD [I], V0
	ADD V1, 1
	ADD VB, 1
	SE V1, 6
	JP code_050
	LD VD, 8
	LD VE, 5
	LD V6, 0
	LD VA, 1
	LD I, data_316
	LD V0, VD
code_070:
	DRW V0, VE, 5
	ADD V0, 20
	SE V0, 108
	JP code_070
	CALL code_144
code_07A:
	CALL code_20E
	CALL code_0F6
	CALL code_184
	SNE VF, 66
	JP code_030
	CALL code_246
	SE V4, 99
	JP code_07A
code_08A:
	CLS
	LD I, data_294
	LD VD, 40
	LD VE, 10
	LD VC, 10
code_094:
	DRW VD, VE, 10
	ADD VD, 8
	ADD I, VC
	SE VD, 88
	JP code_094
	LD I, data_2D0
	LD VD, 52
	LD VE, 25
	LD VC, 5
code_0A6:
	DRW VD, VE, 5
	ADD VD, 8
	ADD I, VC
	SE VD, 76
	JP code_0A6
	LD VD, 45
	LD VE, 40
	LD VC, 5
code_0B6:
	DRW VD, VE, 5
	ADD VD, 8
	ADD I, VC
	SE VD, 69
	JP code_0B6
	LD I, data_315
	LD V0, [I]
	LD I, data_322
	LD B, V0
	LD VC, 0
code_0CA:
	LD I, data_322
	ADD I, VC
	LD V0, [I]
	LD F, V0
	DRW VD, VE, 5
	ADD VD, 5
	ADD VC, 1
	SE VC, 3
	JP code_0CA
	LD VC, 10
code_0DE:
	SKP VC
	JP code_0DE
	LD I, data_314
	LD V0, 0
	LD V1, 0
	LD [I], V1
	LD VC, 54
code_0EC:
	SCD 1
	ADD VC, 255
	SE VC, 0
	JP code_0EC
	JP code_016
code_0F6:
	SE V3, 0
	JP code_12A
	RND VC, #0F
	SE VC, 0
	JP code_128
	RND VC, #07
	ADD VC, 1
	SHR VC
	LD I, data_31C
	ADD I, VC
	LD V0, [I]
	SNE V0, 0
	JP code_128
	LD V2, VD
	LD V3, VE
	ADD V3, 5
code_116:
	SNE VC, 0
	JP code_120
	ADD V2, 20
	ADD VC, 255
	JP code_116
code_120:
	LD I, data_30E
	DRW V2, V3, 2
	SE VF, 0
	JP code_138
code_128:
	RET
code_12A:
	LD I, data_30E
	DRW V2, V3, 2
	ADD V3, 1
	SE V3, 58
	JP code_120
	LD V3, 0
	RET
code_138:
	LD VC, 53
	LD VB, V3
	SUB VB, VC
	SE VF, 0
	LD V4, 99
	RET
code_144:
	LD V0, V4
	ADD V0, 1
	SHR V0
	LD VC, 0
code_14C:
	LD I, data_31C
	ADD I, VC
	LD [I], V0
	ADD VC, 1
	SE VC, 5
	JP code_14C
	LD I, data_322
	LD B, V4
	CALL code_16C
	LD VC, 120
	LD DT, VC
code_162:
	LD VC, DT
	SE VC, 0
	JP code_162
	CALL code_16C
	RET
code_16C:
	LD I, data_323
	LD V0, [I]
	LD LF, V0
	LD VC, 55
	LD VB, 27
	DRW VC, VB, 10
	LD I, data_324
	LD V0, [I]
	LD LF, V0
	LD VC, 65
	DRW VC, VB, 10
	RET
code_184:
	SNE V6, 0
	JP code_200
	LD I, data_30E
	DRW V5, V6, 2
	ADD V6, 255
	SNE V6, 0
	JP code_200
	DRW V5, V6, 2
	SNE VF, 0
	JP code_200
	LD VC, VE
	ADD VC, 5
	SUB VC, V6
	SNE VF, 0
	JP code_202
	DRW V5, V6, 2
	ADD V5, 251
	LD V6, 0
	LD VC, VD
	LD V0, 0
code_1AC:
	LD VB, VC
	SUB VB, V5
	SE VF, 0
	JP code_1BA
	ADD VC, 20
	ADD V0, 1
	JP code_1AC
code_1BA:
	LD I, data_31C
	ADD I, V0
	LD V0, [I]
	ADD V0, 255
	LD [I], V0
	LD I, data_316
	SNE V0, 0
	DRW VC, VE, 5
	LD VC, 10
	LD ST, VC
	LD I, data_314
	LD V0, [I]
	LD VC, 255
	XOR V0, VC
	LD [I], V0
	SE V0, 0
	JP code_1E4
	LD I, data_315
	LD V0, [I]
	ADD V0, 1
	LD [I], V0
code_1E4:
	LD VC, 0
	LD VB, 0
code_1E8:
	LD I, data_31C
	ADD I, VC
	LD V0, [I]
	SE V0, 0
	ADD VB, 1
	ADD VC, 1
	SE VC, 5
	JP code_1E8
	SE VB, 0
	JP code_200
	ADD V4, 1
	LD VF, 66
code_200:
	RET
code_202:
	LD I, data_30E
	DRW V2, V3, 2
	DRW V5, V6, 2
	LD V3, 0
	LD V6, 0
	RET
code_20E:
	LD VB, 0
	LD VC, 3
	SKNP VC
	LD VB, 255
	LD VC, 12
	SKNP VC
	LD VB, 1
	SNE VB, 0
	JP code_232
	SNE V8, 1
	LD VB, 1
	SNE V8, 120
	LD VB, 255
	LD I, data_308
	LD V9, 53
	DRW V8, V9, 6
	ADD V8, VB
	DRW V8, V9, 6
code_232:
	LD VC, 10
	SKP VC
	JP code_244
	SE V6, 0
	JP code_244
	LD V5, V8
	LD V6, 53
	LD I, data_30E
	DRW V5, V6, 2
code_244:
	RET
code_246:
	LD V0, DT
	SE V0, 0
	JP code_264
	LD V0, 10
	LD DT, V0
	LD V7, 0
	SE VD, 33
	JP code_25A
	LD VA, 255
	JP code_260
code_25A:
	SE VD, 7
	JP code_262
	LD VA, 1
code_260:
	LD V7, 1
code_262:
	CALL code_266
code_264:
	RET
code_266:
	LD VB, VD
	LD VC, 0
code_26A:
	LD V9, VB
	LD V1, VE
	LD I, data_31C
	ADD I, VC
	LD V0, [I]
	SNE V0, 0
	JP code_282
	LD I, data_316
	DRW V9, V1, 5
	ADD V9, VA
	ADD V1, V7
	DRW V9, V1, 5
code_282:
	ADD VC, 1
	ADD VB, 20
	SE VC, 5
	JP code_26A
	ADD VD, VA
	ADD VE, V7
	SNE VE, 48
	LD V4, 99
	RET

data_294:
	DB #3C, #0C, #1E, #1E, #33, #33, #3F, #61
	DB #61, #F3, #1F, #0C, #0C, #0C, #0C, #0C
	DB #0C, #8C, #8C, #DF, #07, #01, #01, #01
	DB #01, #01, #01, #01, #61, #E7, #E7, #83
	DB #83, #83, #83, #83, #83, #83, #83, #E7
	DB #FB, #19, #01, #61, #E1, #61, #01, #01
	DB #19, #FB, #9F, #86, #C6, #E6, #E6, #B6
	DB #9E, #9E, #8E, #E6

data_2D0:
	DB #E4, #94, #E7, #90, #F7, #87, #80, #80
	DB #80, #87, #88, #88, #88, #88, #AF, #66
	DB #88, #48, #28, #C6, #4C, #AA, #AC, #AA
	DB #4A, #E0, #88, #C0, #88, #E0

data_2EE:
	DB #00, #00, #18, #FF, #3C, #00, #18, #3C
	DB #FF, #81, #42, #3C, #3C, #3C, #42, #3C
	DB #5A, #5A, #7E, #7E, #00, #00, #24, #3C
	DB #24, #00

data_308:
	DB #00, #18, #18, #3C, #7E, #FF

data_30E:
	DB #18, #18

data_310:
	DB #FF, #22, #55, #88

data_314:
	DB #00

data_315:
	DB #00

data_316:
	DB #00, #00, #00, #00, #00, #00

data_31C:
	DB #00, #00, #00, #00, #00, #00

data_322:
	DB #00

data_323:
	DB #00

data_324:
	DB #00, #00
