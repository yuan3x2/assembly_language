INCLUDE Irvine32.inc

BoxWidth = 70d	;�]�w�e
BoxHeight = 39d	;�]�w��

.data
me byte "��", 0
space byte "�@",0
space1 byte "�@�@�@",0
mexy COORD <16,14>

;-----------------------------------------------preface------------------------------------------------------
preface1 BYTE "�u�o�O���H�ګ����b�a�W�H�v",0
preface2 BYTE "�u�Y�n�h......�v",0
preface3 BYTE "�A���ḣ�@�ǨӰ}�}�k�h�A���U�|�P�o�o�{�o�̬O�@�ӭ��ͪ��ж�",0
preface4 BYTE "�uFUCK�A�L�����o�̨쩳�O�� ?�v",0
preface5 BYTE "���ۧA������f�o�{�@�����A�����@��......",0
preface6 BYTE "�u�o���}�����M�����}�I���٭n�h�Ҭf���u�N�A�o���S�h�ڥ����L�ðڰڰڰګx���M��H�v",0
preface7 BYTE "�o�ɡA�A�o�{�a�W���@�Ӥ�O��",0
preface8 BYTE "�A���}��O�����Ĥ@���A�o�{�W���g��",0
preface9 BYTE "�y�ڦn���......�ߤߩ������F��~�M�N���F�A���ڧ�ߴH�F��    BY�u�D____�D�v�z",0
preface10 BYTE "�A½��U�@��",0
preface11 BYTE "�y�ڪ��Y�v�ڰڰڡA�ڤ��Q�ܪݤ񫽫�QAQ    BY �C�C�C�C�C�z",0
preface12 BYTE "�A�A½��U�@��",0
preface13 BYTE "�y�ݨӥs��O�������|���a�x  ���u�j lol  BY py not piyan�z",0
preface14 BYTE "�y�ڦn�N�ڡC�C�C�ݨӭn�R�@�ǫO�x���F��F   BY �ڤ��O�B�z",0
preface15 BYTE "�u�o�Ǩ쩳�O����ڡA�u�_�ǡC�v",0
preface16 BYTE "�A½���O���̫�@��",0
preface17 BYTE "�y�˷R���D�Ԫ̱z�n���w��z�Ө�m�զXyuan--��r�C���j�_�I�n",0
preface18 BYTE "�۫H�z�@�w�D�`���ݮi�}�_�I�F��a !�z",0
preface19 BYTE "�u......�v",0
preface20 BYTE "�y�z�@�w�ܦn�_������A�b�o�̹�a�A���״N�O......�S����]�I�z",0
preface22 BYTE "�u�F�v",0
preface23 BYTE "�y�z�ݭn�b�o���ж�����M�u���k��A",0
preface24 BYTE "���U�i�ť���j�ɥi�H�d�ݪ��~�A",0
preface25 BYTE "���U�iE�j�ɡA�i�H�ϥιD���椺���D��A",0
preface26 BYTE "���U�iW/S/A/D�j�ɤ��O�O�W/�U/��/�k���ʡA�H�W�N�O�C���W�h�C",0
preface27 BYTE "���z����B�ΦU�ءu��r�v���޿����A���Q�k�X�ͤѡI",0
preface28 BYTE "To be or not to be continue�z",0
preface29 BYTE "�i�Ы�P�}�l�C���j",0


prefacexy COORD <40, 15>
;-----------------------------------------------bg------------------------------------------------------------

boxTop    BYTE BoxWidth DUP("��")
boxBody   BYTE "��", (BoxWidth - 2) DUP('�@'), "��"		
boxBottom BYTE BoxWidth DUP("��")
wallxy COORD <2,2>	

toolBox BYTE "�D����G",0
Boxxy COORD <2,42>

;------------------------------------------level1--------------------------------------------------------------

level1end BYTE 0

micro_wave BYTE   "�n�N��A�̪����Ҧ��R�@�e�@�M�A�b�H�N���V�ѦY�W��X�o�窺�j���֩w�W���֪��ԡI",0
micro_wave1 BYTE  "��...����W���w�g�n���F�����A",0
micro_wave2 BYTE  "�쥻�Q���j�����[���A���Ǥͫ�ĳ�ڥi�H���L�i�l�C�A",0
micro_wave3 BYTE  "���N���h�[���F��...�H",0

