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

;------------------------------------------level1--------------------------------------------------------------


micro_wave BYTE   "好冷喔，最近麥當勞有買一送一誒，在寒冷的冬天吃上剛出油鍋的大薯肯定超幸福的拉！",0
micro_wave1 BYTE  "啊...怎麼桌上的大薯已經軟掉了，",0
micro_wave2 BYTE  "原本想拿吹風機加熱，但室友建議我可以放到微波爐耶，",0
micro_wave3 BYTE  "那就拿去加熱了喔...？",0

no_get_fries BYTE "阿你是要炸什麼啦？＿？，按任意鍵以繼續破關..."
fries BYTE "獲得冷掉的大薯一份，按任意鍵以繼續破關..."

whitebg BYTE "　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　      　　　　",0
cold_fries BYTE  "　＿　　　　＿　　　　＿　　　　＿　　　　＿　",0
cold_fries1 BYTE "｜　｜　　｜　｜　　｜　｜　　｜　｜　　｜　｜",0
cold_fries2 BYTE "｜　｜　　｜　｜　　｜　｜　　｜　｜　　｜　｜",0
cold_fries3 BYTE "｜　｜　　｜　｜　　｜　｜　　｜　｜　　｜　｜",0
cold_fries4 BYTE "｜　｜　　｜　｜　　｜　｜　　｜　｜　　｜　｜",0
cold_fries5 BYTE "｜　｜　　｜　｜　　｜　｜　　｜　｜　　｜　｜",0
cold_fries6 BYTE "　＿　　　　＿　　　　＿　　　　＿　　　　＿　",0
oil_pot BYTE "｜　　　　　　　　　　　　　　　　　　　　　　　　　｜",0
oil_pot1 BYTE "｜～～～～～～～～～～～～～～～～～～～～～～～～～｜",0
oil_pot2 BYTE "｜　　　　　　　　　　　　　　　　　　　　　　　　　｜",0
oil_pot3 BYTE "｜　　　　　　　　　　　　　　　　　　　　　　　　　｜",0
oil_pot4 BYTE  "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿",0
nofries BYTE "　　　　　　　　　　　　　　　　　　　　　　　　　　　",0

fried_fries BYTE "　　　　一一一一一　　　　　　一一一一一　　　　　　一一一一一　　　　　",0
fried_fries1 BYTE "　　　　一一一一一　　　　　　一一當當當　　一一一一一　　　　　",0
fried_fries2 BYTE "　　一　　　當　　　　　　　　一　當當當　　一　　一一一　　　　",0
fried_fries3 BYTE "一一一　　　當　　當　　一　　　　當當當　　當當當當　一　當當當　　一一一",0
fried_fries4 BYTE "一一一　　　當　　當當　　當當當　當當　　　當當當當　　　當當當當　一一一",0
fried_fries5 BYTE "　　　　　　當　　當當　　當當當　當當　　　當當當當　　當當當當　　　　",0
fried_fries6 BYTE "　　　　　　當　　當當　　當當當　當當當　　當當當當　　當當當當　一　　　",0
fried_fries7 BYTE "　　　　　　當　　當當　　當當當　當當當　　當當當　　當當當當　　　　　",0
fried_fries8 BYTE "一一一一一　當　　當當　　當當當　當當當　　當當當　　當當當　　一一一一",0
fried_fries9 BYTE "一一一一　　當當　當當　　當當　　當當當　　當當當　　當當當　一一一一一",0
fried_fries10 BYTE "一一一一一麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥　一一一一",0
fried_fries11 BYTE "　　　　一　麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥　　　　　",0
fried_fries12 BYTE "　　　　一　麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥一　　　　",0
fried_fries13 BYTE "　　　　一一麥麥麥麥麥麥麥　　　麥　麥麥麥　　麥麥麥麥麥麥麥　　　　　　",0
fried_fries14 BYTE "一一一一　　　麥麥麥麥麥麥一一麥麥　一一　麥　　麥麥麥麥麥麥　一一一一一",0
fried_fries15 BYTE "一一一一　　　麥麥麥麥麥麥　一麥麥麥一　麥麥　　麥麥麥麥麥麥　　一一一一",0
fried_fries16 BYTE "一一一一　　一麥麥麥麥麥麥一一麥麥麥一　麥麥　　麥麥麥麥麥　　　一一一一",0
fried_fries17 BYTE "　　　　一一一　麥麥麥麥麥一一麥麥麥一　麥麥　　麥麥麥麥麥　一一　　　　",0
fried_fries18 BYTE "　　　　一一一　麥麥麥麥麥　　麥麥麥　　麥麥　　麥麥麥麥麥一一一　　　　",0
fried_fries19 BYTE "一一一一　　　一　麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥　　　　一一一一",0
fried_fries20 BYTE "一一一一　　　　　麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥　　　　一一一一",0
fried_fries21 BYTE "一一一一　　　　　麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥一　　　一一一一",0
fried_fries22 BYTE "　　　　一一一一一麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥麥　一一一一　　",0
fried_fries23 BYTE "　　　　一一一一一　　　　　　一一一一一一　　　　　一一一一一　　",0

