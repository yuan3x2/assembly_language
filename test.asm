INCLUDE Irvine32.inc

BoxWidth = 70d	;設定寬
BoxHeight = 39d	;設定長

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
		je draw_bg
		cmp bl, 1
		je bitch
		cmp bl, 2
		je pp
		jne hehe
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

	draw_bg:
		INVOKE GetStdHandle, STD_OUTPUT_HANDLE
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

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR me,	
			sizeof me - 1,	
			mexy,	
			ADDR count	

	start:
		call ReadChar  ; 從鍵盤讀取一個字符 

		cmp al, "d"
		je colusionr

		cmp al, "a"
		je colusionl

		cmp al, "w"
		je colusionu

		cmp al, "s"
		je colusiond

		jmp continue

	colusionr:
		mov ax, mexy.x
		cmp ax, 138
		jb mover
		jmp continue

	colusionl:
		mov ax, mexy.x
		cmp al, 4
		ja movel
		jmp continue

	colusionu:
		mov ax, mexy.y
		cmp al, 3
		ja moveu
		jmp continue

	colusiond:
		mov ax, mexy.y
		cmp al, 39
		jb moved
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
			
	continue:
		jmp start

	exit
main ENDP

move_right PROC
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space,	
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
		sizeof space,	
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
		sizeof space,
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
		sizeof space,	
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

END main

