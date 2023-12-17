;修了一些小bug和加結尾動畫
;增加的PROC叫endinganime, 變數在15行, PROC在744行, call在1688

INCLUDE Irvine32.inc

BoxWidth = 70d	;設定寬
BoxHeight = 39d	;設定長

.data
me byte "我", 0
space byte "　",0
space1 byte "　　　",0
mexy COORD <90,25>

;====================================endinganime=======================
endcxy COORD <40, 15>
endpxy COORD <60, 10>

endc1 BYTE "「你騙我！到底要怎樣才可以出去這個鬼地方」",0
endc2 BYTE "「嗚嗚嗚線代考試嗚嗚嗚嗚嗚」",0

endp1 BYTE "啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊",0
endp2 BYTE "啊　　　　　　　　　　　　　　啊",0

endp6 BYTE "啊　啊啊　　　　　　　　　　　啊",0
endp7 BYTE "啊　啊啊　　　　　　　　　　　啊",0
endp8 BYTE "啊　　　　　　　　啊啊啊　　　啊",0
endp9 BYTE "啊　　　　　　　啊啊啊啊　　　啊",0
endp10 BYTE "啊　　　　　　　　啊啊　　　　啊",0
endp11 BYTE "啊　　　　　　　啊啊啊啊　　　啊",0
endp12 BYTE "啊　　　　　　啊啊啊啊啊啊　　啊",0
endp13 BYTE "啊　　　　　　啊啊啊啊啊啊　　啊",0
endp14 BYTE "啊　　　　　　啊啊啊啊啊啊　　啊",0
endp15 BYTE "啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊",0
endp16 BYTE "製作名單：ＡＡＡ",0
endp17 BYTE "　　　　　ＢＢＢ",0
endp18 BYTE "　　　　　ＣＣＣ",0
endp19 BYTE "　　　　　ＤＤＤ",0
endp20 BYTE "感謝遊玩此遊戲！",0

;-----------------------------------------------preface------------------------------------------------------
preface1 BYTE "「這是哪？我怎麼躺在地上？」",0
preface2 BYTE "「頭好痛......」",0
preface3 BYTE "你的後腦杓傳來陣陣疼痛，環顧四周卻發現這裡是一個陌生的房間",0
preface4 BYTE "「FUCK，他媽的這裡到底是哪 ?」",0
preface5 BYTE "接著你走到門口發現一扇門，輕輕一推......",0
preface6 BYTE "「這扇破門竟然打不開！我還要去考柏齊線代，這次沒去我必死無疑啊啊啊啊咦嗚誒喔？」",0
preface7 BYTE "這時，你發現地上有一個日記本",0
preface8 BYTE "你打開日記本的第一頁，發現上面寫著",0
preface9 BYTE "『我好恨啊......心心念念的東西居然冷掉了，讓我更心寒了啊    BY「．____．」』",0
preface10 BYTE "你翻到下一頁",0
preface11 BYTE "『我的頭髮啊啊啊，我不想變芭比娃娃QAQ    BY 。。。。。』",0
preface12 BYTE "你再翻到下一頁",0
preface13 BYTE "『看來叫李O赫的都會拿冠軍  李真強 lol  BY py not piyan』",0
preface14 BYTE "『我好冷啊。。。看來要買一些保暖的東西了   BY 我不淋雨』",0
preface15 BYTE "「這些到底是什麼啊，真奇怪。」",0
preface16 BYTE "你翻到日記本最後一頁",0
preface17 BYTE "『親愛的挑戰者您好～歡迎您來到《組合yuan--文字遊戲大冒險》",0
preface18 BYTE "相信您一定非常期待展開冒險了對吧 !』",0
preface19 BYTE "「......」",0
preface20 BYTE "『您一定很好奇為什麼你在這裡對吧，答案就是......沒有原因！』",0
preface22 BYTE "「幹」",0
preface23 BYTE "『您需要在這間房間內找尋線索逃脫，",0
preface24 BYTE "按下【空白鍵】時可以查看物品，",0
preface25 BYTE "按下【E】時，可以使用道具欄內的道具，",0
preface26 BYTE "按下【W/S/A/D】時分別是上/下/左/右移動，以上就是遊戲規則。",0
preface27 BYTE "祝您能夠運用各種「文字」的邏輯思維，順利逃出生天！",0
preface28 BYTE "To be or not to be continue』",0
preface29 BYTE "【請按P開始遊戲】",0


prefacexy COORD <40, 15>
;-----------------------------------------------bg------------------------------------------------------------

boxTop    BYTE BoxWidth DUP("牆")
boxBody   BYTE "牆", (BoxWidth - 2) DUP('　'), "窗"		
boxBottom BYTE BoxWidth DUP("牆")
wallxy COORD <2,2>	

toolBox BYTE "道具欄：",0
Boxxy COORD <2,42>

;---------------------------------------- 主畫面 -----------------------------------

mainbg0   BYTE 26 DUP('　'), "浴", 3 DUP('　'), 2 DUP("桌"), 16 DUP('　'), 2 DUP("板"), 16 DUP('　'), 2 DUP("桌"),0  ;loop 4 次
mainbg1   BYTE 26 DUP('　'), "浴", 3 DUP('　'), 18 DUP("桌"), 2 DUP("板"), 18 DUP("桌"),0  
mainbg2   BYTE 26 DUP('　'), "浴", 3 DUP('　'), 18 DUP('　'), 2 DUP("板"), 18 DUP('　'), 0 ;2~8 可放名牌
mainbg3   BYTE 26 DUP('　'), "浴", 3 DUP('　'), 18 DUP('　'), 2 DUP("板"), 18 DUP('　'), 0
mainbg4   BYTE 26 DUP('　'), "浴", 3 DUP('　'), 8 DUP('　'), " ---- ", 7 DUP('　'), 2 DUP("板"), 8 DUP('　'),  " ---- ", 0 
mainbg5   BYTE 26 DUP('　'), "浴", 3 DUP('　'), 8 DUP('　'), "|７７|", 7 DUP('　'), 2 DUP("板"), 8 DUP('　'),  "|淋雨|", 0 
mainbg6   BYTE 26 DUP('　'), "浴", 3 DUP('　'), 8 DUP('　'), " ---- ", 7 DUP('　'), 2 DUP("板"), 8 DUP('　'),  " ---- ", 0 
mainbg7   BYTE 26 DUP('　'), "浴", 3 DUP('　'), 18 DUP('　'), 2 DUP("板"), 18 DUP('　'), 0
mainbg8   BYTE 26 DUP('　'), "浴", 3 DUP('　'), 18 DUP('　'), 2 DUP("板"), 18 DUP('　'), 0
mainbg10  BYTE 26 DUP('　'), "浴", 41 DUP('　'), 0 ; loop 6次
mainbg11  BYTE 10 DUP('浴'), "閂", 10 DUP('浴'), 2 DUP("鏡"), 3 DUP('浴'), "浴", 41 DUP('　'), 0
mainbg12  BYTE 37 DUP('　'), 0 ;loop 5次
mainbg13  BYTE 30 DUP('　'), 18 DUP('　'), 2 DUP("板"), 18 DUP('　'), 0 ;13~19 可放名牌
mainbg14  BYTE 30 DUP('　'), 18 DUP('　'), 2 DUP("板"), 18 DUP('　'), 0 
mainbg15  BYTE 30 DUP('　'), 8 DUP('　'), " ---- ", 7 DUP('　'), 2 DUP("板"), 8 DUP('　'),  " ---- ", 0 
mainbg16  BYTE 30 DUP('　'), 8 DUP('　'), "| 圓 |", 7 DUP('　'), 2 DUP("板"), 8 DUP('　'),  "|ＰＹ|", 0 
mainbg17  BYTE 30 DUP('　'), 8 DUP('　'), " ---- ", 7 DUP('　'), 2 DUP("板"), 8 DUP('　'),  " ---- ", 0 
mainbg18  BYTE 30 DUP('　'), 18 DUP('　'), 2 DUP("板"), 18 DUP('　'),0  
mainbg19  BYTE 30 DUP('　'), 18 DUP('　'), 2 DUP("板"), 18 DUP('　'), 0 
mainbg21  BYTE 30 DUP('　'), 18 DUP("桌"), 2 DUP("板"), 18 DUP("桌"),0 
mainbg22  BYTE 30 DUP('　'), 2 DUP("桌"), 16 DUP('　'), 2 DUP("板"), 16 DUP('　'), 2 DUP("桌"),0  ;loop 4 次

mainbgxy COORD <4, 3>

maindoor BYTE "閂", 0
maindoorxy COORD <2, 30>

maindoor1 BYTE "門", 0

mirror BYTE "鏡鏡", 0
mirror1xy COORD <46, 21>
mirror2xy COORD <48, 21>


menucontentspace BYTE 26 DUP("　")
menucontentspacexy COORD <4, 3>

menucontent0 BYTE "又回到最初的起點", 0
menucontent1 BYTE "呆呆地站在鏡子前", 0
menucontent2 BYTE "這裡是浴室 ", 0
menucontent3 BYTE "怎麼可以偷窺別人洗澡呢 `^′ ", 0


menucontent4 BYTE "level1", 0
menucontent5 BYTE "欸欸欸，前面還沒解完想幹嘛", 0
menucontent6 BYTE "level3", 0
menucontent7 BYTE "還沒醒，不要叫我 @#$%^&*", 0

menucontent10 BYTE "恭喜您成功逃出生天！", 0
menucontent11 BYTE "別急別急，馬上就能出去了", 0

menucontent12 BYTE "啊，今晚的月色真~美~", 0

menucontentxyinitial COORD <14, 9>
menucontentxy COORD <14, 9>
;------------------------------------------level1--------------------------------------------------------------

level1end BYTE 0

micro_wave BYTE   "好冷喔，最近麥當勞有買一送一誒，在寒冷的冬天吃上剛出油鍋的大薯肯定超幸福的拉！",0
micro_wave1 BYTE  "啊...怎麼桌上的已經軟掉了ㄚㄚ，",0
micro_wave2 BYTE  "原本想拿吹風機加熱，但室友建議我可以放到微波爐耶，",0
micro_wave3 BYTE  "那就拿去加熱了喔...？",0