no_get_fries BYTE "���A�O�n������աH�ġH�A�����N��H�~��}��..."
fries BYTE "��o�N�����j���@���A�����N��H�~��}��..."

whitebg BYTE "�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@      �@�@�@�@",0
cold_fries BYTE  "�@�ġ@�@�@�@�ġ@�@�@�@�ġ@�@�@�@�ġ@�@�@�@�ġ@",0
cold_fries1 BYTE "�U�@�U�@�@�U�@�U�@�@�U�@�U�@�@�U�@�U�@�@�U�@�U",0
cold_fries2 BYTE "�U�@�U�@�@�U�@�U�@�@�U�@�U�@�@�U�@�U�@�@�U�@�U",0
cold_fries3 BYTE "�U�@�U�@�@�U�@�U�@�@�U�@�U�@�@�U�@�U�@�@�U�@�U",0
cold_fries4 BYTE "�U�@�U�@�@�U�@�U�@�@�U�@�U�@�@�U�@�U�@�@�U�@�U",0
cold_fries5 BYTE "�U�@�U�@�@�U�@�U�@�@�U�@�U�@�@�U�@�U�@�@�U�@�U",0
cold_fries6 BYTE "�@�ġ@�@�@�@�ġ@�@�@�@�ġ@�@�@�@�ġ@�@�@�@�ġ@",0
oil_pot BYTE "�U�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�U",0
oil_pot1 BYTE "�U��������������������������U",0
oil_pot2 BYTE "�U�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�U",0
oil_pot3 BYTE "�U�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�U",0
oil_pot4 BYTE  "�ġġġġġġġġġġġġġġġġġġġġġġġġġġ�",0
nofries BYTE "�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@",0

fried_fries BYTE "�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@",0
fried_fries1 BYTE "�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@����@�@�@�@�@�@�@�@�@�@�@�@",0
fried_fries2 BYTE "�@�@�@�@�@�@��@�@�@�@�@�@�@�@�@�@����@�@�@�@�@�@�@�@�@�@�@�@",0
fried_fries3 BYTE "�@�@�@�@�@�@��@�@��@�@�@�@�@�@�@����@�@�����@�@�@����@�@�@�@�@",0
fried_fries4 BYTE "�@�@�@�@�@�@��@�@���@�@����@���@�@�@�����@�@�@�����@�@�@�@",0
fried_fries5 BYTE "�@�@�@�@�@�@��@�@���@�@����@���@�@�@�����@�@�����@�@�@�@",0
fried_fries6 BYTE "�@�@�@�@�@�@��@�@���@�@����@����@�@�����@�@�����@�@�@�@�@",0
fried_fries7 BYTE "�@�@�@�@�@�@��@�@���@�@����@����@�@����@�@�����@�@�@�@�@",0
fried_fries8 BYTE "�@�@�@�@�@�@��@�@���@�@����@����@�@����@�@����@�@�@�@�@�@",0
fried_fries9 BYTE "�@�@�@�@�@�@���@���@�@���@�@����@�@����@�@����@�@�@�@�@�@",0
fried_fries10 BYTE "�@�@�@�@�@�����������������������������������������������������@�@�@�@�@",0
fried_fries11 BYTE "�@�@�@�@�@�@���������������������������������������������������@�@�@�@�@",0
fried_fries12 BYTE "�@�@�@�@�@�@���������������������������������������������������@�@�@�@�@",0
fried_fries13 BYTE "�@�@�@�@�@�@���������������@�@�@���@�������@�@���������������@�@�@�@�@�@",0
fried_fries14 BYTE "�@�@�@�@�@�@�@�������������@�@�����@�@�@�@���@�@�������������@�@�@�@�@�@",0
fried_fries15 BYTE "�@�@�@�@�@�@�@�������������@�@�������@�@�����@�@�������������@�@�@�@�@�@",0
fried_fries16 BYTE "�@�@�@�@�@�@�@�������������@�@�������@�@�����@�@�����������@�@�@�@�@�@�@",0
fried_fries17 BYTE "�@�@�@�@�@�@�@�@�����������@�@�������@�@�����@�@�����������@�@�@�@�@�@�@",0
fried_fries18 BYTE "�@�@�@�@�@�@�@�@�����������@�@�������@�@�����@�@�����������@�@�@�@�@�@�@",0
fried_fries19 BYTE "�@�@�@�@�@�@�@�@�@���������������������������������������@�@�@�@�@�@�@�@",0
fried_fries20 BYTE "�@�@�@�@�@�@�@�@�@���������������������������������������@�@�@�@�@�@�@�@",0
fried_fries21 BYTE "�@�@�@�@�@�@�@�@�@���������������������������������������@�@�@�@�@�@�@�@",0
fried_fries22 BYTE "�@�@�@�@�@�@�@�@�@�������������������������������������@�@�@�@�@�@�@",0
fried_fries23 BYTE "�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@",0

