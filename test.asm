INCLUDE Irvine32.inc

BoxWidth = 70d	;�]�w�e
BoxHeight = 39d	;�]�w��

.data
me byte "��", 0
space byte " ",0
mexy COORD <16,14>

boxTop    BYTE BoxWidth DUP("��")
boxBody   BYTE "��", (BoxWidth - 2) DUP('�@'), "��"		
boxBottom BYTE BoxWidth DUP("��")
wallxy COORD <2,2>	

content BYTE "�ƨ�ig�W�@��v�Y���ɬV�v�@�~",0
content1 BYTE "�n�n�ݡA�n�Q�h�V��", 0
content2 BYTE "�p�G�گ���֦��@�Y�}�G���L���⺥�h�Y�@�w�ܴΡI", 0
content3 BYTE "��......", 0
content4 BYTE "����ܦ��å����F�I�Y�s�ġs�Y", 0
contentxy COORD <12, 8>
contentcount BYTE 0

startword BYTE   " _______�@�@�@ �@ _______",0
startword1 BYTE  "|�@�@�@ | �@�@�@ |�@�@ �@|",0
startword2 BYTE  "|�@�@�@ |�@�@�@  |�@�@�@ |�@�@�@�@�@�@/�@�@�@�@�@�@ �@/",0
startword3 BYTE  " _______�@�@�@�@  _______�@�@�@�@�@�@/�@     �@�@�@�@/",0
startword4 BYTE  "|�@�@�@ |�@�@�@  |�@�@�@ |�@�@�@�@�@/�@�@\�@�@�@�@�@/",0
startword5 BYTE  "|�@�@�@ |�@�@�@  |�@�@�@ |�@�@�@�@ /�@�@�@\�@�@�@�@/�@�@�@�@�@�@\",0
startword6 BYTE  " _______�@�@�@�@  _______�@�@�@�@ __________�@�@�@�@____________",0
startword7 BYTE  "|�@�@�@�@�@�@�@�@ �@�@�@ |�@�@�@�@ \�@�@�@/",0
startword8 BYTE  "|�@ �@�@ ________�@�@�@�@|�@�@�@�@�@\�@�@/�@�@�@�@  ____________",0
startword9 BYTE  "|�@�@ �@ |�@�@ | �@�@�@�@|�@�@�@�@�@ \�@/�@�@�@�@�@|�@�@�@�@�@�@|",0
startword10 BYTE "|�@ _____|___��|______   |�@�@�@�@�@�@ /�@�@�@�@�@ |�@�@�@�@�@�@|",0
startword11 BYTE "|�@�@ �@ |�@�@ |�@�@�@�@ |�@�@�@�@�@�@/ \�@�@�@�@�@|�@�@�@�@�@�@|",0
startword12 BYTE "|�@�@�@  |�@�@ |�@�@�@�@ |�@�@�@�@�@�@�@�@�@�@�@�@ |____________|", 0
startword13 BYTE "        PUSH              P            TO              PLAY",0
startword14 BYTE "        PUSH             'P'         MOTHER           FUCKER",0
startword15 BYTE "  I       SAID        PUSH         'P'         YOU           BITXH",0
startword16 BYTE "PUSH     'P'",0
startcount BYTE 0
startxy COORD <40,10>	

outputHandle DWORD 0
count DWORD 0

.code
main PROC

	; Get the console ouput handle
	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;�]�� GetStdHandle �|�s��eax�A�Neax�����Ȧs�JoutputHandle
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
		call Random32 ; �ͦ� 32 �줸���H���ơA���G�s�x�b eax ��
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

		inc wallxy.y	; ���ʨ�U�@��W�[y

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
	
	call level2
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR me,	
		sizeof me - 1,
		mexy,	
		ADDR count	
	
	call level2move

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

level2 PROC

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
		cmp bl, 3
		je continue3
		cmp bl, 4
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
			mov contentcount, 3

			jmp start

		continue3:
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR content3,	
			sizeof content3-1,
			contentxy,	
			ADDR count

			add contentxy.x, sizeof content3-1
			mov contentcount, 4

			jmp start

		continue4:
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR content4,	
			sizeof content4-1,
			contentxy,	
			ADDR count

			add contentxy.y, 3
			inc contentcount

			ret

level2 ENDP

level2move PROC
	start:
		call ReadChar  ; �q��LŪ���@�Ӧr�� 

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
			
	continue:
		jmp start
level2move ENDP

END main

