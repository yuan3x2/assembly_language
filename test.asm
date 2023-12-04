INCLUDE Irvine32.inc

BoxWidth = 70d	;設定寬
BoxHeight = 39d	;設定長

.data
me byte "我", 0
space byte "　",0
space1 byte "　　　",0
mexy COORD <16,14>

;-----------------------------------------------bg------------------------------------------------------------

boxTop    BYTE BoxWidth DUP("牆")
boxBody   BYTE "牆", (BoxWidth - 2) DUP('　'), "牆"		
boxBottom BYTE BoxWidth DUP("牆")
wallxy COORD <2,2>	

toolBox BYTE "道具欄：",0
Boxxy COORD <2,42>
;------------------------------------------level2--------------------------------------------------------------

content BYTE "滑到ig上一堆髮廊分享染髮作品",0
content1 BYTE "好好看，好想去染唷", 0
content2 BYTE "如果我能夠擁有一頭漂亮的淺粉色漸層頭一定很棒！", 0
content3 BYTE "啊......", 0
content4 BYTE "怎麼變成螢光粉了！凸︿＿︿凸", 0
content5 BYTE "頭髮終於變成好看的漸層粉色了", 0
content6 BYTE "（定睛一看目瞪口呆", 0
content7 BYTE "哇靠，這是什麼無良髮廊，染個頭髮竟然要這麼貴！", 0
content8 BYTE "錢包要哭泣了，怎麼可能要九千圓，嗚嗚", 0
contentxy COORD <12, 8>
contentcount BYTE 0

toolcontent BYTE "是可以把顏色漂白的漂白水耶", 0
toolcontent1 BYTE "哇賽！變好看了！太感動了～", 0
toolcontent2 BYTE "多虧了你這個「砍」價高手～", 0
toolcontent3 BYTE "省下了一大筆錢＄＄＄", 0

tool1 BYTE "漂白水", 0
tool1get DWORD 0

tool2 BYTE "虫",0
tool2get DWORD 0
tool2xy COORD <28, 17>

tool3 BYTE "兀",0
tool3get DWORD 0
tool3xy COORD <30, 17>

tool4 BYTE "十",0
tool4get DWORD 0
tool4xy COORD <38, 17>

tool5 BYTE "一",0
tool5get DWORD 0
tool5xy COORD <38, 17>

tool6 BYTE "/_",0
tool6get DWORD 0
tool6xy COORD <38, 17>
;------------------------------------------startword------------------------------------------------------------

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
startword13 BYTE "        PRESS              P            TO              PLAY",0
startword14 BYTE "        PRESS             'P'         MOTHER           FUCKER",0
startword15 BYTE "  I       SAID        PRESS         'P'         YOU           BITXH",0
startword16 BYTE "PRESS     'P'",0
startcount BYTE 0
startxy COORD <40,10>	
;----------------------------------------------------------------------------------------------------------------


outputHandle DWORD 0
count DWORD 0

.code
main PROC

;-----------------------------------------------start------------------------------------------------------------

	; Get the console ouput handle
	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;因為 GetStdHandle 會存於eax，將eax內的值存入outputHandle
	call Clrscr
	
	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR startword,	
	   sizeof startword -1,
	   startxy,	
	   ADDR count

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR startword1,	 
	   sizeof startword1 -1,	 
	   startxy,	 
	   ADDR count	 

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR startword2,	 
	   sizeof startword2 -1,	 
	   startxy,	 
	   ADDR count	 

	   inc startxy.y
	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR startword3,	 
	   sizeof startword3 -1,	 
	   startxy,	 
	   ADDR count	 

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR startword4,	 
	   sizeof startword4 -1,	 
	   startxy,	 
	   ADDR count	 

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR startword5,	 
	   sizeof startword5 -1,	 
	   startxy,	 
	   ADDR count	 

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR startword6,	 
	   sizeof startword6 -1,	 
	   startxy,	 
	   ADDR count	 

	   inc startxy.y
	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR startword7,	 
	   sizeof startword7 -1,	 
	   startxy,	 
	   ADDR count	 

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR startword8,	 
	   sizeof startword8 -1,	 
	   startxy,	 
	   ADDR count	 

	   inc startxy.y

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR startword9,	 
	   sizeof startword9 -1,	 
	   startxy,	 
	   ADDR count	 

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR startword10,	 
	   sizeof startword10 -1,	 
	   startxy,	 
	   ADDR count	 

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR startword11,	 
	   sizeof startword11 -1,	 
	   startxy,	 
	   ADDR count	 

	   inc startxy.y

	INVOKE WriteConsoleOutputCharacter,
	outputHandle,	 
	ADDR startword12,	 
	sizeof startword12 -1,	 
	startxy,	 
	ADDR count	 

	add startxy.y, 3

	INVOKE WriteConsoleOutputCharacter,
	outputHandle,	 
	ADDR startword13,	 
	sizeof startword13 -1,	 
	startxy,	 
	ADDR count	 

	add startxy.y, 3
	
	play:
		mov bl, startcount
		call ReadChar
		.IF al == "p" || al == "P"
			je draw_bg
		.ENDIF
		cmp bl, 1
		je bitch
		cmp bl, 2
		je pp
		jne hehe
		jmp play
	
	hehe:
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	 
			ADDR startword14,	 
			sizeof startword14 -1,	 
			startxy,	 
			ADDR count	 
		inc startcount
		add startxy.y, 3

		jmp play

	bitch:
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	 
			ADDR startword15,	 
			sizeof startword15 -1,	 
			startxy,	 
			ADDR count	 
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
			outputHandle,	 
			ADDR startword16,	 
			sizeof startword16 -1,	 
			startxy,	 
			ADDR count	 

		jmp play