no_get_fries BYTE "阿你是要炸什麼啦？＿？，按任意鍵以繼續破關..."
fries BYTE "獲得冷掉的大薯一份，按任意鍵以繼續破關..."

whitebg BYTE BoxWidth-2 DUP("　"),0
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

get_cold_fries BYTE "大薯",0
get_cold_friesspace BYTE "　　",0
whether_get_cold_fries BYTE 0

;------------------------------------------level2--------------------------------------------------------------
l2tol3 BYTE "恭喜你通過第二關", 0 
l2tol31 BYTE "獲得通關獎勵：砍價省下的錢＄", 0
money BYTE 68 DUP('＄')
change BYTE 136 DUP('▇')
moneyspace BYTE 68 DUP('　')
l2tol3xy COORD <50, 15>
moneyxy COORD <4,3>

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

tool0 BYTE "刀", 0
tool0get DWORD 0

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

tool7 BYTE "$$", 0
tool7get DWORD 0

tool8xy COORD <>

tool8 BYTE "線圈", 0

tool9 BYTE "電池",0

tool10 BYTE "電池鐵",0

tool11 BYTE "　　　　　　　　　　",0

toolend BYTE "鎮寢之寶",0
toolendget DWORD 0
;---------------------------------------- level 3 by py -----------------------------------
be_master PROTO
move_right31 PROTO
move_left31 PROTO
move_up31 PROTO
move_down31 PROTO
move_right32 PROTO
move_left32 PROTO
move_up32 PROTO
move_down32 PROTO

tool1_3 BYTE " $$ ",0
tool11_3 BYTE " $  ",0	
tool2_3 BYTE " 芋圓 ",0
tool3_3 BYTE " 柚子 ",0
tool4_3 BYTE " 芋圓柚子 ",0
tool3_xy COORD <10,42>
tool3_1xy COORD <14, 42>
get_tool BYTE 0
tool5_3 BYTE "一個鵝子",0
tool6_3 BYTE "兩個鵝子",0
tool7_3 BYTE "三個鵝子",0
tool8_3 BYTE "四個鵝子",0
tool3_2xy COORD <10,42>
tool_3 BYTE "鐵棒",0

tool_clear BYTE "　　　　　　　　", 0
toolcxy COORD <10,42>

clearspace BYTE 68 DUP('　')
clearxy COORD <4, 4>
ending_clear BYTE 68 DUP('ㄏ')

level3_1 BYTE   "組語期末報告還沒打完，但",0 ;y=8
level3_1_2 BYTE   "好餓喔OAO",0
level3_2  BYTE  "去宵夜街買仙草加芋圓吃好了",0
level3_3  BYTE  "宿舍還有柚子可以配",0
level3_4  BYTE  "欸欸，你們知道....",0
level3_5  BYTE  " : 蛤 什麼啦　話不要講一半!!!!",0
level3_6  BYTE  "----------------------------------",0
level3_7  BYTE  "任務一： ",0
level3_8  BYTE  "讓室友繼續講下去.... ",0
level3_9  BYTE  "-----------(移動以開始)------------",0
level3_91  BYTE  "你好了啦 不要芋言柚止的 快點講!!",0
textcount BYTE 0 
textxy COORD <12,8>
mexy_3 COORD <12,8>

level3_10 BYTE   "齁好啦",0
level3_11 BYTE   "你們知道為什麼吃雞肉蛋吐司的時候",0
level3_12  BYTE  "蛋都會滑下去嗎 ",0
level3_13  BYTE  "因為時間久了就會蛋掉了: )",0
level3_14  BYTE  " : 你好了啦閉嘴",0
level3_15  BYTE  "要拿我們上次去買的鵝子(玩偶)砸你!!!",0
level3_16  BYTE  "----------------------------------",0
level3_17  BYTE  "任務二： ",0
level3_18  BYTE  "讓室友閉嘴(剛剛好就好...)... ",0
level3_19  BYTE  "-----------(移動以開始)-----------",0
text2xy COORD <12,8>
me2xy_3 COORD <12,23>

get_mes1 BYTE  "獲得鵝子一隻", 0
get_mes2 BYTE  "再多拿一些看看 ?", 0
get_mes3 BYTE  "還不夠!!", 0
get_mes4 BYTE  "去試試看吧ouo", 0
get_mes5 BYTE  "好了啦夠了啦", 0
get_mes COORD <12, 33>

showresult BYTE   ": 給我適可鵝止啦!!",0
showresult2 BYTE   "欸這諧音不錯 給過",0
showresult3 BYTE   ": ??????????????",0

ending1 BYTE  "獲得通關道具「鐵棒」", 0
ending2 BYTE  "恭喜通過第三關owo", 0
ending3 BYTE  "雖然你沒有身騎白馬", 0
ending4 BYTE  "喔對 給你看個可愛的東西", 0
ending5 BYTE  "是Dora的碗欸", 0
ending6 BYTE  "A-dora-bowl", 0

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
;=================================lv4=============================
lv4mexy COORD <26,8>
lv4contentxy COORD <12, 8>
lv4compxy COORD <40,11>
lv4con8xy COORD <90, 8>
lv4pright BYTE 1
lv4cxy COORD <30, 18>
;------------------------level4-------------------------------------------------------------------
lv4_con1 BYTE "實在是太冷了！我急需買一條圍巾來保暖…",0
lv4_con2 BYTE "啊…怎麼千辛萬苦買來的圍巾上有防盜磁釦啊！",0
lv4_con3 BYTE "看來要想辦法把它解開…",0
lv4_con4 BYTE "欸？桌上好像有一些東西…",0
lv4_con5 BYTE "是去夜市時買東西附贈的線圈、一個無線滑鼠和一些零食？！",0
lv4_con6 BYTE "…啊！這些東西剛好可以組成電磁鐵！",0
lv4_con8 BYTE "現在不是吃零食的時候了!",0
lv4_con9 BYTE "這個怎麼在這裡…先拿著好了…",0
lv4_con10 BYTE "這個裡面的電池應該有用…",0
lv4_con11 BYTE "防盜　　磁釦",0
lv4_con12 BYTE "終於可以穿上圍巾出門了…欸？！這是什麼東西呀？！！抹布洗！！！！！",0
lv4_con14 BYTE "你成功獲得鎮寢之寶！！！！！",0

lv4_con13 BYTE BoxWidth-2 DUP("▇▇"),0
lv4pl WORD 0
lv4pb WORD 0
lv4pa WORD 0
lv4pc WORD 0
;=================================================lv4over==============================================
outputHandle DWORD 0
count DWORD 0
level1finish DWORD 0
level2finish DWORD 0
level3finish DWORD 0
level4finish DWORD 0

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

;------------------------------------------------preface-------------------------------------------------------
	draw_preface:
		INVOKE GetStdHandle, STD_OUTPUT_HANDLE
			mov outputHandle, eax
			call Clrscr
	;	call preface


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
		add Boxxy, SIZEOF toolBox+1

		call main_menu
		call menu_move
	;-----------------------------------------------level1---------------------------------------------------------------
		
		inc level1finish
		mov mexy.x, 90
		mov mexy.y, 25
		call main_menu
		call menu_move
	;-----------------------------------------------level2---------------------------------------------------------------
		
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

	sub Boxxy.x, 1
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

		inc level2finish
		mov mexy.x, 90
		mov mexy.y, 25
		call main_menu
		call menu_move
;-----------------------------------------------level 3-------------------------------------------------------------
		inc level3finish
		mov mexy.x, 90
		mov mexy.y, 25
		call main_menu
		call menu_move
;-----------------------------------------------level 4-------------------------------------------------------------
		inc level4finish
		mov mexy.x, 90
		mov mexy.y, 25
		call main_menu
		call menu_move

	exit
main ENDP
;=================================================endinganime==============================
endinganime PROC
	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
		mov outputHandle, eax
		call Clrscr
	
	
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endc1,	
		sizeof endc1 -1,	
		endcxy,	
		ADDR count
	add endcxy.y, 3
	INVOKE Sleep ,2000

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endc2,	
		sizeof endc2 -1,	
		endcxy,	
		ADDR count
	INVOKE Sleep ,2000
	
	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
		mov outputHandle, eax
		call Clrscr

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp1,	
		sizeof endp1 -1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	mov ecx, 8
L:
	push ecx
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp2,	
		sizeof endp2 -1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	pop ecx
	Loop L

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp6,	
		sizeof endp6 -1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp7,	
		sizeof endp7 -1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp8,	
		sizeof endp8 -1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp9,	
		sizeof endp9 -1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp10,	
		sizeof endp10 -1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp11,	
		sizeof endp11 -1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp12,	
		sizeof endp12 -1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp13,	
		sizeof endp13 -1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp14,	
		sizeof endp14 -1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	sub endpxy.x, 18
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp15,
		sizeof endp15-1,	
		endpxy,	
		ADDR count
	add endpxy.y,2
	add endpxy.x, 30
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp16,
		sizeof endp16-1,	
		endpxy,	
		ADDR count
	inc endpxy.y

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp17,
		sizeof endp17-1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp18,
		sizeof endp18-1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp19,
		sizeof endp19-1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR endp20,
		sizeof endp20-1,	
		endpxy,	
		ADDR count
	inc endpxy.y
	INVOKE Sleep, 10000

	ret
