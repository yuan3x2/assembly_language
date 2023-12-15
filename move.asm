INCLUDE Irvine32.inc

BoxWidth = 70	;設定寬
BoxHeight = 39	;設定長

.data
me byte "我", 0
space byte " ",0
boxTop    BYTE BoxWidth DUP("牆")
boxBody   BYTE "牆", (BoxWidth - 2) DUP('　'), "牆"		
boxBottom BYTE BoxWidth DUP("牆")

content BYTE "剛滿十八歲",0

startword BYTE   " _______　　　 　 _______",0
startword1 BYTE  "|　　　 | 　　　 |　　 　|",0
startword2 BYTE  "|　　　 |　　　  |　　　 |　　　　　　/　　　　　　 　/",0
startword3 BYTE  " _______　　　　  _______　　　　　　/　     　　　　/",0
startword4 BYTE  "|　　　 |　　　  |　　　 |　　　　　/　　\　　　　　/",0
startword5 BYTE  "|　　　 |　　　  |　　　 |　　　　 /　　　\　　　　/　　　　　　\",0
startword6 BYTE  " _______　　　　  _______　　　　 __________　　　　____________",0
startword7 BYTE  "|　　　　　　　　 　　　 |　　　　 \　　　/",0
startword8 BYTE  "|　 　　 ________　　　　|　　　　　\　　/　　　　  ____________",0
startword9 BYTE  "|　　 　 |　　 | 　　　　|　　　　　 \　/　　　　　|　　　　　　|",0
startword10 BYTE "|　 _____|___＿|______   |　　　　　　 /　　　　　 |　　　　　　|",0
startword11 BYTE "|　　 　 |　　 |　　　　 |　　　　　　/ \　　　　　|　　　　　　|",0
startword12 BYTE "|　　　  |　　 |　　　　 |　　　　　　　　　　　　 |____________|", 0
startword13 BYTE "        PUSH              P            TO              PLAY",0
startword14 BYTE "        PUSH             'P'         MOTHER           FUCKER",0
startword15 BYTE "  I       SAID        PUSH         'P'         YOU           BITXH",0
startword16 BYTE "PUSH     'P'",0
startcount BYTE 0

outputHandle DWORD 0
count DWORD 0
mexy COORD <20,10>
wallxy COORD <2,2>		
startxy COORD <40,10>	


;---------------------------------------- by py -----------------------------------
be_master PROTO
move_right PROTO
move_left PROTO
move_up PROTO
move_down PROTO

level3_1 BYTE   "組語期末報告還沒打完，但",0
level3_1_2 BYTE   "好餓喔OAO",0
level3_2  BYTE  "去宵夜街買仙草加芋圓吃好了",0
level3_3  BYTE  "宿舍還有柚子可以配",0
level3_4  BYTE  "欸欸，你們知道....",0
level3_5  BYTE  " : 蛤 什麼啦 話不要講一半!!!!",0
level3_6  BYTE  "----------------------------------",0
level3_7  BYTE  "任務一： ",0
level3_8  BYTE  "讓室友繼續講下去.... ",0
level3_9  BYTE  "-----------(移動以開始)------------",0
textcount BYTE 0 
textxy COORD <12,8>
mexy_3 COORD <12,8>

level3_10 BYTE   "齁好啦",0
level3_11 BYTE   "你們知道為什麼吃雞肉蛋吐司的時候",0
level3_12  BYTE  "蛋都會滑下去嗎 ",0
level3_13  BYTE  "因為時間久了就會蛋掉了: )",0
level3_14  BYTE  " : 你好了啦閉嘴",0
level3_15  BYTE  " 我要拿我們四個上次去買的鵝子(玩偶)砸你!!!",0
level3_16  BYTE  "----------------------------------",0
level3_17  BYTE  "任務二： ",0
level3_18  BYTE  "讓室友閉嘴(剛剛好就好...).... ",0
level3_19  BYTE  "-----------(移動以開始)------------",0