fried_french_fries_announce BYTE "���ߧA��me��������!��o��M�@��",0
fried_french_fries_announce1 BYTE "�a�ۥL�h��M�U�@���a",0
fried_french_fries_announce2 BYTE "���U�ť��䵲��(��~��)881",0

cold_friesxy COORD <43,12>
oil_potxy COORD <40,20>
friesxy COORD <40, 30>
friedfriesxy COORD <30, 4>
nofriesxy COORD <43,10>
whitebgxy COORD <7,3>

cellsWritten DWORD ?

get_cold_fries BYTE "�j��",0
get_cold_friesspace BYTE "�@�@",0
whether_get_cold_fries BYTE 0

;------------------------------------------level2--------------------------------------------------------------
l2tol3 BYTE "���ߧA�q�L�ĤG��", 0 
l2tol31 BYTE "��o�q�����y�G����٤U�����C", 0
money BYTE 68 DUP('�C')
moneyspace BYTE 68 DUP('�@')
l2tol3xy COORD <50, 15>
moneyxy COORD <4,3>

content BYTE "�ƨ�ig�W�@��v�Y���ɬV�v�@�~",0
content1 BYTE "�n�n�ݡA�n�Q�h�V��", 0
content2 BYTE "�p�G�گ���֦��@�Y�}�G���L���⺥�h�Y�@�w�ܴΡI", 0
content3 BYTE "��......", 0
content4 BYTE "����ܦ��å����F�I�Y�s�ġs�Y", 0
content5 BYTE "�Y�v�ש��ܦ��n�ݪ����h����F", 0
content6 BYTE "�]�w���@�ݥ����f�b", 0
content7 BYTE "�z�a�A�o�O����L�}�v�Y�A�V���Y�v���M�n�o��Q�I", 0
content8 BYTE "���]�n���_�F�A���i��n�E�d��A���", 0
contentxy COORD <12, 8>
contentcount BYTE 0

toolcontent BYTE "�O�i�H���C��}�ժ��}�դ��C", 0
toolcontent1 BYTE "�z�ɡI�ܦn�ݤF�I�ӷP�ʤF��", 0
toolcontent2 BYTE "�h���F�A�o�ӡu��v�������", 0
toolcontent3 BYTE "�٤U�F�@�j�����C�C�C", 0

tool0 BYTE "�M", 0
tool0get DWORD 0

tool1 BYTE "�}�դ�", 0
tool1get DWORD 0

tool2 BYTE "��",0
tool2get DWORD 0
tool2xy COORD <28, 17>

tool3 BYTE "�a",0
tool3get DWORD 0
tool3xy COORD <30, 17>

tool4 BYTE "�Q",0
tool4get DWORD 0
tool4xy COORD <38, 17>

tool5 BYTE "�@",0
tool5get DWORD 0
tool5xy COORD <38, 17>

tool6 BYTE "/_",0
tool6get DWORD 0
tool6xy COORD <38, 17>

tool7 BYTE "�C", 0
tool7get DWORD 0
;------------------------------------------startword------------------------------------------------------------

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
		.IF al == "p" || al == "P"
			je draw_preface
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