endinganime ENDP
;---------------------------------------- 主畫面 main_menu PROC -----------------------------------
main_menu PROC

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR maindoor,	
		sizeof maindoor -1,	
		maindoorxy,	
		ADDR count

	mov ecx, 4
		Lbg1:
			push ecx
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR mainbg0,	
				sizeof mainbg0 -1,	
				mainbgxy,	
				ADDR count	
			inc mainbgxy.y
			pop ecx
			loop Lbg1
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg1,	
			sizeof mainbg1 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg2,	
			sizeof mainbg2 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg3,	
			sizeof mainbg3 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg4,	
			sizeof mainbg4 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg5,	
			sizeof mainbg5 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg6,	
			sizeof mainbg6 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg7,	
			sizeof mainbg7 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg8,	
			sizeof mainbg8 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		mov ecx, 6
		Lbg2:
			push ecx
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR mainbg10,	
				sizeof mainbg10 -1,	
				mainbgxy,	
				ADDR count	
			inc mainbgxy.y
			pop ecx
			loop Lbg2

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg11,	
			sizeof mainbg11 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		mov ecx, 6
		Lbg3:
			push ecx
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR mainbg12,	
				sizeof mainbg12 -1,	
				mainbgxy,	
				ADDR count	
			inc mainbgxy.y
			pop ecx
			loop Lbg3

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg13,	
			sizeof mainbg13 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg14,	
			sizeof mainbg14 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg15,	
			sizeof mainbg15 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg16,	
			sizeof mainbg16 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg17,	
			sizeof mainbg17 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg18,	
			sizeof mainbg18 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg19,	
			sizeof mainbg19 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR mainbg21,	
			sizeof mainbg21 -1,	
			mainbgxy,	
			ADDR count	
		inc mainbgxy.y

		mov ecx, 4
		Lbg4:
			push ecx
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR mainbg22,	
				sizeof mainbg22 -1,	
				mainbgxy,	
				ADDR count	
			inc mainbgxy.y
			pop ecx
			loop Lbg4
		
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR me,	
			sizeof me -1,	
			mexy,	
			ADDR count	

			mov mainbgxy.y , 3
	ret
main_menu ENDP

;---------------------------------------------menu move ------------------------------------------------

menu_move PROC
	
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

		.IF al == "e" || al == "E"
			je use
		.ENDIF

		jmp continue

;-----------------------------------------colusion---------------------------------------------

	colusionr:
		.IF mexy.x == 138
			jmp continue
		.ENDIF

		.IF mexy.x == 62 && mexy.y <8
			jmp continue
		.ENDIF

		.IF mexy.x == 62 && mexy.y >34
			jmp continue
		.ENDIF

		.IF mexy.x == 78 && mexy.y >9 && mexy.y <13
			jmp continue
		.ENDIF

		.IF mexy.x == 78 && mexy.y >29 && mexy.y <33
			jmp continue
		.ENDIF

		.IF mexy.x == 118 && mexy.y >9 && mexy.y <13
			jmp continue
		.ENDIF

		.IF mexy.x == 118 && mexy.y >29 && mexy.y <33
			jmp continue
		.ENDIF


		.IF mexy.x == 98 && mexy.y <15
			jmp continue
		.ENDIF

		.IF mexy.x == 98 && mexy.y >27
			jmp continue
		.ENDIF

		call move_right
		jmp continue

	colusionl:
		
		.IF mexy.x == 4
			jmp continue
		.ENDIF

		.IF mexy.x == 86 && mexy.y >9 && mexy.y <13
			jmp continue
		.ENDIF

		.IF mexy.x == 86 && mexy.y >29 && mexy.y <33
			jmp continue
		.ENDIF

		.IF mexy.x == 126 && mexy.y >9 && mexy.y <13
			jmp continue
		.ENDIF

		.IF mexy.x == 126 && mexy.y >29 && mexy.y <33
			jmp continue
		.ENDIF

		.IF mexy.x == 58 && mexy.y <22
			jmp continue
		.ENDIF

		.IF mexy.x == 104 && mexy.y <15
			jmp continue
		.ENDIF

		.IF mexy.x == 104 && mexy.y >27
			jmp continue
		.ENDIF

		call move_left
		jmp continue

	colusionu:
		
		.IF mexy.y == 3
			jmp continue
		.ENDIF

		.IF mexy.y == 22 && mexy.x <58
			jmp continue
		.ENDIF

		.IF mexy.y == 8 && mexy.x > 62
			jmp continue
		.ENDIF

		.IF mexy.y == 15 
			.IF mexy.x > 98 && mexy.x < 104
				jmp continue
			.ENDIF
		.ENDIF

		.IF mexy.y == 13 && mexy.x >78 && mexy.x <86
			jmp continue
		.ENDIF

		.IF mexy.y == 13 && mexy.x >118 && mexy.x <126
			jmp continue
		.ENDIF

		.IF mexy.y == 33 && mexy.x >78 && mexy.x <86
			jmp continue
		.ENDIF

		.IF mexy.y == 33 && mexy.x >118 && mexy.x <126
			jmp continue
		.ENDIF

		call move_up
		jmp continue

	colusiond:

		.IF mexy.y == 39
			jmp continue
		.ENDIF

		.IF mexy.y == 34 && mexy.x > 62
			jmp continue
		.ENDIF

		.IF mexy.y == 27
			.IF mexy.x > 98 && mexy.x < 104
				jmp continue
			.ENDIF
		.ENDIF

		.IF mexy.y == 9 && mexy.x >78 && mexy.x <86
			jmp continue
		.ENDIF

		.IF mexy.y == 9 && mexy.x >118 && mexy.x <126
			jmp continue
		.ENDIF

		.IF mexy.y == 29 && mexy.x >78 && mexy.x <86
			jmp continue
		.ENDIF

		.IF mexy.y == 29 && mexy.x >118 && mexy.x <126
			jmp continue
		.ENDIF

		call move_down
		jmp continue

