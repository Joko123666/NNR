// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC11_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	//메인 스트림에 따른 대사 출력 결정
	if global.mainstream != 1
	{diacount = irandom(3);}
	if global.mainstream == 12
	{diacount = 4;}
	text = ""
	
	if diacount == 0
	{
		text = "무슨 일 있어?";
	}
	
	if diacount == 1
	{
		text = "헤이 호~";
	}
	
	if diacount == 2
	{
		text = "원하는게 뭐야?";
	}
	
	if diacount == 3  
	{
		text = "고블린은 공격뒤엔 무방비해지지";
	}
	
	if diacount == 4
	{
		text = "헤롤드가 검을 처분중이래";
	}
	
	return text;
}