;--------------------------------------------------bg--------------------------------------------------------------

	draw_bg:
		INVOKE GetStdHandle, STD_OUTPUT_HANDLE
			mov outputHandle, eax
			call Clrscr

		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	 
		   ADDR boxTop,	 
		   sizeof boxTop,	 
		   wallxy,	 
		   ADDR count	 

		inc wallxy.y	; 移動到下一行增加y

		mov ecx, BoxHeight-2	

		L1:	push ecx	; save counter
	
			INVOKE WriteConsoleOutputCharacter,
			   outputHandle,	 
			   ADDR boxBody,	; pointer to the box body
			   sizeof boxTop,	 
			   wallxy,	 
			   ADDR count	 

			inc wallxy.y	
			pop ecx	; restore counter
			loop L1		
	
	
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	
		   ADDR boxBottom,	
		   sizeof boxTop,
		   wallxy,	
		   ADDR count	

		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	 
		   ADDR toolBox,	 
		   sizeof toolBox-1,	 
		   Boxxy,	
		   ADDR count	

	;-----------------------------------------------level2---------------------------------------------------------------

	call level2
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR me,	
		sizeof me - 1,
		mexy,	
		ADDR count	
	
	call level2move

	;-----------------------------------------------level2_2-------------------------------------------------------------
	INVOKE Sleep, 1000
	call level2_2
	call level2_2move

	exit
main ENDP

;------------------------------------------------move----------------------------------------------------------------

move_right PROC
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space-1,	
		mexy,
		ADDR count

	add mexy.x, 2

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,
		ADDR me,	
		sizeof me - 1,	
		mexy,	
		ADDR count	

	ret
move_right ENDP

move_left PROC
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space-1,	
		mexy,	
		ADDR count	

	sub mexy.x, 2

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR me,	
		sizeof me - 1,
		mexy,	
		ADDR count	

	ret
move_left ENDP

move_up PROC
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,
		sizeof space-1,
		mexy,	
		ADDR count	

	sub mexy.y, 1

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR me,	
		sizeof me - 1,
		mexy,	
		ADDR count

	ret
move_up ENDP

move_down PROC
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space-1,	
		mexy,	
		ADDR count

	add mexy.y, 1

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR me,	
		sizeof me - 1,	
		mexy,	
		ADDR count

	ret
move_down ENDP

;-----------------------------------------------level2 bg---------------------------------------------------------------------

level2 PROC
	
	INVOKE sleep, 1000

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR content,	
		sizeof content-1,
		contentxy,	
		ADDR count

	add contentxy.y, 3

	start:
		call ReadChar
		cmp al, " "
		je which
		jmp start

	which:
		mov bl, contentcount
		cmp bl, 0
		je continue1
		cmp bl, 1
		je continue2
		cmp bl, 2
		je continue3
		cmp bl, 3
		je continue4

		continue1:
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR content1,	
			sizeof content1-1,
			contentxy,	
			ADDR count

			add contentxy.y, 3
			inc contentcount

			jmp start

		continue2:
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR content2,	
			sizeof content2-1,
			contentxy,	
			ADDR count

			add contentxy.y, 3
			inc contentcount

			jmp start

		continue3:
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR content3,	
			sizeof content3-1,
			contentxy,	
			ADDR count

			add contentxy.x, sizeof content3-1
			inc contentcount

			jmp start

		continue4:
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR content4,	
			sizeof content4-1,
			contentxy,	
			ADDR count

			add contentxy.y, 3
			sub contentxy.x, sizeof content3-1
			inc contentcount

			ret