fried_french_fries_announce BYTE "恭喜你幫me炸完薯條!獲得菜刀一把",0
fried_french_fries_announce1 BYTE "帶著他去找尋下一關吧",0
fried_french_fries_announce2 BYTE "按下空白鍵結束(ˊ~ˋ)881",0

cold_friesxy COORD <43,12>
oil_potxy COORD <40,20>
friesxy COORD <40, 30>
friedfriesxy COORD <30, 4>
nofriesxy COORD <43,10>
whitebgxy COORD <7,3>

cellsWritten DWORD ?

whether_get_cold_fries BYTE 0


;------------------------------------------level2--------------------------------------------------------------

content BYTE "滑到ig上一堆髮廊分享染髮作品",0
content1 BYTE "好好看，好想去染唷", 0
content2 BYTE "如果我能夠擁有一頭漂亮的淺粉色漸層頭一定很棒！", 0
content3 BYTE "啊......", 0
content4 BYTE "怎麼變成螢光粉了！凸︿＿︿凸", 0
contentxy COORD <12, 8>
contentcount BYTE 0

toolcontent BYTE "是可以把顏色漂白的漂白水耶", 0
toolcontent1 BYTE "哇賽！變好看了！太感動了～", 0

tool1 BYTE "漂白水", 0
tool1get DWORD 0

tool2 BYTE "虫",0
tool2get DWORD 0
tool2xy COORD <28, 17>

tool3 BYTE "兀",0
tool3get DWORD 0
tool3xy COORD <30, 17>
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

	;-----------------------------------------------level1---------------------------------------------------------------

	starting:
		call ReadChar
		cmp al, "l"
		je play_level1
		jmp starting
	play_level1: 
		mov mexy.x, 42
		mov mexy.y, 14
		call level1
		call level1move

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

;-----------------------------------------------level1 ---------------------------------------------------------------------


level1 PROC

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR micro_wave,	; pointer to the top box line
	   sizeof micro_wave -1,	; size of box line
	   contentxy,	; coordinates of first char
	   ADDR count	; output count

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
	   outputHandle,	; console output handle
	   ADDR micro_wave1,	; pointer to the top box line
	   sizeof micro_wave1 -1,	; size of box line
	   contentxy,	; coordinates of first char
	   ADDR count	; output count

	   add contentxy.y, 3
	   inc contentcount
	   jmp start

	continue2:
	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR micro_wave2,	; pointer to the top box line
	   sizeof micro_wave2 -1,	; size of box line
	   contentxy,	; coordinates of first char
	   ADDR count	; output count

	   add contentxy.y, 3
	   inc contentcount
	   jmp start

	continue3:
	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR micro_wave3,	; pointer to the top box line
	   sizeof micro_wave3 -1,	; size of box line
	   contentxy,	; coordinates of first char
	   ADDR count	; output count


	   ; 更新座標回原本的//////////////////////////////

	ret


level1 ENDP

refresh_bg PROC

		mov ecx, 30

L1:	
	push ecx	; save counter

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR whitebg,	; pointer to the top box line
	   sizeof whitebg -1,	; size of box line
	   whitebgxy,	
	   ADDR count	; output count
	   
	   inc whitebgxy.y
	   pop ecx

	   LOOP L1


		ret