;--------------------------------------see--------------------------------------------------

	see:
		mov ebx, menucontentxyinitial
		mov menucontentxy, ebx
		
		;鏡子
		.IF mexy.x == 46 && mexy.y == 22
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,
				ADDR menucontent0,	
				sizeof menucontent0 - 1,	
				menucontentxy,	
				ADDR count	

		.ENDIF

		.IF mexy.x == 48 && mexy.y == 22
			mov menucontentspacexy.y, 11
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,
				ADDR menucontentspace,	
				sizeof menucontentspace,	
				menucontentspacexy,	
				ADDR count

			add menucontentxy.y, 2

			INVOKE WriteConsoleOutputCharacter,
				outputHandle,
				ADDR menucontent1,	
				sizeof menucontent1 - 1,	
				menucontentxy,	
				ADDR count
		.ENDIF

		;浴室
		.IF mexy.x == 24 && mexy.y == 22
			call clear_menu
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,
				ADDR menucontent2,	
				sizeof menucontent2 - 1,	
				menucontentxy,	
				ADDR count	
			
			add menucontentxy.y, 2

			INVOKE WriteConsoleOutputCharacter,
				outputHandle,
				ADDR menucontent3,	
				sizeof menucontent3 - 1,	
				menucontentxy,	
				ADDR count	
		.ENDIF

		;窗戶
		.IF mexy.x == 138 && (mexy.y >= 8 && mexy.y <= 32)
			call clear_menu
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,
				ADDR menucontent12,	
				sizeof menucontent12 - 1,	
				menucontentxy,	
				ADDR count	
		.ENDIF

		;77
			.IF mexy.x == 78 && mexy.y >9 && mexy.y <13
				.IF level1finish == 1
					jmp l1
				.ENDIF

				.IF level1finish == 0 && level2finish == 0 && level3finish == 0 && level4finish == 0
					mov mexy.x, 42
					mov mexy.y, 14
					call clear_allmenu
					call level1
					call level1move

					ret
				.ENDIF
			.ENDIF
			
			.IF mexy.x == 86 && mexy.y >9 && mexy.y <13
				.IF level1finish == 1
					jmp l1
				.ENDIF

				.IF level1finish == 0 && level2finish == 0 && level3finish == 0 && level4finish == 0
					mov mexy.x, 42
					mov mexy.y, 14
					call clear_allmenu
					call level1
					call level1move

					ret
				.ENDIF
			.ENDIF

			.IF mexy.y == 13 && mexy.x >78 && mexy.x <86
				.IF level1finish == 1
					jmp l1
				.ENDIF

				.IF level1finish == 0 && level2finish == 0 && level3finish == 0 && level4finish == 0
					mov mexy.x, 42
					mov mexy.y, 14
					call clear_allmenu
					call level1
					call level1move
					ret
				.ENDIF
			.ENDIF

			.IF mexy.y == 9 && mexy.x >78 && mexy.x <86
				.IF level1finish == 1
					jmp l1
				.ENDIF

				.IF level1finish == 0 && level2finish == 0 && level3finish == 0 && level4finish == 0
					mov mexy.x, 42
					mov mexy.y, 14
					call clear_allmenu
					call level1
					call level1move
					ret
				.ENDIF
			.ENDIF

			jmp nl1

			l1:
				call clear_menu
				INVOKE WriteConsoleOutputCharacter,
					outputHandle,
					ADDR menucontent4,	
					sizeof menucontent4 - 1,	
					menucontentxy,	
					ADDR count
			nl1:


		;圓
			
			.IF mexy.x == 78 && mexy.y >29 && mexy.y <33
				.IF level1finish == 0 || level2finish == 1
					jmp l2
				.ENDIF

				.IF level1finish == 1 && level2finish == 0 && level3finish == 0 && level4finish == 0
					mov mexy.x, 16
					mov mexy.y, 14
					call clear_allmenu
					call level2
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR me,	
						sizeof me - 1,
						mexy,	
						ADDR count	
	
					call level2move

					INVOKE Sleep, 3000
					call level2_2
					call level2_2move
					ret
				.ENDIF
			.ENDIF

			.IF mexy.x == 86 && mexy.y >29 && mexy.y <33
				.IF level1finish == 0 || level2finish == 1
					jmp l2
				.ENDIF

				.IF level1finish == 1 && level2finish == 0 && level3finish == 0 && level4finish == 0
					mov mexy.x, 16
					mov mexy.y, 14
					call clear_allmenu
					call level2
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR me,	
						sizeof me - 1,
						mexy,	
						ADDR count	
	
					call level2move

					INVOKE Sleep, 3000
					call level2_2
					call level2_2move
					ret
				.ENDIF
			.ENDIF
			
			.IF mexy.y == 33 && mexy.x >78 && mexy.x <86
				.IF level1finish == 0 || level2finish == 1
					jmp l2
				.ENDIF

				.IF level1finish == 1 && level2finish == 0 && level3finish == 0 && level4finish == 0
					mov mexy.x, 16
					mov mexy.y, 14
					call clear_allmenu
					call level2
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR me,	
						sizeof me - 1,
						mexy,	
						ADDR count	
	
					call level2move

					INVOKE Sleep, 3000
					call level2_2
					call level2_2move
					ret
				.ENDIF
			.ENDIF

			.IF mexy.y == 29 && mexy.x >78 && mexy.x <86
				.IF level1finish == 0 || level2finish == 1
					jmp l2
				.ENDIF

				.IF level1finish == 1 && level2finish == 0 && level3finish == 0 && level4finish == 0
					mov mexy.x, 16
					mov mexy.y, 14
					call clear_allmenu
					call level2
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR me,	
						sizeof me - 1,
						mexy,	
						ADDR count	
	
					call level2move

					INVOKE Sleep, 3000
					call level2_2
					call level2_2move
					ret
				.ENDIF
			.ENDIF

			jmp nl2

			l2:
				call clear_menu
				INVOKE WriteConsoleOutputCharacter,
					outputHandle,
					ADDR menucontent5,	
					sizeof menucontent5 - 1,	
					menucontentxy,	
					ADDR count
			nl2:

		;羽
		
			.IF mexy.x == 118 && mexy.y >9 && mexy.y <13
				.IF level3finish == 0 || level4finish == 1
					jmp l3
				.ENDIF
				.IF level1finish == 1 && level2finish == 1 && level3finish == 1 && level4finish == 0
					call clear_allmenu
					call level4
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR me,	
						sizeof me - 1,
						lv4mexy,	
						ADDR count
					call level4move
					ret
				.ENDIF
			.ENDIF

			.IF mexy.x == 126 && mexy.y >9 && mexy.y <13
				.IF level3finish == 0 || level4finish == 1
					jmp l3
				.ENDIF
				.IF level1finish == 1 && level2finish == 1 && level3finish == 1 && level4finish == 0
					call clear_allmenu
					INVOKE Sleep, 500
					call level4
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR me,	
						sizeof me - 1,
						lv4mexy,	
						ADDR count
					call level4move
					ret
				.ENDIF
			.ENDIF

			.IF mexy.y == 13 && mexy.x >118 && mexy.x <126
				.IF level3finish == 0 || level4finish == 1
					jmp l3
				.ENDIF
				.IF level1finish == 1 && level2finish == 1 && level3finish == 1 && level4finish == 0
					call clear_allmenu
					call level4
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR me,	
						sizeof me - 1,
						lv4mexy,	
						ADDR count
					call level4move
					ret
				.ENDIF
			.ENDIF

			.IF mexy.y == 9 && mexy.x >118 && mexy.x <126
				.IF level3finish == 0 || level4finish == 1
					jmp l3
				.ENDIF
				.IF level1finish == 1 && level2finish == 1 && level3finish == 1 && level4finish == 0
					call clear_allmenu
					call level4
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR me,	
						sizeof me - 1,
						lv4mexy,	
						ADDR count
					call level4move
					ret
				.ENDIF
			.ENDIF

			jmp nl3

			l3:
				call clear_menu
				INVOKE WriteConsoleOutputCharacter,
					outputHandle,
					ADDR menucontent7,	
					sizeof menucontent7 - 1,	
					menucontentxy,	
					ADDR count
			nl3:

		;py
		
			.IF mexy.x == 118 && mexy.y >29 && mexy.y <33
				.IF level2finish == 0 || level3finish == 1
					jmp l4
				.ENDIF
				.IF level1finish == 1 && level2finish == 1 && level3finish == 0 && level4finish == 0
					call clear_allmenu
					call be_master
					ret
				.ENDIF
			.ENDIF

			.IF mexy.x == 126 && mexy.y >29 && mexy.y <33
				.IF level2finish == 0 || level3finish == 1
					jmp l4
				.ENDIF
				.IF level1finish == 1 && level2finish == 1 && level3finish == 0 && level4finish == 0
					call clear_allmenu
					call be_master
					ret
				.ENDIF
			.ENDIF

			.IF mexy.y == 33 && mexy.x >118 && mexy.x <126
				.IF level2finish == 0 || level3finish == 1
					jmp l4
				.ENDIF
				.IF level1finish == 1 && level2finish == 1 && level3finish == 0 && level4finish == 0
					call clear_allmenu
					call be_master
					ret
				.ENDIF
			.ENDIF

			.IF mexy.y == 29 && mexy.x >118 && mexy.x <126
				.IF level2finish == 0 || level3finish == 1
					jmp l4
				.ENDIF
				.IF level1finish == 1 && level2finish == 1 && level3finish == 0 && level4finish == 0
					call clear_allmenu
					call be_master
					ret
				.ENDIF
			.ENDIF

			jmp nl4

			l4:
				call clear_menu
				INVOKE WriteConsoleOutputCharacter,
					outputHandle,
					ADDR menucontent6,	
					sizeof menucontent6 - 1,	
					menucontentxy,	
					ADDR count
			nl4:

		jmp continue

	use:
		.IF mexy.x == 4 && mexy.y == 30
			.IF toolendget == 1
				INVOKE WriteConsoleOutputCharacter,
					outputHandle,
					ADDR maindoor1,	
					sizeof maindoor1 - 1,	
					maindoorxy,	
					ADDR count

				call clear_menu
				INVOKE WriteConsoleOutputCharacter,
					outputHandle,
					ADDR menucontent10,	
					sizeof menucontent10 - 1,	
					menucontentxy,	
					ADDR count

				INVOKE Sleep , 8000

				call clear_menu
				INVOKE WriteConsoleOutputCharacter,
					outputHandle,
					ADDR menucontent11,	
					sizeof menucontent11 - 1,	
					menucontentxy,	
					ADDR count
				
				INVOKE Sleep , 4000
				call endinganime
				ret
			.ENDIF
		.ENDIF

	continue:
		
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,
			ADDR mirror,	
			sizeof mirror - 1,	
			mirror1xy,	
			ADDR count	

		;鏡子
		.IF mexy.x == 46 && mexy.y == 22
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,
				ADDR me,	
				sizeof me - 1,	
				mirror1xy,	
				ADDR count	

		.ENDIF

		.IF mexy.x == 48 && mexy.y == 22

			INVOKE WriteConsoleOutputCharacter,
				outputHandle,
				ADDR me,	
				sizeof me - 1,	
				mirror2xy,	
				ADDR count	
		.ENDIF

			


		jmp start

menu_move ENDP

clear_menu PROC
	mov menucontentspacexy.y, 3
	mov ecx, 18
	L1: push ecx
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,
			ADDR menucontentspace,	
			sizeof menucontentspace,	
			menucontentspacexy,	
			ADDR count
		
		inc menucontentspacexy.y
		pop ecx
		Loop L1
	ret
clear_menu ENDP

clear_allmenu PROC
	mov moneyxy.y, 3
	mov ecx, 37
	changemenu: push ecx
		INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR change,	
		sizeof change,
		moneyxy,	
		ADDR count	

		inc moneyxy.y
		INVOKE Sleep, 50

		pop ecx
		Loop changemenu
	
	mov moneyxy.y, 3

	mov ecx, 37
	changespace: push ecx
		INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR moneyspace,	
		sizeof moneyspace,
		moneyxy,	
		ADDR count	

		inc moneyxy.y
		INVOKE Sleep, 50

		pop ecx
		Loop changespace
	mov moneyxy.y, 3
	ret
clear_allmenu ENDP
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

;----------------------------------------------------level1 refresh_bg---------------------------------------------------------

refresh_bg PROC

		mov ecx, 37
		mov whitebgxy.x, 4
		mov whitebgxy.y, 3
L1:	

	push ecx	; save counter

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	; console output handle
	   ADDR whitebg,	; pointer to the top box line
	   sizeof whitebg-1,	; size of box line
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

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface2,	
	   sizeof preface2 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000


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

	INVOKE Sleep, 2000

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;因為 GetStdHandle 會存於eax，將eax內的值存入outputHandle
	call Clrscr

	mov prefacexy.y, 15

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface5,	
	   sizeof preface5 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface6,	
	   sizeof preface6 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface7,	
	   sizeof preface7 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;因為 GetStdHandle 會存於eax，將eax內的值存入outputHandle
	call Clrscr

	mov prefacexy.y, 15

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface8,	
	   sizeof preface8 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface9,	
	   sizeof preface9 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 3

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface10,	
	   sizeof preface10 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface11,	
	   sizeof preface11 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 3

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface12,	
	   sizeof preface12 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface13,	
	   sizeof preface13 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface14,	
	   sizeof preface14 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;因為 GetStdHandle 會存於eax，將eax內的值存入outputHandle
	call Clrscr

	mov prefacexy.y, 15

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface15,	
	   sizeof preface15 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;因為 GetStdHandle 會存於eax，將eax內的值存入outputHandle
	call Clrscr

	mov prefacexy.y, 15

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface16,	
	   sizeof preface16 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface17,	
	   sizeof preface17 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface18,	
	   sizeof preface18 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface19,	
	   sizeof preface19 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;因為 GetStdHandle 會存於eax，將eax內的值存入outputHandle
	call Clrscr

	mov prefacexy.y, 15

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface20,	
	   sizeof preface20 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface22,	
	   sizeof preface22 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle, eax	;因為 GetStdHandle 會存於eax，將eax內的值存入outputHandle
	call Clrscr

	mov prefacexy.y, 15

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface23,	
	   sizeof preface23 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface24,	
	   sizeof preface24 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface25,	
	   sizeof preface25 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface26,	
	   sizeof preface26 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface27,	
	   sizeof preface27 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 2

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface28,	
	   sizeof preface28 -1,
	   prefacexy,	
	   ADDR count

	   add prefacexy.y, 4

	INVOKE Sleep, 2000

	INVOKE WriteConsoleOutputCharacter,
	   outputHandle,	
	   ADDR preface29,	
	   sizeof preface29 -1,
	   prefacexy,	
	   ADDR count

	playgame:

		call ReadChar  ; 從鍵盤讀取一個字符 

		.IF al == "p" || al == "P"
			ret
		.ENDIF

		jmp playgame

