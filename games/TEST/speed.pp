6	START: 
7		CLS 
8		LD I , SPEED_TEST 
9		LD V0 , 0 
10		LD V1 , 0 
11		PRT V0 , V1 
12		LD V3 , 60 
13		LD V0 , 0 
14		LD DT , V3 
15	LOOP: 
16		ADD V0 , 1 
17		LD V3 , DT 
18		SE V3 , 0 
19		JP LOOP 
20		LD V4 , 0 
21		LD V5 , 8 
22		CALL IMPRIME 
23		LD V2 , 60 
24		LD DT , V2 
25		LD V2 , DT 
26		SE V2 , 0 
27		JP . -2 
28		LD V0 , 32 
29		SKP V0 
30		JP START 
31		EXIT 
37	IMPRIME: 
38		LD I , BCD 
39		LD B , V0 
40		LD V3 , 0 
41	IMP_LOOP: 
42		LD I , BCD 
43		ADD I , V3 
44		LD V0 , [ I ] 
45		LD F , V0 
46		DRW V4 , V5 , 5 
47		ADD V4 , 4 
48		ADD V3 , 1 
49		SE V3 , 3 
50		JP IMP_LOOP 
51		RET 
57	SPEED_TEST: 
58		ASCII "speed test"
60	BCD: 
61		DB 0 , 0 , 0 
