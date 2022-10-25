// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_shoponer03_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = "";
	
	if diacount == 0	
	{
		text = "어서오십셔";
		global.NPC_shopper03_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "길드의 요청으로 출장나온 상인입니다";
		global.NPC_shopper03_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "물건은 별로 못가져왔지만";
		global.NPC_shopper03_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "그래도 이것저것 사가십셔";
		global.NPC_shopper03_dialog += 1;
	}
	
	if diacount == 4
	{
		if randia == 0
			{text = "사가십셔~";}
		if randia == 1
			{text = "이게 출장지 적정가입니다~";}
		if randia == 2
			{text = "지금사면 감사의 마음이 공짜~";}
		
	}
	

	return text;
}