level2 ENDP

;------------------------------------------------level2move--------------------------------------------------------

level2move PROC
	start:
		call ReadChar  ; 從鍵盤讀取一個字符 


		.IF al == "d" || al == "D"
			je colusionr
		.ENDIF

		.IF al == "a" || al == "A"
			je colusionl
		.ENDIF
		
		.IF al == "w" || al == "W"
			je colusionu
		.ENDIF

		
		.IF al == "s" || al == "S"
			je colusiond
		.ENDIF

		cmp al, " "
		je see

		cmp al, "e"
		je use

		jmp continue

;-----------------------------------------colusion---------------------------------------------

	colusionr:
		mov ax, mexy.x
		cmp ax, 138
		jb colusion_contentr
		jmp continue

		colusion_contentr:
			mov bx, mexy.y
			cmp ax, 10
			je ccry
			jmp mover

			ccry:
				cmp bx, 8
				je continue

				cmp bx, 11
				je continue

				cmp bx, 14
				je continue

				cmp bx, 17
				je continue

				.IF tool1get == 1
					cmp bx, 20
					je continue
				.ENDIF

				jmp mover


	colusionl:
		mov ax, mexy.x
		cmp ax, 4
		ja colusion_contentl
		jmp continue

		colusion_contentl:
			mov bx, mexy.y
			cmp ax, 40
			je ccly1

			cmp ax, 30
			je ccly2

			cmp ax, 58
			je ccly3

			cmp ax, 48
			je ccly4

			.IF tool1get == 1
				cmp ax, 38
				je ccly5
			.ENDIF

			jmp movel

			ccly1:
				cmp bx, 8
				je continue
				jmp movel

			ccly2:
				cmp bx, 11
				je continue
				jmp movel

			ccly3:
				cmp bx, 14
				je continue
				jmp movel

			ccly4:
				cmp bx, 17
				je continue
				jmp movel
			
			ccly5:
				cmp bx, 20
				je continue
				jmp movel

	colusionu:
		mov ax, mexy.y
		cmp ax, 3
		ja colusion_contentu
		jmp continue

		colusion_contentu:
			mov ax, mexy.y
			mov bx, mexy.x
			cmp bx, 12
			jb moveu

			.IF tool1get == 1
				.IF mexy.y == 21
					.IF mexy.x <= 36
						jmp continue
					.ENDIF
				.ENDIF
			.ENDIF

			cmp ax, 9
			je ccux1

			cmp ax, 12
			je ccux2

			cmp ax, 15
			je ccux3

			cmp ax, 18
			je ccux4

			jmp moveu

			ccux1:
				cmp bx, 40
				jae moveu
				jmp continue

			ccux2:
				cmp bx, 30
				jae moveu
				jmp continue
				
			ccux3:
				cmp bx, 58
				jae moveu
				jmp continue

			ccux4:
				cmp bx, 48
				jae moveu
				jmp continue
			
			
	colusiond:
		mov ax, mexy.y
		cmp ax, 39
		jb colusion_contentd
		jmp continue
	
		colusion_contentd:
			mov ax, mexy.y
			mov bx, mexy.x
			cmp bx, 12
			jb moved

			.IF tool1get == 1
				.IF mexy.y == 19
					.IF mexy.x <= 36
						jmp continue
					.ENDIF
				.ENDIF
			.ENDIF

			cmp ax, 7
			je ccdx1

			cmp ax, 10
			je ccdx2

			cmp ax, 13
			je ccdx3

			cmp ax, 16
			je ccdx4

			jmp moved

			ccdx1:
				cmp bx, 40
				jae moved
				jmp continue

			ccdx2:
				cmp bx, 30
				jae moved
				jmp continue
				
			ccdx3:
				cmp bx, 58
				jae moved
				jmp continue

			ccdx4:
				cmp bx, 48
				jae moved
				jmp continue

		mover:
			call move_right
			jmp continue
		
		movel:
			call move_left
			jmp continue

		moveu:
			call move_up
			jmp continue

		moved:
			call move_down
			jmp continue

;--------------------------------------see--------------------------------------------------

	see:
		.IF tool1get == 0
			.IF mexy.x == 30
				.IF mexy.y == 13 || mexy.y == 15
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR toolcontent,	
						sizeof toolcontent-1,
						contentxy,	
						ADDR count
				
					add Boxxy.x, sizeof toolBox

					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR tool1,	
						sizeof tool1-1,
						Boxxy,	
						ADDR count
					inc tool1get
				.ENDIF
			.ENDIF
		.ENDIF
		jmp continue	