preface ENDP

;---------------------------------------- 關卡三 成為諧音梗大師 PROC -----------------------------------

be_master PROC
	;------------------------ draw 3-1 wall & 道具欄 ----------------------
	 
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	
		   ADDR tool1_3,	
		   sizeof tool1_3,
		   tool3_xy,	
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

	;--------------------------- move me 3_1 -------------------------
	
	level3_1_start:
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR me,	
			sizeof me - 1,	
			mexy_3,	
			ADDR count

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

		.IF ax == 1265h && mexy_3.x == 30 && (mexy_3.y == 10 || mexy_3.y == 12);space get
			.IF get_tool == 2
				jmp level3_1_start
			.ENDIF
			.IF get_tool == 1
				INVOKE WriteConsoleOutputCharacter,
				   outputHandle,	
				   ADDR tool4_3,	
				   sizeof tool4_3,
				   tool3_xy,	
				   ADDR count
				mov get_tool, 2
				jmp level3_1_start
			.ENDIF

			INVOKE WriteConsoleOutputCharacter,
				   outputHandle,	
				   ADDR tool11_3,	
				   sizeof tool11_3,
				   tool3_xy,	
				   ADDR count
			INVOKE WriteConsoleOutputCharacter,
			   outputHandle,	
			   ADDR tool2_3,	
			   sizeof tool2_3,
			   tool3_1xy,	
			   ADDR count
			mov get_tool, 1
		.ENDIF

		.IF ax == 1265h && mexy_3.x == 22 && (mexy_3.y == 13 || mexy_3.y == 15);e use
			.IF get_tool == 2
				jmp level3_1_start
			.ENDIF
			.IF get_tool == 1
				INVOKE WriteConsoleOutputCharacter,
				   outputHandle,	
				   ADDR tool4_3,	
				   sizeof tool4_3,
				   tool3_xy,	
				   ADDR count
				mov get_tool, 2
				jmp level3_1_start
			.ENDIF

			INVOKE WriteConsoleOutputCharacter,
				   outputHandle,	
				   ADDR tool11_3,	
				   sizeof tool11_3,
				   tool3_xy,	
				   ADDR count
			INVOKE WriteConsoleOutputCharacter,
			   outputHandle,	
			   ADDR tool3_3,	
			   sizeof tool3_3,
			   tool3_1xy,	
			   ADDR count
			mov get_tool, 1
		.ENDIF

		.IF ax == 1265h && mexy_3.x == 30 && (mexy_3.y == 19 || mexy_3.y == 21) && get_tool == 2 ;e use
			inc textxy.y
			inc textxy.y
			INVOKE WriteConsoleOutputCharacter,
			   outputHandle,	; console output handle
			   ADDR level3_91,	; pointer to the top box line
			   sizeof level3_91 -1,	; size of box line
			   textxy,	; coordinates of first char
			   ADDR count	; output count
			mov get_tool, 3
		.ENDIF

		.IF get_tool == 3
			INVOKE Sleep, 1800
			mov ecx, 30
			jmp clearall
		.ENDIF


		jmp level3_1_start


;------------------------------------- collision 3_1 -----------------------------------
	check_up:

		.IF mexy_3.y == 2d ;y lowerbound ;wall
			add mexy_3.y,1
			jmp level3_1_start
		.ENDIF

		.IF (mexy_3.y == 8 && (mexy_3.x >= 12 && mexy_3.x <= 46)) || (mexy_3.y == 11 && (mexy_3.x >= 12 && mexy_3.x <= 37)) || (mexy_3.y == 14 && (mexy_3.x >= 12 && mexy_3.x <= 29));word
			add mexy_3.y,1
			jmp level3_1_start
		.ENDIF

		.IF (mexy_3.y == 17 && (mexy_3.x >= 12 && mexy_3.x <= 29)) || (mexy_3.y == 20 && (mexy_3.x >= 12 && mexy_3.x <= 40)) || (mexy_3.y == 23 && (mexy_3.x >= 12 && mexy_3.x <= 45));word
			add mexy_3.y,1
			jmp level3_1_start
		.ENDIF

		.IF (mexy_3.y == 25 && (mexy_3.x >= 12 && mexy_3.x <= 20)) || (mexy_3.y == 27 && (mexy_3.x >= 12 && mexy_3.x <= 32)) || (mexy_3.y == 29 && (mexy_3.x >= 12 && mexy_3.x <= 46));word
			add mexy_3.y,1
			jmp level3_1_start
		.ENDIF

		call move_up31
		jmp level3_1_start
	
	check_left:

		.IF mexy_3.x == 2d ;x lowerbound ;wall
			add mexy_3.x,2
			jmp level3_1_start
		.ENDIF

		.IF (mexy_3.y == 8 && (mexy_3.x >= 12 && mexy_3.x <= 46)) || (mexy_3.y == 11 && (mexy_3.x >= 12 && mexy_3.x <= 37)) || (mexy_3.y == 14 && (mexy_3.x >= 12 && mexy_3.x <= 29));word
			add mexy_3.x,2
			jmp level3_1_start
		.ENDIF

		.IF (mexy_3.y == 17 && (mexy_3.x >= 12 && mexy_3.x <= 29)) || (mexy_3.y == 20 && (mexy_3.x >= 12 && mexy_3.x <= 40)) || (mexy_3.y == 23 && (mexy_3.x >= 12 && mexy_3.x <= 45));word
			add mexy_3.x,2
			jmp level3_1_start
		.ENDIF

		.IF (mexy_3.y == 25 && (mexy_3.x >= 12 && mexy_3.x <= 20)) || (mexy_3.y == 27 && (mexy_3.x >= 12 && mexy_3.x <= 32)) || (mexy_3.y == 29 && (mexy_3.x >= 12 && mexy_3.x <= 46));word
			add mexy_3.x,2
			jmp level3_1_start
		.ENDIF

		call move_left31
		jmp level3_1_start

	check_down:

		mov ax,BoxHeight
		add ax, 1d
		.IF mexy_3.y == ax ;y upperbound ;wall
			sub mexy_3.y,1
			jmp level3_1_start
		.ENDIF

		.IF (mexy_3.y == 8 && (mexy_3.x >= 12 && mexy_3.x <= 46)) || (mexy_3.y == 11 && (mexy_3.x >= 12 && mexy_3.x <= 37)) || (mexy_3.y == 14 && (mexy_3.x >= 12 && mexy_3.x <= 29));word
			sub mexy_3.y,1
			jmp level3_1_start
		.ENDIF

		.IF (mexy_3.y == 17 && (mexy_3.x >= 12 && mexy_3.x <= 29)) || (mexy_3.y == 20 && (mexy_3.x >= 12 && mexy_3.x <= 40)) || (mexy_3.y == 23 && (mexy_3.x >= 12 && mexy_3.x <= 45));word
			sub mexy_3.y,1
			jmp level3_1_start
		.ENDIF

		.IF (mexy_3.y == 25 && (mexy_3.x >= 12 && mexy_3.x <= 20)) || (mexy_3.y == 27 && (mexy_3.x >= 12 && mexy_3.x <= 32)) || (mexy_3.y == 29 && (mexy_3.x >= 12 && mexy_3.x <= 46));word
			sub mexy_3.y,1
			jmp level3_1_start
		.ENDIF

		call move_down31
		jmp level3_1_start
		
	check_right:

		mov ax,BoxWidth
		shl ax, 1
		.IF mexy_3.x == ax ;x upperbound ;wall
			sub mexy_3.x,2
			jmp level3_1_start
		.ENDIF

		.IF (mexy_3.y == 8 && (mexy_3.x >= 12 && mexy_3.x <= 46)) || (mexy_3.y == 11 && (mexy_3.x >= 12 && mexy_3.x <= 37)) || (mexy_3.y == 14 && (mexy_3.x >= 12 && mexy_3.x <= 29));word
			sub mexy_3.x,2
			jmp level3_1_start
		.ENDIF

		.IF (mexy_3.y == 17 && (mexy_3.x >= 12 && mexy_3.x <= 29)) || (mexy_3.y == 20 && (mexy_3.x >= 12 && mexy_3.x <= 40)) || (mexy_3.y == 23 && (mexy_3.x >= 12 && mexy_3.x <= 45));word
			sub mexy_3.x,2
			jmp level3_1_start
		.ENDIF

		.IF (mexy_3.y == 25 && (mexy_3.x >= 12 && mexy_3.x <= 20)) || (mexy_3.y == 27 && (mexy_3.x >= 12 && mexy_3.x <= 32)) || (mexy_3.y == 29 && (mexy_3.x >= 12 && mexy_3.x <= 46));word
			sub mexy_3.x,2
			jmp level3_1_start
		.ENDIF


		call move_right31
		jmp level3_1_start
		


	;--------------------------- level 3-2 ----------------------------

	;------------------------ clear  & 道具欄 ----------------------
	
	clearall: 
		mov get_tool, 0
		push ecx
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR clearspace,	
			sizeof clearspace,
			clearxy,	
			ADDR count	

		inc clearxy.y
		pop ecx
		Loop clearall

	
	sub clearxy.y, 30

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR toolBox,	
		sizeof toolBox,
		boxxy,	
		ADDR count

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR tool_clear,	
		sizeof tool_clear,
		toolcxy,	
		ADDR count
	jmp display_12
	

	;------------------------ level 3-2 words ----------------------
	display_12:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_10,	; pointer to the top box line
		   sizeof level3_10 -1,	; size of box line
		   text2xy,	; coordinates of first char
		   ADDR count	; output count

		inc text2xy.y
		inc text2xy.y
		inc text2xy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_22		;next line
		dec text2xy.y
		dec text2xy.y
		dec text2xy.y
		jne display_12	;again

	display_22:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_11,	; pointer to the top box line
		   sizeof level3_11 -1,	; size of box line
		   text2xy,	; coordinates of first char
		   ADDR count	; output count

		inc text2xy.y
		inc text2xy.y
		inc text2xy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_32		;next line
		dec text2xy.y
		dec text2xy.y
		dec text2xy.y
		jne display_22		;again

	display_32:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_12,	; pointer to the top box line
		   sizeof level3_12 -1,	; size of box line
		   text2xy,	; coordinates of first char
		   ADDR count	; output count

		inc text2xy.y
		inc text2xy.y
		inc text2xy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_42		;next line
		dec text2xy.y
		dec text2xy.y
		dec text2xy.y
		jne display_32		;again

	display_42:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_13,	; pointer to the top box line
		   sizeof level3_13 -1,	; size of box line
		   text2xy,	; coordinates of first char
		   ADDR count	; output count

		inc text2xy.y
		inc text2xy.y
		inc text2xy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_52		;next line
		dec text2xy.y
		dec text2xy.y
		dec text2xy.y
		jne display_42		;again

	display_52:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_14,	; pointer to the top box line
		   sizeof level3_14 -1,	; size of box line
		   text2xy,	; coordinates of first char
		   ADDR count	; output count

		inc text2xy.y
		inc text2xy.y
		inc text2xy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_62		;next line
		dec text2xy.y
		dec text2xy.y
		dec text2xy.y
		jne display_52		;again

	display_62:
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR me,	
			sizeof me - 1,	
			text2xy,	
			ADDR count	

		add text2xy.x, 2

		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_15,	; pointer to the top box line
		   sizeof level3_15 -1,	; size of box line
		   text2xy,	; coordinates of first char
		   ADDR count	; output count

		sub text2xy.x, 2
		
		inc text2xy.y
		inc text2xy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_72		;next line
		dec text2xy.y
		dec text2xy.y
		jne display_62		;again

	display_72:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_16,	; pointer to the top box line
		   sizeof level3_16 -1,	; size of box line
		   text2xy,	; coordinates of first char
		   ADDR count	; output count

		inc text2xy.y
		inc text2xy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_82		;next line
		dec text2xy.y
		dec text2xy.y
		jne display_72		;again

	display_82:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_17,	; pointer to the top box line
		   sizeof level3_17 -1,	; size of box line
		   text2xy,	; coordinates of first char
		   ADDR count	; output count

		inc text2xy.y
		inc text2xy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_92		;next line
		dec text2xy.y
		dec text2xy.y
		jne display_82		;again

	display_92:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_18,	; pointer to the top box line
		   sizeof level3_18 -1,	; size of box line
		   text2xy,	; coordinates of first char
		   ADDR count	; output count

		inc text2xy.y
		inc text2xy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		je display_102		;next line
		dec text2xy.y
		dec text2xy.y
		jne display_92		;again

	display_102:
		INVOKE WriteConsoleOutputCharacter,
		   outputHandle,	; console output handle
		   ADDR level3_19,	; pointer to the top box line
		   sizeof level3_19 -1,	; size of box line
		   text2xy,	; coordinates of first char
		   ADDR count	; output count

		inc text2xy.y
		inc text2xy.y

		mov bl, startcount
		call ReadChar
		cmp al, " "
		dec text2xy.y
		dec text2xy.y
		jmp level3_2_start		;next line
		jne display_102		;again

