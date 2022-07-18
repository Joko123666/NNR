// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_shoponer02_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = "";
	
	if diacount == 0	
	{
		text = "제루루크 상점에 어서오세요!";
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "제루루크는 처음이신가요?";
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "제루루크의 특산물은 뭐라해도 적광석!";
		dialog_count +=1
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "하지만 정작 가공시설은 이곳에 없기때문에";
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "업자가 아니면 적광석을 사도 의미가 없죠";
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "대신 질좋은 폭약과 회복약은 추천드립니다";
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 6
	{
		text = "부디 원하는걸로 골라주시죠";
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount ==7		&& randia == 0
	{
		text = "부디 원하는걸로 골라주시죠";
	}
	
	if diacount ==7		&& randia == 1
	{
		text = "폭약은 신중히 다뤄주세요~";
	}
	
	if diacount ==7		&& randia == 2
	{
		text = "여기는 장사가 참 안된단 말이죠";
	}
	
	//++++
	
	if global.Player_item == "Metalsack"	&& ex_dialog_count == 0
	{
		text = "적수정석을 파시는건가요?"
		ex_dialog_count = 1;
	}
	
	if global.Player_item == "Metalsack"	&& ex_dialog_count == 1
	{
		text = "적수정석은 언제든 고가로 매입해 드린답니다"
		ex_dialog_count = 2;
	}
	
	if global.Player_item == "Metalsack"	&& ex_dialog_count == 2
	{
		text = "적수정석 1000G에 매입하였습니다~"
		global.Player_item = "empty";
		global.gold += 1000;
		global.subquest[3] = 3;
		quest_clearboard("side003");
		audio_play_sound(SE_system07, 1, false);
		ex_dialog_count = 3;
		global.NPC21_dialog = 50;
	}
	
	if ex_dialog_count == 3
	{
		text = "다음번에 또 부탁드려요~"
	}
	
	return text;
}