;----------------------------------------------------------------------------------
.code
main PROC

	; Get the console ouput handle
	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;因為 GetStdHandle 會存於eax，將eax內的值存入outputHandle
	call Clrscr
	
	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR startword,	; pointer to the top box line
	   sizeof startword -1,	; size of box line
	   startxy,	; coordinates of first char
	   ADDR count	; output count

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR startword1,	; pointer to the top box line
	   sizeof startword1 -1,	; size of box line
	   startxy,	; coordinates of first char
	   ADDR count	; output count

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR startword2,	; pointer to the top box line
	   sizeof startword2 -1,	; size of box line
	   startxy,	; coordinates of first char
	   ADDR count	; output count

	   inc startxy.y
	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR startword3,	; pointer to the top box line
	   sizeof startword3 -1,	; size of box line
	   startxy,	; coordinates of first char
	   ADDR count	; output count

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR startword4,	; pointer to the top box line
	   sizeof startword4 -1,	; size of box line
	   startxy,	; coordinates of first char
	   ADDR count	; output count

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR startword5,	; pointer to the top box line
	   sizeof startword5 -1,	; size of box line
	   startxy,	; coordinates of first char
	   ADDR count	; output count

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR startword6,	; pointer to the top box line
	   sizeof startword6 -1,	; size of box line
	   startxy,	; coordinates of first char
	   ADDR count	; output count

	   inc startxy.y
	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR startword7,	; pointer to the top box line
	   sizeof startword7 -1,	; size of box line
	   startxy,	; coordinates of first char
	   ADDR count	; output count

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR startword8,	; pointer to the top box line
	   sizeof startword8 -1,	; size of box line
	   startxy,	; coordinates of first char
	   ADDR count	; output count

	   inc startxy.y

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR startword9,	; pointer to the top box line
	   sizeof startword9 -1,	; size of box line
	   startxy,	; coordinates of first char
	   ADDR count	; output count

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR startword10,	; pointer to the top box line
	   sizeof startword10 -1,	; size of box line
	   startxy,	; coordinates of first char
	   ADDR count	; output count

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR startword11,	; pointer to the top box line
	   sizeof startword11 -1,	; size of box line
	   startxy,	; coordinates of first char
	   ADDR count	; output count

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	outputHandle,	; console output handle
	ADDR startword12,	; pointer to the top box line
	sizeof startword12 -1,	; size of box line
	startxy,	; coordinates of first char
	ADDR count	; output count

	add startxy.y, 3

	INVOKE WriteConsoleOutputCharacter,
	outputHandle,	; console output handle
	ADDR startword13,	; pointer to the top box line
	sizeof startword13 -1,	; size of box line
	startxy,	; coordinates of first char
	ADDR count	; output count

	add startxy.y, 3
	
	play:
		mov bl, startcount
		call ReadChar
		cmp al, "p"
		je draw_bg		;start game
		cmp bl, 1		
		je bitch		;srtcnt = 1
		cmp bl, 2
		je pp			;2次按錯後都是jmp pp
		jne hehe		;srtcnt = 2
		jmp play
	
	hehe:
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	; console output handle
			ADDR startword14,	; pointer to the top box line
			sizeof startword14 -1,	; size of box line
			startxy,	; coordinates of first char
			ADDR count	; output count
		inc startcount
		add startxy.y, 3

		jmp play

	bitch:
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	; console output handle
			ADDR startword15,	; pointer to the top box line
			sizeof startword15 -1,	; size of box line
			startxy,	; coordinates of first char
			ADDR count	; output count
		inc startcount
		mov byte ptr startxy.y, 3

		jmp play

	pp:
		call Random32 ; 生成 32 位元的隨機數，結果存儲在 eax 中
		mov al, ah

		mov byte ptr startxy.x, al

		inc startxy.y
		mov ax, startxy.y
		mov bl, 40
		div bl

		mov byte ptr startxy.y, ah

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	; console output handle
			ADDR startword16,	; pointer to the top box line
			sizeof startword16 -1,	; size of box line
			startxy,	; coordinates of first char
			ADDR count	; output count

		jmp play
