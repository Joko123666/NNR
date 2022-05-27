// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_shoponer_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	
	
	if diacount == 0	
	{
		text = "어서오십시오 손님, 처음이신가요?";
		dialog_count +=1
		global.NPC_shopper01_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "저는 여행에 필요한 아이템을 파는 상인입니다";
		dialog_count +=1
		global.NPC_shopper01_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "만남의 기념으로 이 아이템을 드리겠습니다";
		dialog_count +=1
		global.NPC_shopper01_dialog += 1;
		
		instance_create_layer(x + image_xscale * 44, y - 46, "Effects", Item_healpotion);
	}
	
	if diacount == 3
	{
		text = "원하시는 상품을 골라주세요";
		dialog_count +=1
	}
	
	return text;
}