refresh_bg ENDP

draw_touch_fries PROC
	
	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR fries,	; pointer to the top box line
	   sizeof fries -1,	; size of box line
	   friesxy,	
	   ADDR count	; output count

	   waiting:
		call ReadChar
		cmp al, "|"
		je waiting

	   ending:
		   INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR nofries,	; pointer to the top box line
		   sizeof nofries -1,	; size of box line
		   friesxy,	; coordinates of first char
		   ADDR count	; output count

		ret
			
draw_touch_fries ENDP

draw_touch_oil PROC
		

	drawing:
		call refresh_bg
	    call draw_oil_pot
		call draw_french_fries
		mov oil_potxy.y, 20
		mov whitebgxy.y, 3
		mov cold_friesxy.y, 14
		INVOKE Sleep, 800

		call refresh_bg
	    call draw_oil_pot
		call draw_french_fries
		mov oil_potxy.y, 20
		mov whitebgxy.y, 3
		mov cold_friesxy.y, 16
		INVOKE Sleep, 800

		call refresh_bg
	    call draw_oil_pot
		call draw_french_fries
		mov oil_potxy.y, 20
		mov whitebgxy.y, 3
		mov cold_friesxy.y, 16
		INVOKE Sleep, 800

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	 
			ADDR nofries,	 
			sizeof nofries -1,	 
			nofriesxy,	 
			ADDR count	 
			inc nofriesxy.y

		INVOKE Sleep, 800

		call draw_fried_french_fries


	waiting:
		call ReadChar
		cmp al, " "
		jne waiting

		mov whitebgxy.y, 3
		call refresh_bg
		
		ret
draw_touch_oil ENDP



draw_fried_french_fries PROC

	mov whitebgxy.y, 3
	call refresh_bg

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries,	 
	   sizeof fried_fries -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries1,	 
	   sizeof fried_fries1 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries2,	 
	   sizeof fried_fries2 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries3,	 
	   sizeof fried_fries3 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries4,	 
	   sizeof fried_fries4 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries5,	 
	   sizeof fried_fries5 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries6,	 
	   sizeof fried_fries6 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries7,	 
	   sizeof fried_fries7 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries8,	 
	   sizeof fried_fries8 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries9,	 
	   sizeof fried_fries9 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries10,	 
	   sizeof fried_fries10 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries11,	 
	   sizeof fried_fries11 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries12,	 
	   sizeof fried_fries12 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries13,	 
	   sizeof fried_fries13 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries14,	 
	   sizeof fried_fries14 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries15,	 
	   sizeof fried_fries15 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries16,	 
	   sizeof fried_fries16 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries17,	 
	   sizeof fried_fries17 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries18,	 
	   sizeof fried_fries18 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries19,	 
	   sizeof fried_fries19 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries20,	 
	   sizeof fried_fries20 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries21,	 
	   sizeof fried_fries21 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries22,	 
	   sizeof fried_fries22 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_fries23,	 
	   sizeof fried_fries23 -1,	 
	   friedfriesxy,	 
	   ADDR count	

	   inc friedfriesxy.y
	   inc friedfriesxy.y
	   inc friedfriesxy.y
	   INVOKE Sleep, 1000


	   
	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_french_fries_announce,	 
	   sizeof fried_french_fries_announce -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

		INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_french_fries_announce1,	 
	   sizeof fried_french_fries_announce1 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR fried_french_fries_announce2,	 
	   sizeof fried_french_fries_announce2 -1,	 
	   friedfriesxy,	 
	   ADDR count	
	   inc friedfriesxy.y
	   INVOKE Sleep, 200


		ret

draw_fried_french_fries ENDP

draw_no_french_fries PROC
	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR nofries,	 
	   sizeof nofries -1,	 
	   nofriesxy,	 
	   ADDR count	 
	   inc nofriesxy.y

draw_no_french_fries ENDP