;------------------------------------------------preface-------------------------------------------------------
	draw_preface:
		INVOKE GetStdHandle, STD_OUTPUT_HANDLE
			mov outputHandle, eax
			call Clrscr
		call preface
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

		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	 
		   ADDR toolBox,	 
		   sizeof toolBox-1,	 
		   Boxxy,	
		   ADDR count	
		add Boxxy, SIZEOF toolBox+1

	;-----------------------------------------------level1---------------------------------------------------------------

	mov mexy.x, 42
	mov mexy.y, 14
	INVOKE Sleep, 1000
	call level1
	call level1move

	INVOKE Sleep, 2000
	;-----------------------------------------------level2---------------------------------------------------------------
	mov mexy.x, 16
	mov mexy.y, 14

	call level2
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR me,	
		sizeof me - 1,
		mexy,	
		ADDR count	
	
	call level2move

	;-----------------------------------------------level2_2-------------------------------------------------------------
	INVOKE Sleep, 3000
	call level2_2
	call level2_2move

	;------------------------------------------------l2tol3-------------------------------------------------------------
	INVOKE Sleep, 2000
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR l2tol3,	
		sizeof l2tol3-1,
		l2tol3xy,	
		ADDR count	

	add l2tol3xy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR l2tol31,	
		sizeof l2tol31-1,
		l2tol3xy,	
		ADDR count	
	
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR tool7,	
		sizeof tool7-1,
		Boxxy,	
		ADDR count
	inc tool7get

	INVOKE Sleep, 2000
	mov ecx, 37
	Lmoney: push ecx
		INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR money,	
		sizeof money,
		moneyxy,	
		ADDR count	

		inc moneyxy.y
		INVOKE Sleep, 50

		pop ecx
		Loop Lmoney
	
	mov moneyxy.y, 3

	mov ecx, 37
	Lmoneyspace: push ecx
		INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR moneyspace,	
		sizeof moneyspace,
		moneyxy,	
		ADDR count	

		inc moneyxy.y
		INVOKE Sleep, 50

		pop ecx
		Loop Lmoneyspace



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


	   ; ��s�y�Ц^�쥻��//////////////////////////////

	ret


level1 ENDP

;----------------------------------------------------level1 refresh_bg---------------------------------------------------------

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

;----------------------------------------------------level1 draw_touch_fries -----------------------------------------------------

draw_touch_fries PROC
	
	   INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR fries,	; pointer to the top box line
	   sizeof fries -1,	; size of box line
	   friesxy,	
	   ADDR count	; output count

	   INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR get_cold_fries,	
			sizeof get_cold_fries-1,
			Boxxy,	
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
			
draw_touch_fries ENDP

;------------------------------------------------level1 draw_touch_oil--------------------------------------------

draw_touch_oil PROC
	
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR get_cold_friesspace,	
		sizeof get_cold_friesspace-1,
		Boxxy,	
		ADDR count

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

;------------------------------------------------------level1 draw_fried_french_fries--------------------------------------

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

	   INVOKE WriteConsoleOutputCharacter,
		outputHandle,	 
		ADDR tool0,	 
		sizeof tool0-1,	 
		Boxxy,	
		ADDR count	

		add Boxxy, SIZEOF tool0+1

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

	   inc level1end

		ret

draw_fried_french_fries ENDP

;-----------------------------------------------------level1 draw_no_french_fries-----------------------------------------------------

draw_no_french_fries PROC
	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	 
	   ADDR nofries,	 
	   sizeof nofries -1,	 
	   nofriesxy,	 
	   ADDR count	 
	   inc nofriesxy.y

draw_no_french_fries ENDP

;-----------------------------------------------------level1 draw_french_fries ---------------------------------------------------------

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

;-----------------------------------------------------level1 draw_you_do_not_have_fries-----------------------------------------------------

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

;-----------------------------------------------------------level1 draw_oil_pot------------------------------------------------------

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

;------------------------------------------------level1 whether_touch_fries---------------------------------------

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
		
;----------------------------------------------level1 whether_touch_oil ----------------------------------------------------

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

;-----------------------------------------------level1move------------------------------------------------------
level1move PROC
start:
		
		.IF level1end == 1
			ret
		.ENDIF

		call ReadChar  ; �q��LŪ���@�Ӧr�� 

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
	
	mov contentcount, 0
	mov contentxy.x, 12
	mov contentxy.y, 8


	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR content,	
		sizeof content-1,
		contentxy,	
		ADDR count

	add contentxy.y, 3

	startlevel2:
		call ReadChar
		cmp al, " "
		je which
		jmp startlevel2

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

			jmp startlevel2

		continue2:
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR content2,	
			sizeof content2-1,
			contentxy,	
			ADDR count

			add contentxy.y, 3
			inc contentcount

			jmp startlevel2

		continue3:
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR content3,	
			sizeof content3-1,
			contentxy,	
			ADDR count

			add contentxy.x, sizeof content3-1
			inc contentcount

			jmp startlevel2

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
		call ReadChar  ; �q��LŪ���@�Ӧr�� 


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

		.IF al == "e" || al == "E"
			je use
		.ENDIF

		jmp continue

