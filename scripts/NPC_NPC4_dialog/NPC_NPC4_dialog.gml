// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC4_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "";
	
	if diacount == 0
	{
		text = "안녕 이드? 오늘도 좋은 하루구나.";
		dialog_count +=1
		if global.mainstream >= 18
		{global.NPC4_dialog += 1;}

	}
	
	if diacount == 1
	{
		text = "마침 부탁할 일이 있는데 들어줄 수 있겠니?";
		dialog_count +=1
		global.NPC4_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "동쪽 숲에서 나오는 덤불 딸기가 필요한데";
		dialog_count +=1
		global.NPC4_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "부탁좀 할 수 있을까?";
		
		
		
		if global.quest_stack[4] == "empty"
		{
			quest_board("side001");
			global.NPC4_dialog += 1;
			global.quest001 = 1;
			global.subquest[1] = 1;
			dialog_count +=1
			audio_play_sound(SE_system07, 1, false);
		}
		else {text = "지금은 맡고 있는 일이 너무 많구나."}
	}
	
	if diacount >= 4 && global.Player_item != "Bushberry"
	 {
		 text = "가는길에 몬스터가 있을테니 조심해";
	 }
	
	if diacount >= 4 && global.Player_item == "Bushberry"
	{
		 text = "덤불 딸기를 가져왔구나!";
		 dialog_count +=1
		global.NPC4_dialog += 1;
		global.subquest[1] = 3;
		quest_clearboard("side001");
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 5
	{
		text = "가져다 줘서 고마워! 작지만 답례로 저번에 딴 약초를 줄게";
		global.Player_item = "empty";
		instance_create_layer(x + image_xscale * 44, y - 46, "Effects", Item_healherb);
		
		dialog_count = 6;
		global.NPC4_dialog =6;
	}
	
	if diacount == 6
	{
		text = "항상 심부름 해줘서 고마워!";
	}
	
	return text;
}