;----------------------------------------------------- start -----------------------------------------------------------------------------

	draw_bg:
		call be_master

;---------------------------------------- draw wall -----------------------------------
		
;---------------------------------------- move me --------------------------------------

	exit
main ENDP

;---------------------------------------- 關卡三 成為諧音梗大師 PROC -----------------------------------

be_master PROC
	;------------------------ draw wall ----------------------
	INVOKE GetStdHandle, STD_OUTPUT_HANDLE		;重新invoke  get handle 會覆蓋掉之前的畫面
			mov outputHandle, eax
			call Clrscr

	INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR boxTop,	; pointer to the top box line
		   sizeof boxTop,	; size of box line
		   wallxy,	; coordinates of first char
		   ADDR count	; output count

		inc wallxy.y	; 移動到下一行增加y

		mov ecx, BoxHeight-2	

		L1:	push ecx	; save counter
	
			INVOKE WriteConsoleOutputCharacter,
			   outputHandle,	; console output handle
			   ADDR boxBody,	; pointer to the box body
			   sizeof boxTop,	; size of box line
			   wallxy,	; coordinates of first char
			   ADDR count	; output count

			inc wallxy.y	
			pop ecx	; restore counter
			loop L1		
	
	
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	
		   ADDR boxBottom,	
		   sizeof boxTop,
		   wallxy,	
		   ADDR count	

	;------------------------ level 3-1 words ----------------------
	display_1:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_1,	; pointer to the top box line
		   sizeof level3_1 -1,	; size of box line
		   textxy,	; coordinates of first char
		   ADDR count	; output count

		add textxy.x, 24
		add mexy_3.x, 24

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR me,	
			sizeof me - 1,	
			textxy,	
			ADDR count	

		add textxy.x, 2

		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_1_2,	; pointer to the top box line
		   sizeof level3_1_2 -1,	; size of box line
		   textxy,	; coordinates of first char
		   ADDR count	; output count

		sub textxy.x, 26

		inc textxy.y
		inc textxy.y
		inc textxy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_2		;next line
		dec textxy.y
		dec textxy.y
		dec textxy.y
		jne display_1		;again

	display_2:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_2,	; pointer to the top box line
		   sizeof level3_2 -1,	; size of box line
		   textxy,	; coordinates of first char
		   ADDR count	; output count

		inc textxy.y
		inc textxy.y
		inc textxy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_3		;next line
		dec textxy.y
		dec textxy.y
		dec textxy.y
		jne display_2		;again

	display_3:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_3,	; pointer to the top box line
		   sizeof level3_3 -1,	; size of box line
		   textxy,	; coordinates of first char
		   ADDR count	; output count

		inc textxy.y
		inc textxy.y
		inc textxy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_4		;next line
		dec textxy.y
		dec textxy.y
		dec textxy.y
		jne display_3		;again

	display_4:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_4,	; pointer to the top box line
		   sizeof level3_4 -1,	; size of box line
		   textxy,	; coordinates of first char
		   ADDR count	; output count

		inc textxy.y
		inc textxy.y
		inc textxy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_5		;next line
		dec textxy.y
		dec textxy.y
		dec textxy.y
		jne display_4		;again

	display_5:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_5,	; pointer to the top box line
		   sizeof level3_5 -1,	; size of box line
		   textxy,	; coordinates of first char
		   ADDR count	; output count

		inc textxy.y
		inc textxy.y
		inc textxy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_6		;next line
		dec textxy.y
		dec textxy.y
		dec textxy.y
		jne display_5		;again

	display_6:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_6,	; pointer to the top box line
		   sizeof level3_6 -1,	; size of box line
		   textxy,	; coordinates of first char
		   ADDR count	; output count

		inc textxy.y
		inc textxy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_7		;next line
		dec textxy.y
		dec textxy.y
		jne display_6		;again

	display_7:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_7,	; pointer to the top box line
		   sizeof level3_7 -1,	; size of box line
		   textxy,	; coordinates of first char
		   ADDR count	; output count

		inc textxy.y
		inc textxy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_8		;next line
		dec textxy.y
		dec textxy.y
		jne display_7		;again

	display_8:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_8,	; pointer to the top box line
		   sizeof level3_8 -1,	; size of box line
		   textxy,	; coordinates of first char
		   ADDR count	; output count

		inc textxy.y
		inc textxy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_9		;next line
		dec textxy.y
		dec textxy.y
		jne display_8		;again

	display_9:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_9,	; pointer to the top box line
		   sizeof level3_9 -1,	; size of box line
		   textxy,	; coordinates of first char
		   ADDR count	; output count

		inc textxy.y
		inc textxy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		dec textxy.y
		dec textxy.y
		jmp level3_1_start		;next line
		jne display_9		;again

	;--------------------------- move me -------------------------
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR me,	
		sizeof me - 1,	
		mexy_3,	
		ADDR count
	level3_1_start:
		
		call ReadChar

		.IF ax == 1177h ;w up
			sub mexy_3.y, 1
			jmp check_up
		.ENDIF
		.IF ax == 1E61h ;a left
			sub mexy_3.x, 2
			jmp check_left
		.ENDIF
		.IF ax == 1F73h ;s down
			add mexy_3.y, 1
			jmp check_down
		.ENDIF
		.IF ax == 2064h ;d right
			add mexy_3.x, 2
			jmp check_right
		.ENDIF

		jmp level3_1_start