;-----------------------------------------colusion---------------------------------------------

	colusionr:
		mov ax, mexy.x
		cmp ax, 138
		jb colusion_contentr
		jmp continue

		colusion_contentr:

			.IF mexy.x == 16 && mexy.y == 14
				jmp continue
			.ENDIF

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

		.IF mexy.x == 16 && mexy.y == 14
				jmp continue
		.ENDIF

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
			sub Boxxy.x , sizeof tool0+1

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
		call ReadChar  ; �q��LŪ���@�Ӧr�� 

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

		.IF al == "e" || al == "E"
			je use
		.ENDIF

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
				ADDR space,	
				sizeof space-1,
				Boxxy,
				ADDR count

			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR toolcontent2,	
				sizeof toolcontent2-1,
				contentxy,	
				ADDR count

			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR space,	
				sizeof space-1,
				mexy,	
				ADDR count
			
			add contentxy.y, 3
			Invoke sleep, 2000

			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR toolcontent3,	
				sizeof toolcontent3-1,
				contentxy,	
				ADDR count
			
			Invoke sleep, 2000

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
			add contentxy.y, 3

			mov ecx, 13
			S6:push ecx
				INVOKE WriteConsoleOutputCharacter,
					outputHandle,	
					ADDR space,	
					sizeof space-1,
					contentxy,	
					ADDR count
				add contentxy.x, 2
				pop ecx
				loop S6

			mov contentxy.x, 12
			add contentxy.y, 3

			mov ecx, 10
			S7:push ecx
				INVOKE WriteConsoleOutputCharacter,
					outputHandle,	
					ADDR space,	
					sizeof space-1,
					contentxy,	
					ADDR count
				add contentxy.x, 2
				pop ecx
				loop S7
			
			

			ret
		.ENDIF


	continue:
		jmp start

level2_2move ENDP

preface PROC
	
	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface1,	
	   sizeof preface1 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface2,	
	   sizeof preface2 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000


	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface3,	
	   sizeof preface3 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface4,	
	   sizeof preface4 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;�]�� GetStdHandle �|�s��eax�A�Neax�����Ȧs�JoutputHandle
	call Clrscr

	mov prefacexy.y, 15

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface5,	
	   sizeof preface5 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface6,	
	   sizeof preface6 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface7,	
	   sizeof preface7 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;�]�� GetStdHandle �|�s��eax�A�Neax�����Ȧs�JoutputHandle
	call Clrscr

	mov prefacexy.y, 15

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface8,	
	   sizeof preface8 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface9,	
	   sizeof preface9 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 3

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface10,	
	   sizeof preface10 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface11,	
	   sizeof preface11 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 3

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface12,	
	   sizeof preface12 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface13,	
	   sizeof preface13 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface14,	
	   sizeof preface14 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;�]�� GetStdHandle �|�s��eax�A�Neax�����Ȧs�JoutputHandle
	call Clrscr

	mov prefacexy.y, 15

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface15,	
	   sizeof preface15 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;�]�� GetStdHandle �|�s��eax�A�Neax�����Ȧs�JoutputHandle
	call Clrscr

	mov prefacexy.y, 15

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface16,	
	   sizeof preface16 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface17,	
	   sizeof preface17 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface18,	
	   sizeof preface18 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface19,	
	   sizeof preface19 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;�]�� GetStdHandle �|�s��eax�A�Neax�����Ȧs�JoutputHandle
	call Clrscr

	mov prefacexy.y, 15

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface20,	
	   sizeof preface20 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface22,	
	   sizeof preface22 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;�]�� GetStdHandle �|�s��eax�A�Neax�����Ȧs�JoutputHandle
	call Clrscr

	mov prefacexy.y, 15

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface23,	
	   sizeof preface23 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface24,	
	   sizeof preface24 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface25,	
	   sizeof preface25 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface26,	
	   sizeof preface26 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface27,	
	   sizeof preface27 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface28,	
	   sizeof preface28 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 4

	INVOKE Sleep, 4000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface29,	
	   sizeof preface29 -1,
	   prefacexy,	
	   ADDR count

	playgame:

		call ReadChar  ; �q��LŪ���@�Ӧr�� 

		.IF al == "p" || al == "P"
			ret
		.ENDIF

		jmp playgame

preface ENDP
END main