;----------------------------------------------use-------------------------------------------	

	use:
		.IF tool1get == 1
			.IF mexy.x == 28
				.IF mexy.y == 16 || mexy.y == 18
					.IF tool2get == 0
						INVOKE WriteConsoleOutputCharacter,
							outputHandle,	
							ADDR tool2,	
							sizeof tool2-1,
							tool2xy,	
							ADDR count
						inc tool2get
						jmp continue
					.ENDIF
					
					.IF tool2get == 1
						INVOKE WriteConsoleOutputCharacter,
							outputHandle,	
							ADDR space,	
							sizeof space-1,
							tool2xy,	
							ADDR count
						inc tool2get
					.ENDIF
				.ENDIF
			.ENDIF

			.IF mexy.x == 30
				.IF mexy.y == 16 || mexy.y == 18
					.IF tool3get == 0
						INVOKE WriteConsoleOutputCharacter,
							outputHandle,	
							ADDR tool3,	
							sizeof tool3-1,
							tool3xy,	
							ADDR count
						inc tool3get
						jmp continue
					.ENDIF

					.IF tool3get == 1
						INVOKE WriteConsoleOutputCharacter,
							outputHandle,	
							ADDR space,	
							sizeof space-1,
							tool3xy,	
							ADDR count
						inc tool3get
					.ENDIF
				.ENDIF
			.ENDIF

		.ENDIF

		.IF	tool2get == 2 && tool3get == 2

			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR toolcontent1,	
				sizeof toolcontent1-1,
				contentxy,	
				ADDR count

			inc tool2get

			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR space1,	
				sizeof space1-1,
				Boxxy,	
				ADDR count
			sub Boxxy.x , sizeof space1-1

			ret

		.ENDIF

		jmp continue

	continue:
		jmp start
level2move ENDP

;---------------------------------------------------level2_2 bg--------------------------------------------------------
level2_2 PROC
	
	mov contentxy.x, 12
	mov contentxy.y, 8
	mov contentcount, 0

	mov ecx, 14
	S1:push ecx
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR space,	
			sizeof space-1,
			contentxy,	
			ADDR count
		add contentxy.x, 2
		pop ecx
		loop S1

	mov contentxy.x, 12
	add contentxy.y, 3

	mov ecx, 9
	S2:push ecx
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR space,	
			sizeof space-1,
			contentxy,	
			ADDR count
		add contentxy.x, 2
		pop ecx
		loop S2

	mov contentxy.x, 12
	add contentxy.y, 3

	mov ecx, 23
	S3:push ecx
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR space,	
			sizeof space-1,
			contentxy,	
			ADDR count
		add contentxy.x, 2
		pop ecx
		loop S3

	mov contentxy.x, 12
	add contentxy.y, 3

	mov ecx, 18
	S4:push ecx
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR space,	
			sizeof space-1,
			contentxy,	
			ADDR count
		add contentxy.x, 2
		pop ecx
		loop S4

	mov contentxy.x, 12
	add contentxy.y, 3

	mov ecx, 26
	S5:push ecx
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR space,	
			sizeof space-1,
			contentxy,	
			ADDR count
		add contentxy.x, 2
		pop ecx
		loop S5

	mov contentxy.x, 12
	mov contentxy.y, 8

	INVOKE sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR content5,	
		sizeof content5-1,
		contentxy,	
		ADDR count

	add contentxy.y, 3

	start:
		call ReadChar
		cmp al, " "
		je which
		jmp start

	which:
		mov bl, contentcount
		cmp bl, 0
		je continue1
		cmp bl, 1
		je continue2
		cmp bl, 2
		je continue3

		continue1:
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR content6,	
			sizeof content6-1,
			contentxy,	
			ADDR count

			add contentxy.y, 3
			inc contentcount

			jmp start

		continue2:
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR content7,	
			sizeof content7-1,
			contentxy,	
			ADDR count

			add contentxy.y, 3
			inc contentcount

			jmp start

		continue3:
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR content8,	
			sizeof content8-1,
			contentxy,	
			ADDR count

			add contentxy.y, 3
			inc contentcount

			ret

level2_2 ENDP
;--------------------------------------------level2_2move-----------------------------------------------------
level2_2move PROC

	start:
		call ReadChar  ; 從鍵盤讀取一個字符 

		.IF al == "d" || al == "D"
			je colusionr
		.ENDIF

		.IF al == "a" || al == "A"
			je colusionl
		.ENDIF
		
		.IF al == "w" || al == "W"
			je colusionu
		.ENDIF

		.IF al == "s" || al == "S"
			je colusiond
		.ENDIF

		cmp al, "e"
		je use

		jmp continue