draw_french_fries PROC

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR cold_fries,	 
	   sizeof cold_fries -1,	 
	   cold_friesxy,	 
	   ADDR count	 
	   inc cold_friesxy.y

	  
	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR cold_fries1,	 
	   sizeof cold_fries1 -1,	 
	   cold_friesxy,	 
	   ADDR count	 

	   inc cold_friesxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR cold_fries2,	 
	   sizeof cold_fries2 -1,	 
	   cold_friesxy,	 
	   ADDR count	 

	   inc friesxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR cold_fries3,	 
	   sizeof cold_fries3 -1,	 
	   cold_friesxy,	 
	   ADDR count	 

	   inc cold_friesxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR cold_fries4,	 
	   sizeof cold_fries4 -1,	 
	   cold_friesxy,	 
	   ADDR count	 

	   inc cold_friesxy.y

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR cold_fries5,	 
	   sizeof cold_fries5 -1,	 
	   cold_friesxy,	 
	   ADDR count	 

	   inc cold_friesxy.y

	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR cold_fries6,	 
	   sizeof cold_fries6 -1,	 
	   cold_friesxy,	 
	   ADDR count	 

	   inc cold_friesxy.y

	   ret
draw_french_fries ENDP

draw_you_do_not_have_fries PROC
	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR no_get_fries,	 
	   sizeof no_get_fries -1,	 
	   friesxy,	 
	   ADDR count	


	   waiting:
		call ReadChar
		cmp al, "|"
		je waiting

	   ending:
		   INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR nofries,	; pointer to the top box line
		   sizeof nofries -1,	; size of box line
		   friesxy,	; coordinates of first char
		   ADDR count	; output count

	   ret
draw_you_do_not_have_fries ENDP

draw_oil_pot PROC
	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR oil_pot,	; pointer to the top box line
	   sizeof oil_pot -1,	; size of box line
	   oil_potxy,	
	   ADDR count	; output count

	   inc oil_potxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR oil_pot1,	; pointer to the top box line
	   sizeof oil_pot1 -1,	; size of box line
	   oil_potxy,	
	   ADDR count	; output count

	   inc oil_potxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR oil_pot2,	; pointer to the top box line
	   sizeof oil_pot2 -1,	; size of box line
	   oil_potxy,	
	   ADDR count	; output count

	   inc oil_potxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR oil_pot3,	; pointer to the top box line
	   sizeof oil_pot3 -1,	; size of box line
	   oil_potxy,	
	   ADDR count	; output count

	   inc oil_potxy.y

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR oil_pot4,	; pointer to the top box line
	   sizeof oil_pot4 -1,	; size of box line
	   oil_potxy,	
	   ADDR count	; output count

draw_oil_pot ENDP


whether_touch_fries PROC
		
		mov ax, mexy.x
		.IF ax == 70 || ax == 72
			je sameX
		.ENDIF
		jmp nontouch

		sameX:
			mov ax, mexy.y
			.IF ax == 9 || ax == 7
				je touch
			.ENDIF

			jmp nontouch
			

		touch:
			mov whether_get_cold_fries, 1
			call draw_touch_fries
			
			jmp leaving

		nontouch:
			jmp leaving

	    add contentxy.y, 3

		leaving:
		ret


whether_touch_fries ENDP
		
whether_touch_oil PROC
		mov ax, mexy.x
		cmp ax, 66
		je sameX
		cmp ax, 68
		je sameX
		jmp nontouch

		sameX:
			mov ax, mexy.y
			cmp ax, 9
			je touch
			cmp ax, 7
			je touch
			jmp nontouch

		touch:
			.IF whether_get_cold_fries == 0
				call draw_you_do_not_have_fries
			.ENDIF
			.IF whether_get_cold_fries == 1
				call draw_touch_oil
				jmp leaving
			.ENDIF
			
			
			jmp leaving

		nontouch:
			jmp leaving


		leaving:
		ret

whether_touch_oil ENDP