;--------------------------- move me 3_2 -------------------------
	level3_2_start:
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR me,	
			sizeof me - 1,	
			me2xy_3,	
			ADDR count

		call ReadChar

		.IF ax == 1177h ;w up
			sub me2xy_3.y, 1
			jmp check_up2
		.ENDIF
		.IF ax == 1E61h ;a left
			sub me2xy_3.x, 2
			jmp check_left2
		.ENDIF
		.IF ax == 1F73h ;s down
			add me2xy_3.y, 1
			jmp check_down2
		.ENDIF
		.IF ax == 2064h ;d right
			add me2xy_3.x, 2
			jmp check_right2
		.ENDIF

		.IF ax == 3920h && me2xy_3.x == 34 && (me2xy_3.y == 22 || me2xy_3.y == 24) ;space get
			.IF get_tool == 4
				INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR get_mes5,	
						sizeof get_mes5,
						get_mes,	
						ADDR count
					INVOKE Sleep, 1000
					INVOKE WriteConsoleOutputCharacter,
						outputHandle,	
						ADDR tool_clear,	
						sizeof tool_clear,
						get_mes,	
						ADDR count
				jmp level3_2_start
			.ENDIF

			.IF get_tool == 0
				INVOKE WriteConsoleOutputCharacter,
					   outputHandle,	
					   ADDR tool5_3,	
					   sizeof tool5_3,
					   tool3_2xy,	
					   ADDR count
				mov get_tool, 1

				INVOKE WriteConsoleOutputCharacter,
					   outputHandle,	
					   ADDR get_mes1,	
					   sizeof get_mes1,
					   get_mes,	
					   ADDR count
				INVOKE Sleep, 1000
				INVOKE WriteConsoleOutputCharacter,
					   outputHandle,	
					   ADDR tool_clear,	
					   sizeof tool_clear,
					   get_mes,	
					   ADDR count

				jmp level3_2_start
			.ENDIF

			.IF get_tool == 1
				INVOKE WriteConsoleOutputCharacter,
					   outputHandle,	
					   ADDR tool6_3,	
					   sizeof tool6_3,
					   tool3_2xy,	
					   ADDR count
				mov get_tool, 2

				INVOKE WriteConsoleOutputCharacter,
					   outputHandle,	
					   ADDR get_mes2,	
					   sizeof get_mes2,
					   get_mes,	
					   ADDR count
				INVOKE Sleep, 1000
				INVOKE WriteConsoleOutputCharacter,
					   outputHandle,	
					   ADDR tool_clear,	
					   sizeof tool_clear,
					   get_mes,	
					   ADDR count
				jmp level3_2_start
			.ENDIF

			.IF get_tool == 2
				INVOKE WriteConsoleOutputCharacter,
					   outputHandle,	
					   ADDR tool7_3,	
					   sizeof tool7_3,
					   tool3_2xy,	
					   ADDR count
				mov get_tool, 3

				INVOKE WriteConsoleOutputCharacter,
					   outputHandle,	
					   ADDR get_mes3,	
					   sizeof get_mes3,
					   get_mes,	
					   ADDR count
				INVOKE Sleep, 1000
				INVOKE WriteConsoleOutputCharacter,
					   outputHandle,	
					   ADDR tool_clear,	
					   sizeof tool_clear,
					   get_mes,	
					   ADDR count
				jmp level3_2_start
			.ENDIF

			.IF get_tool == 3
				INVOKE WriteConsoleOutputCharacter,
					   outputHandle,	
					   ADDR tool8_3,	
					   sizeof tool8_3,
					   tool3_2xy,	
					   ADDR count
				mov get_tool, 4

				INVOKE WriteConsoleOutputCharacter,
					   outputHandle,	
					   ADDR get_mes4,	
					   sizeof get_mes4,
					   get_mes,	
					   ADDR count
				INVOKE Sleep, 1000
				INVOKE WriteConsoleOutputCharacter,
					   outputHandle,	
					   ADDR tool_clear,	
					   sizeof tool_clear,
					   get_mes,	
					   ADDR count
				jmp level3_2_start
			.ENDIF
		.ENDIF

		.IF ax == 1265h && me2xy_3.x == 16 && (me2xy_3.y == 28 || me2xy_3.y == 30) && get_tool == 4 ;e use
			inc text2xy.y
			inc text2xy.y
			INVOKE WriteConsoleOutputCharacter,
				   outputHandle,	
				   ADDR showresult,	
				   sizeof showresult,
				   text2xy,	
				   ADDR count

			INVOKE Sleep, 1500
			inc text2xy.y
			inc text2xy.y
			INVOKE WriteConsoleOutputCharacter,
				   outputHandle,	
				   ADDR showresult2,	
				   sizeof showresult2,
				   text2xy,	
				   ADDR count

			INVOKE Sleep, 1500
			inc text2xy.y
			inc text2xy.y
			INVOKE WriteConsoleOutputCharacter,
				   outputHandle,	
				   ADDR showresult3,	
				   sizeof showresult3,
				   text2xy,	
				   ADDR count
			INVOKE Sleep, 1000
			mov ecx, 35
			jmp clearend
		.ENDIF

		jmp level3_2_start