;-----------------------------------------colusion---------------------------------------------

	colusionr:
		mov ax, mexy.x
		cmp ax, 138
		jb colusion_contentr
		jmp continue

		colusion_contentr:
			mov bx, mexy.y
			cmp ax, 10
			je ccry
			jmp mover

			ccry:
				cmp bx, 8
				je continue

				cmp bx, 11
				je continue

				cmp bx, 14
				je continue

				cmp bx, 17
				je continue

				.IF tool6get == 1
					cmp bx, 20
					je continue
				.ENDIF

				jmp mover


	colusionl:
		mov ax, mexy.x
		cmp ax, 4
		ja colusion_contentl
		jmp continue

		colusion_contentl:
			mov bx, mexy.y
			cmp ax, 40
			je ccly1

			cmp ax, 30
			je ccly2

			cmp ax, 58
			je ccly3

			cmp ax, 48
			je ccly4

			.IF tool6get == 1
				cmp ax, 38
				je ccly5
			.ENDIF

			jmp movel

			ccly1:
				cmp bx, 8
				je continue
				jmp movel

			ccly2:
				cmp bx, 11
				je continue
				jmp movel

			ccly3:
				cmp bx, 14
				je continue
				jmp movel

			ccly4:
				cmp bx, 17
				je continue
				jmp movel
			
			ccly5:
				cmp bx, 20
				je continue
				jmp movel

	colusionu:
		mov ax, mexy.y
		cmp ax, 3
		ja colusion_contentu
		jmp continue

		colusion_contentu:
			mov ax, mexy.y
			mov bx, mexy.x
			cmp bx, 12
			jb moveu

			.IF tool6get == 1
				.IF mexy.y == 21
					.IF mexy.x <= 36
						jmp continue
					.ENDIF
				.ENDIF
			.ENDIF

			cmp ax, 9
			je ccux1

			cmp ax, 12
			je ccux2

			cmp ax, 15
			je ccux3

			cmp ax, 18
			je ccux4

			jmp moveu

			ccux1:
				cmp bx, 40
				jae moveu
				jmp continue

			ccux2:
				cmp bx, 30
				jae moveu
				jmp continue
				
			ccux3:
				cmp bx, 58
				jae moveu
				jmp continue

			ccux4:
				cmp bx, 48
				jae moveu
				jmp continue
			
			
	colusiond:
		mov ax, mexy.y
		cmp ax, 39
		jb colusion_contentd
		jmp continue
	
		colusion_contentd:
			mov ax, mexy.y
			mov bx, mexy.x
			cmp bx, 12
			jb moved

			.IF tool6get == 1
				.IF mexy.y == 19
					.IF mexy.x <= 36
						jmp continue
					.ENDIF
				.ENDIF
			.ENDIF

			cmp ax, 7
			je ccdx1

			cmp ax, 10
			je ccdx2

			cmp ax, 13
			je ccdx3

			cmp ax, 16
			je ccdx4

			jmp moved

			ccdx1:
				cmp bx, 40
				jae moved
				jmp continue

			ccdx2:
				cmp bx, 30
				jae moved
				jmp continue
				
			ccdx3:
				cmp bx, 58
				jae moved
				jmp continue

			ccdx4:
				cmp bx, 48
				jae moved
				jmp continue

		mover:
			call move_right
			jmp continue
		
		movel:
			call move_left
			jmp continue

		moveu:
			call move_up
			jmp continue

		moved:
			call move_down
			jmp continue

;------------------------------------------------use---------------------------------------------------------------
	use:
		.IF mexy.x == 38
			.IF mexy.y == 16 || mexy.y == 18
				.IF tool4get == 0
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR tool4,	
						sizeof tool4-1,
						tool4xy,	
						ADDR count
					inc tool4get
					jmp continue
				.ENDIF

				.IF tool5get == 0
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR tool5,	
						sizeof tool5-1,
						tool5xy,	
						ADDR count
					inc tool5get
					jmp continue
				.ENDIF

				.IF tool6get == 0
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR tool6,	
						sizeof tool6-1,
						tool6xy,	
						ADDR count
					inc tool6get
				.ENDIF
			.ENDIF
		.ENDIF 

		.IF tool6get == 1
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR toolcontent2,	
				sizeof toolcontent2-1,
				contentxy,	
				ADDR count
			
			add contentxy.y, 3
			Invoke sleep, 3000

			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR toolcontent3,	
				sizeof toolcontent3-1,
				contentxy,	
				ADDR count

			ret
		.ENDIF


	continue:
		jmp start

level2_2move ENDP
END main