level1move PROC
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

		cmp al, " "
		je push_space


		jmp continue

	push_space:
		call whether_touch_fries
		call whether_touch_oil
		jmp continue

	colusionr:
		mov ax, mexy.x
		cmp ax, 138
		je continue
		
		mov ax, mexy.y
		cmp al, 8
		je line_0_r
		cmp al, 11
		je line_1_r
		cmp al, 14
		je line_2_r
		cmp al, 17
		je line_3_r
		jmp mover

		line_0_r:
			mov ax, mexy.x
			cmp al, 10
			jb mover
			cmp al, 11+sizeof micro_wave
			ja mover
			jmp continue

		line_1_r:
			mov ax, mexy.x
			cmp al, 10
			jb mover
			cmp al, 11+sizeof micro_wave1
			ja mover
			jmp continue

		line_2_r:
			mov ax, mexy.x
			cmp al, 10
			jb mover
			cmp al, 11+sizeof micro_wave2
			ja mover
			jmp continue

		line_3_r:
			mov ax, mexy.x
			cmp al, 10
			jb mover
			cmp al, 11+sizeof micro_wave3
			ja mover
			jmp continue

		jmp mover


	colusionl:
		mov ax, mexy.x
		cmp al, 4
		je continue
	
		mov ax, mexy.y
		cmp al, 8
		je line_0_l
		cmp al, 11
		je line_1_l
		cmp al, 14
		je line_2_l
		cmp al, 17
		je line_3_l
		jmp movel

		line_0_l:
			mov ax, mexy.x
			cmp al, 10
			jb movel
			cmp al, 11+sizeof micro_wave
			je continue
			jb continue
			jmp movel

		line_1_l:
			mov ax, mexy.x
			cmp al, 10
			jb movel
			cmp al, 11+sizeof micro_wave1
			je continue
			jb continue
			jmp movel

		line_2_l:
			mov ax, mexy.x
			cmp al, 10
			jb movel
			cmp al, 11+sizeof micro_wave2
			je continue
			jb continue
			jmp movel

		line_3_l:
			mov ax, mexy.x
			cmp al, 10
			jb movel
			cmp al, 11+sizeof micro_wave3
			je continue
			jb continue
			jmp movel

	
			je continue
			jb continue
			jmp movel
	
	colusionu:

		mov ax, mexy.y
		cmp al, 3
		je continue
		jb continue

		cmp al, 9
		je line_0_u
		cmp al, 12
		je line_1_u
		cmp al, 15
		je line_2_u
		cmp al, 18
		je line_3_u
		jmp moveu

		line_0_u:
			mov ax, mexy.x
			cmp al, 11 
			jb moveu
			cmp al, 11+sizeof micro_wave-1
			ja moveu
			jmp continue
		line_1_u:
			mov ax, mexy.x
			cmp al, 11 
			jb moveu
			cmp al, 11+sizeof micro_wave1-1
			ja moveu
			jmp continue
		line_2_u:
			mov ax, mexy.x
			cmp al, 11
			jb moveu
			cmp al, 11+sizeof micro_wave2-1
			ja moveu
			jmp continue

		line_3_u:
			mov ax, mexy.x
			cmp al, 11
			jb moveu
			cmp al, 11+sizeof micro_wave3-1
			ja moveu
			jmp continue

	colusiond:

		mov ax, mexy.y
		cmp al, 39
		je continue
		ja continue

		cmp al, 7
		je line_0_d
		cmp al, 10
		je line_1_d
		cmp al, 13
		je line_2_d
		cmp al, 16
		je line_3_d
		jmp moved

		line_0_d:
			mov ax, mexy.x
			cmp al, 11 
			jb moved
			cmp al, 11+sizeof micro_wave-1
			ja moved
			jmp continue
		line_1_d:
			mov ax, mexy.x
			cmp al, 11
			jb moved
			cmp al, 11+sizeof micro_wave1-1
			ja moved
			jmp continue
		line_2_d:
			mov ax, mexy.x
			cmp al, 11
			jb moved
			cmp al, 11+sizeof micro_wave2-1
			ja moved
			jmp continue

		line_3_d:
			mov ax, mexy.x
			cmp al, 11
			jb moved
			cmp al, 11+sizeof micro_wave3-1
			ja moved
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
level1move ENDP

;-----------------------------------------------level2 bg---------------------------------------------------------------------

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
			sub contentxy.x, sizeof content3-1
			inc contentcount

			ret

level2 ENDP

;------------------------------------------------level2move--------------------------------------------------------

level2move PROC
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

		.ENDIF

		jmp continue

	continue:
		jmp start
level2move ENDP

END main