;------------------------------------- collision 3_2 -----------------------------------
	check_up2:

		.IF me2xy_3.y == 2d ;y lowerbound ;wall
			add me2xy_3.y,1
			jmp level3_2_start
		.ENDIF

		.IF (me2xy_3.y == 8 && (me2xy_3.x >= 12 && me2xy_3.x <= 17)) || (me2xy_3.y == 11 && (me2xy_3.x >= 12 && me2xy_3.x <= 43)) || (me2xy_3.y == 14 && (me2xy_3.x >= 12 && me2xy_3.x <= 25));word
			add me2xy_3.y,1
			jmp level3_2_start
		.ENDIF

		.IF (me2xy_3.y == 17 && (me2xy_3.x >= 12 && me2xy_3.x <= 36)) || (me2xy_3.y == 20 && (me2xy_3.x >= 12 && me2xy_3.x <= 26)) || (me2xy_3.y == 23 && (me2xy_3.x >= 12 && me2xy_3.x <= 48));word
			add me2xy_3.y,1
			jmp level3_2_start
		.ENDIF

		.IF (me2xy_3.y == 25 && (me2xy_3.x >= 12 && me2xy_3.x <= 45)) || (me2xy_3.y == 27 && (me2xy_3.x >= 12 && me2xy_3.x <= 20)) || (me2xy_3.y == 29 && (me2xy_3.x >= 12 && me2xy_3.x <= 39)) || (me2xy_3.y == 31 && (me2xy_3.x >= 12 && me2xy_3.x <= 45));word
			add me2xy_3.y,1
			jmp level3_2_start
		.ENDIF

		call move_up32
		jmp level3_2_start
	
	check_left2:

		.IF me2xy_3.x == 2d ;x lowerbound ;wall
			add me2xy_3.x,2
			jmp level3_2_start
		.ENDIF

		.IF (me2xy_3.y == 8 && (me2xy_3.x >= 12 && me2xy_3.x <= 17)) || (me2xy_3.y == 11 && (me2xy_3.x >= 12 && me2xy_3.x <= 43)) || (me2xy_3.y == 14 && (me2xy_3.x >= 12 && me2xy_3.x <= 25));word
			add me2xy_3.x,2
			jmp level3_2_start
		.ENDIF

		.IF (me2xy_3.y == 17 && (me2xy_3.x >= 12 && me2xy_3.x <= 36)) || (me2xy_3.y == 20 && (me2xy_3.x >= 12 && me2xy_3.x <= 26)) || (me2xy_3.y == 23 && (me2xy_3.x >= 12 && me2xy_3.x <= 48));word
			add me2xy_3.x,2
			jmp level3_2_start
		.ENDIF

		.IF (me2xy_3.y == 25 && (me2xy_3.x >= 12 && me2xy_3.x <= 45)) || (me2xy_3.y == 27 && (me2xy_3.x >= 12 && me2xy_3.x <= 20)) || (me2xy_3.y == 29 && (me2xy_3.x >= 12 && me2xy_3.x <= 39)) || (me2xy_3.y == 31 && (me2xy_3.x >= 12 && me2xy_3.x <= 45));word
			add me2xy_3.x,2
			jmp level3_2_start
		.ENDIF

		call move_left32
		jmp level3_2_start

	check_down2:

		mov ax,BoxHeight
		add ax, 1d
		.IF me2xy_3.y == ax ;y upperbound ;wall
			sub me2xy_3.y,1
			jmp level3_2_start
		.ENDIF

		.IF (me2xy_3.y == 8 && (me2xy_3.x >= 12 && me2xy_3.x <= 17)) || (me2xy_3.y == 11 && (me2xy_3.x >= 12 && me2xy_3.x <= 43)) || (me2xy_3.y == 14 && (me2xy_3.x >= 12 && me2xy_3.x <= 25));word
			sub me2xy_3.y,1
			jmp level3_2_start
		.ENDIF

		.IF (me2xy_3.y == 17 && (me2xy_3.x >= 12 && me2xy_3.x <= 36)) || (me2xy_3.y == 20 && (me2xy_3.x >= 12 && me2xy_3.x <= 26)) || (me2xy_3.y == 23 && (me2xy_3.x >= 12 && me2xy_3.x <= 48));word
			sub me2xy_3.y,1
			jmp level3_2_start
		.ENDIF

		.IF (me2xy_3.y == 25 && (me2xy_3.x >= 12 && me2xy_3.x <= 45)) || (me2xy_3.y == 27 && (me2xy_3.x >= 12 && me2xy_3.x <= 20)) || (me2xy_3.y == 29 && (me2xy_3.x >= 12 && me2xy_3.x <= 39)) || (me2xy_3.y == 31 && (me2xy_3.x >= 12 && me2xy_3.x <= 45));word
			sub me2xy_3.y,1
			jmp level3_2_start
		.ENDIF

		call move_down32
		jmp level3_2_start
		
	check_right2:

		mov ax,BoxWidth
		shl ax, 1
		.IF me2xy_3.x == ax ;x upperbound ;wall
			sub me2xy_3.x,2
			jmp level3_2_start
		.ENDIF

		.IF (me2xy_3.y == 8 && (me2xy_3.x >= 12 && me2xy_3.x <= 17)) || (me2xy_3.y == 11 && (me2xy_3.x >= 12 && me2xy_3.x <= 43)) || (me2xy_3.y == 14 && (me2xy_3.x >= 12 && me2xy_3.x <= 25));word
			sub me2xy_3.x,2
			jmp level3_2_start
		.ENDIF

		.IF (me2xy_3.y == 17 && (me2xy_3.x >= 12 && me2xy_3.x <= 36)) || (me2xy_3.y == 20 && (me2xy_3.x >= 12 && me2xy_3.x <= 26)) || (me2xy_3.y == 23 && (me2xy_3.x >= 12 && me2xy_3.x <= 48));word
			sub me2xy_3.x,2
			jmp level3_2_start
		.ENDIF

		.IF (me2xy_3.y == 25 && (me2xy_3.x >= 12 && me2xy_3.x <= 45)) || (me2xy_3.y == 27 && (me2xy_3.x >= 12 && me2xy_3.x <= 20)) || (me2xy_3.y == 29 && (me2xy_3.x >= 12 && me2xy_3.x <= 39)) || (me2xy_3.y == 31 && (me2xy_3.x >= 12 && me2xy_3.x <= 45));word
			sub me2xy_3.x,2
			jmp level3_2_start
		.ENDIF


		call move_right32
		jmp level3_2_start

;------------------------------------- level3 end -----------------------------------
	
	clearend: 
		push ecx
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR clearspace,	
			sizeof clearspace,
			clearxy,	
			ADDR count	

		inc clearxy.y
		pop ecx
		Loop clearend

	sub clearxy.y, 35
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR toolBox,	
		sizeof toolBox,
		boxxy,	
		ADDR count

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR tool_clear,	
		sizeof tool_clear,
		toolcxy,	
		ADDR count

	level3_ending:
		sub text2xy.y, 19
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR ending1,	
			sizeof ending1,
			text2xy,	
			ADDR count
		inc text2xy.y
		inc text2xy.y

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR tool_3,	
			sizeof tool_3,
			toolcxy,	
			ADDR count

		INVOKE Sleep, 1000
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR ending2,	
			sizeof ending2,
			text2xy,	
			ADDR count
		inc text2xy.y
		inc text2xy.y

		INVOKE Sleep, 1000
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR ending3,	
			sizeof ending3,
			text2xy,	
			ADDR count
		inc text2xy.y
		inc text2xy.y

		INVOKE Sleep, 1000
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR ending4,	
			sizeof ending4,
			text2xy,	
			ADDR count
		inc text2xy.y
		inc text2xy.y

		INVOKE Sleep, 1000
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR ending5,	
			sizeof ending5,
			text2xy,	
			ADDR count
		inc text2xy.y
		inc text2xy.y

		INVOKE Sleep, 1000
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR ending6,	
			sizeof ending6,
			text2xy,	
			ADDR count
		inc text2xy.y
		inc text2xy.y
		INVOKE Sleep, 500

	sub clearxy.y, 1
	mov ecx, 37
	last_clear: 
		push ecx
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR ending_clear,	
			sizeof ending_clear,
			clearxy,	
			ADDR count	

		inc clearxy.y
		INVOKE Sleep, 30
		pop ecx
		Loop last_clear
	sub clearxy.y, 37

	mov ecx, 37
	clearwhole: 
		push ecx
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR clearspace,	
			sizeof clearspace,
			clearxy,	
			ADDR count	

		inc clearxy.y
		INVOKE Sleep, 30
		pop ecx
		Loop clearwhole

	sub clearxy.y, 37


be_master ENDP
	

;---------------------------------------- collision PROC 3-1 -----------------------------------
move_right31 PROC
	
	sub mexy_3.x, 2
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space-1,	
		mexy_3,
		ADDR count

	add mexy_3.x, 2
	ret
move_right31 ENDP

move_left31 PROC

	add mexy_3.x, 2
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space-1,	
		mexy_3,	
		ADDR count	

	sub mexy_3.x, 2
	ret
move_left31 ENDP

move_up31 PROC

	add mexy_3.y, 1
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,
		sizeof space-1,
		mexy_3,	
		ADDR count	

	sub mexy_3.y, 1
	ret
move_up31 ENDP

move_down31 PROC

	sub mexy_3.y, 1
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space-1,	
		mexy_3,	
		ADDR count

	add mexy_3.y, 1
	ret
move_down31 ENDP

;---------------------------------------- collision PROC 3-2 -----------------------------------
move_right32 PROC
	
	sub me2xy_3.x, 2
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space-1,	
		me2xy_3,
		ADDR count

	add me2xy_3.x, 2
	ret
move_right32 ENDP

move_left32 PROC

	add me2xy_3.x, 2
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space-1,	
		me2xy_3,	
		ADDR count	

	sub me2xy_3.x, 2
	ret
move_left32 ENDP

move_up32 PROC

	add me2xy_3.y, 1
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,
		sizeof space-1,
		me2xy_3,	
		ADDR count	

	sub me2xy_3.y, 1
	ret
move_up32 ENDP

move_down32 PROC

	sub me2xy_3.y, 1
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR space,	
		sizeof space-1,	
		me2xy_3,	
		ADDR count

	add me2xy_3.y, 1
	ret
move_down32 ENDP
;====================================================================startlv4================================
level4 PROC
	mov al, "q"
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR lv4_con1,	
		sizeof lv4_con1-1,
		lv4contentxy,	
		ADDR count
		mov bx, 0
	add lv4contentxy.y, 3

	start:

	call ReadChar
	.IF ax == 3920h
		inc bx
	.ENDIF
	.IF bx == 1
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR lv4_con2,	
			sizeof lv4_con2-1,
			lv4contentxy,	
			ADDR count
		add lv4contentxy.y, 3
	.ENDIF
	.IF bx == 2
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR lv4_con3,	
			sizeof lv4_con3-1,
			lv4contentxy,	
			ADDR count
		add lv4contentxy.y, 3
	.ENDIF
	.IF bx == 3
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR lv4_con4,	
			sizeof lv4_con4-1,
			lv4contentxy,	
			ADDR count
		add lv4contentxy.y, 3
		jmp endlv4
	.ENDIF
	jmp start
	endlv4:
			ret

level4 ENDP