;------------------------------------- collision -----------------------------------
	check_up:

		.IF mexy_3.y == 2d ;y lowerbound ;wall
			add mexy_3.y,1
			jmp level3_1_start
		.ENDIF

		call move_up
		jmp level3_1_start
	
	check_left:

		.IF mexy_3.x == 2d ;x lowerbound ;wall
			add mexy_3.x,2
			jmp level3_1_start
		.ENDIF

		call move_left
		jmp level3_1_start

	check_down:

		mov ax,BoxHeight
		add ax, 1d
		.IF mexy_3.y == ax ;y upperbound ;wall
			sub mexy_3.y,1
			jmp level3_1_start
		.ENDIF

		call move_down
		jmp level3_1_start
		
	check_right:

		mov ax,BoxWidth
		shl ax, 1
		.IF mexy_3.x == ax ;x upperbound ;wall
			sub mexy_3.x,2
			jmp level3_1_start
		.ENDIF


		call move_right
		jmp level3_1_start
		


	;------------------------ level 3-2 words ----------------------

be_master ENDP
	

;---------------------------------------- collision PROC -----------------------------------
move_right PROC
	
	sub mexy_3.x, 2
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space,	
		mexy_3,
		ADDR count

	add mexy_3.x, 2

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,
		ADDR me,	
		sizeof me - 1,	
		mexy_3,	
		ADDR count	

	ret
move_right ENDP

move_left PROC

	add mexy_3.x, 2
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space,	
		mexy_3,	
		ADDR count	

	sub mexy_3.x, 2

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR me,	
		sizeof me - 1,
		mexy_3,	
		ADDR count	

	ret
move_left ENDP

move_up PROC

	add mexy_3.y, 1
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,
		sizeof space,
		mexy_3,	
		ADDR count	

	sub mexy_3.y, 1

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR me,	
		sizeof me - 1,
		mexy_3,	
		ADDR count

	ret
move_up ENDP

move_down PROC

	sub mexy_3.y, 1
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space,	
		mexy_3,	
		ADDR count

	add mexy_3.y, 1

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR me,	
		sizeof me - 1,	
		mexy_3,	
		ADDR count

	ret
move_down ENDP

END main
