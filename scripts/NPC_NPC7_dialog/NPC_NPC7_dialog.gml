// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC7_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "";
	
	if diacount == 0
	{
		text = "난 몬스터가 세상에서 제일 싫어!";
		if global.mainstream >= 7
		{
			if global.mainstream >= 18
			{global.NPC7_dialog += 1;}
		}
	}
	
	if diacount == 1
	{
		text = "고블린! 고블린! 고블린들을 죽여!!!!";
		dialog_count +=1
		global.NPC7_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "오크!! 오크!!! 오크들도 죽여!!!";
		dialog_count +=1
		global.NPC7_dialog += 1;
	}
	
	if diacount == 3
	{
		
		
		if global.quest_stack[4] == "empty"
		{
			quest_board("side002");
			global.NPC7_dialog += 1;
			global.subquest[2] = 1;
			dialog_count +=1
			text = "많이 죽이고 증거를 가져오면 보상을 줄게!";
			audio_play_sound(SE_system07, 1, false);
		}
		else {text = "맡은 일이 너무 많잖아!!!"}
		
	}
	
	if diacount == 4
	{
		text = "빨리빨리 가서 죽이고 와!!!";
		global.NPC7_dialog += 1;
	}
	
	if diacount == 5	&& global.subquest[2] != 2
	{
		text = "귀! 10개!! 이빨! 2개!!";
	}
	
	if diacount == 5	&& global.subquest[2] == 2
	{
		text = "잘했어!!!";
		global.NPC7_dialog += 1;
		global.subquest[2] = 3;
		quest_clearboard("side002");
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 6
	{
		text = "많이 많이 죽였어!!!";
		global.NPC7_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "보답으로 이거 받아!";
		instance_create_layer(x, y, "Instances", Item_armlet_power);
		global.NPC7_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "다음에도 몬스터 많이 죽여!!!";
	}
	
	return text;
}