;----------------------------------------------------level4move--------------------------------------------------------------------------
level4move PROC
Lback:
	call ReadChar
	
	.IF al == "a" 

		.IF (lv4mexy.x!=4)&&!(lv4mexy.y ==8 && (lv4mexy.x==26 || lv4mexy.x==50))&&!(lv4mexy.y ==11 && (lv4mexy.x==54))&&!(lv4mexy.y ==14 && (lv4mexy.x==34))&&!(lv4mexy.y ==17 && (lv4mexy.x==36))
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR space,	
			sizeof space - 1,
			lv4mexy,	
			ADDR count
			sub lv4mexy.x, 2
		.ENDIF
	.ENDIF

	.IF al == "s"
		.IF (lv4mexy.y!=39)&&!(lv4mexy.y ==7 && (lv4mexy.x>=12 && lv4mexy.x<=24))&&(!(lv4mexy.y ==7 && (lv4mexy.x>=28 && lv4mexy.x<=48)))&&(!(lv4mexy.y ==10 && (lv4mexy.x>=12 && lv4mexy.x<=52)))
			.IF !(lv4mexy.y ==16 && (lv4mexy.x>=12 && lv4mexy.x<=34))&&(!(lv4mexy.y ==13 && (lv4mexy.x>=12 && lv4mexy.x<=32)))
				INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR space,	
				sizeof space - 1,
				lv4mexy,	
				ADDR count
				add lv4mexy.y, 1
			.ENDIF
		.ENDIF
	.ENDIF
	.IF al == "w"
		.IF (lv4mexy.y!=3)&&!(lv4mexy.y ==9 && (lv4mexy.x>=12 && lv4mexy.x<=24))&&(!(lv4mexy.y ==9 && (lv4mexy.x>=28 && lv4mexy.x<=48)))&&(!(lv4mexy.y ==12 && (lv4mexy.x>=12 && lv4mexy.x<=52)))
			.IF !(lv4mexy.y ==18 && (lv4mexy.x>=12 && lv4mexy.x<=34))&&(!(lv4mexy.y ==15 && (lv4mexy.x>=12 && lv4mexy.x<=32)))
				INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR space,	
				sizeof space - 1,
				lv4mexy,	
				ADDR count
				sub lv4mexy.y, 1
			.ENDIF
		.ENDIF
	.ENDIF

	.IF al == "d"
		.IF (lv4mexy.x!=138)&&!(lv4mexy.y ==8 && (lv4mexy.x==26 || lv4mexy.x==10))&&!(lv4mexy.y ==11 && (lv4mexy.x==10))&&!(lv4mexy.y ==14 && (lv4mexy.x==10))&&!(lv4mexy.y ==17 && (lv4mexy.x==10))
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR space,	
			sizeof space - 1,
			lv4mexy,	
			ADDR count
			add lv4mexy.x, 2
		.ENDIF
	.ENDIF

	.IF al==" "
	.IF (lv4mexy.x==16 &&(lv4mexy.y==18||lv4mexy.y==16))
			jmp finddesk
		.ENDIF
	.ENDIF
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR me,	
		sizeof me - 1,
		lv4mexy,	
		ADDR count
	jmp Lback


finddesk:
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR lv4_con5,	
		sizeof lv4_con5-1,
		lv4contentxy,	
		ADDR count
		add lv4contentxy.y, 3
	


desk:
		call ReadChar
	
	.IF al == "a" 
		.IF !(lv4mexy.y == 20 && (lv4mexy.x==66))
		.IF (lv4mexy.x!=4)&&!(lv4mexy.y ==8 && (lv4mexy.x==26 || lv4mexy.x==50))&&!(lv4mexy.y ==11 && (lv4mexy.x==54))&&!(lv4mexy.y ==14 && (lv4mexy.x==34))&&!(lv4mexy.y ==17 && (lv4mexy.x==36))
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR space,	
			sizeof space - 1,
			lv4mexy,	
			ADDR count
			sub lv4mexy.x, 2
		.ENDIF
		.ENDIF
	.ENDIF

	.IF al == "s"
		.IF (!(lv4mexy.y ==19 && (lv4mexy.x>=12 && lv4mexy.x<=64)))
		.IF (lv4mexy.y!=39)&&!(lv4mexy.y ==7 && (lv4mexy.x>=12 && lv4mexy.x<=24))&&(!(lv4mexy.y ==7 && (lv4mexy.x>=28 && lv4mexy.x<=48)))&&(!(lv4mexy.y ==10 && (lv4mexy.x>=12 && lv4mexy.x<=52)))
			.IF !(lv4mexy.y ==16 && (lv4mexy.x>=12 && lv4mexy.x<=34))&&(!(lv4mexy.y ==13 && (lv4mexy.x>=12 && lv4mexy.x<=32)))
				INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR space,	
				sizeof space - 1,
				lv4mexy,	
				ADDR count
				add lv4mexy.y, 1
			.ENDIF
		.ENDIF
		.ENDIF
	.ENDIF
	.IF al == "w"
		.IF (!(lv4mexy.y ==21 && (lv4mexy.x>=12 && lv4mexy.x<=64)))
		.IF (lv4mexy.y!=3)&&!(lv4mexy.y ==9 && (lv4mexy.x>=12 && lv4mexy.x<=24))&&(!(lv4mexy.y ==9 && (lv4mexy.x>=28 && lv4mexy.x<=48)))&&(!(lv4mexy.y ==12 && (lv4mexy.x>=12 && lv4mexy.x<=52)))
			.IF !(lv4mexy.y ==18 && (lv4mexy.x>=12 && lv4mexy.x<=34))&&(!(lv4mexy.y ==15 && (lv4mexy.x>=12 && lv4mexy.x<=32)))
				INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR space,	
				sizeof space - 1,
				lv4mexy,	
				ADDR count
				sub lv4mexy.y, 1
			.ENDIF
		.ENDIF
		.ENDIF
	.ENDIF

	.IF al == "d"
		.IF !(lv4mexy.y == 20 && (lv4mexy.x==10))
		.IF (lv4mexy.x!=138)&&!(lv4mexy.y ==8 && (lv4mexy.x==26 || lv4mexy.x==10))&&!(lv4mexy.y ==11 && (lv4mexy.x==10))&&!(lv4mexy.y ==14 && (lv4mexy.x==10))&&!(lv4mexy.y ==17 && (lv4mexy.x==10))
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR space,	
			sizeof space - 1,
			lv4mexy,	
			ADDR count
			add lv4mexy.x, 2
		.ENDIF
		.ENDIF
	.ENDIF
	.IF al==" "
		.IF (((lv4mexy.x==58 || lv4mexy.x==60 ) &&(lv4mexy.y==19 || lv4mexy.y==21))&&lv4pc==0)
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR lv4_con8,	
			sizeof lv4_con8-1,
			lv4con8xy,	
			ADDR count
			add lv4con8xy.y, 3
			inc lv4pc
		.ENDIF
		.IF (((lv4mexy.x==34 || lv4mexy.x==36 ) &&(lv4mexy.y==19 || lv4mexy.y==21))&&lv4pl==0)
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR lv4_con9,	
			sizeof lv4_con9-1,
			lv4con8xy,	
			ADDR count
			add lv4con8xy.y, 3
			inc lv4pl

			add toolcxy.x, 6
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR tool8,	
				sizeof tool8-1,
				toolcxy,	
				ADDR count

		.ENDIF
		.IF ((lv4mexy.x>=44 && lv4mexy.x<=50 ) &&(lv4mexy.y==19 || lv4mexy.y==21))&&lv4pb==0
			inc lv4pb
			INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR lv4_con10,	
			sizeof lv4_con10-1,
			lv4con8xy,	
			ADDR count
			add lv4con8xy.y, 3

			add toolcxy.x, 6
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR tool9,	
				sizeof tool9-1,
				toolcxy,	
				ADDR count

		.ENDIF
		.IF (lv4pb==1&&lv4pl==1&&lv4pa==0)
			jmp findall
		.ENDIF
	.ENDIF
	.IF al=="e"
		.IF (lv4pa==1) && ((lv4mexy.x>=42 && lv4mexy.x<=48 ) &&(lv4mexy.y==10 || lv4mexy.y==12))

		INVOKE WriteConsoleOutputCharacter,
			outputHandle,	
			ADDR lv4_con11,	
			sizeof lv4_con11-1,
			lv4compxy,	
			ADDR count
			add lv4compxy.y, 3

			mov toolcxy.x, 10
			INVOKE WriteConsoleOutputCharacter,
				outputHandle,	
				ADDR tool11,	
				sizeof tool11-1,
				toolcxy,	
				ADDR count

			INVOKE Sleep, 1000
			jmp complv4

		.ENDIF
	.ENDIF

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR me,	
		sizeof me - 1,
		lv4mexy,	
		ADDR count
	jmp desk

findall:
	INVOKE Sleep, 1300
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR lv4_con6,	
		sizeof lv4_con6-1,
		lv4con8xy,	
		ADDR count
		add lv4con8xy.y, 3
	inc lv4pa

	mov toolcxy.x, 10
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR tool11,	
		sizeof tool11-1,
		toolcxy,	
		ADDR count

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR tool10,	
		sizeof tool10-1,
		toolcxy,	
		ADDR count

	jmp desk

complv4:
	
	mov whitebgxy.y, 3
	mov whitebgxy.x, 4
	call refresh_bg
	
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR lv4_con12,	
		sizeof lv4_con12,
		lv4cxy,	
		ADDR count
		
	INVOKE Sleep ,1500

	mov ecx, 37
	mov moneyxy.y, 3 
printw: 
		push ecx
		INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR lv4_con13,	
		sizeof lv4_con13-1,
		moneyxy,	
		ADDR count	

		inc moneyxy.y

		pop ecx
		Loop printw
		
		INVOKE Sleep, 1500
	mov moneyxy.y, 3

	mov ecx, 37
printspace: 
		push ecx
		INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR moneyspace,	
		sizeof moneyspace,
		moneyxy,	
		ADDR count	

		inc moneyxy.y
		INVOKE Sleep, 50

		pop ecx
		Loop printspace

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR lv4_con14,	
		sizeof lv4_con14-1,
		lv4cxy,	
		ADDR count

	INVOKE WriteConsoleOutputCharacter,
		outputHandle,	
		ADDR toolend,	
		sizeof toolend-1,
		toolcxy,	
		ADDR count
	
	inc toolendget

	INVOKE Sleep, 2000
	mov whitebgxy.y, 3
	mov whitebgxy.x, 4

ret
level4move ENDP
END main
