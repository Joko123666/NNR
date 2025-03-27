// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC7_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "";
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC07_dialog.txt");
	for (var i = 1; i < 25; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
if global.language == "Korean"
{	
	if diacount == 0
	{
		text = scr_name[2];
		if global.mainstream >= 18
		{global.NPC7_dialog += 1;}
	}
	
	if diacount == 1
	{
		text = scr_name[3];
		dialog_count +=1
		global.NPC7_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[4];
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
			text = scr_name[5];
			audio_play_sound(SE_system07, 1, false);
		}
		else {text = "맡은 일이 너무 많잖아!!!"}
		
	}
	
	if diacount == 4
	{
		text = scr_name[6];
		global.NPC7_dialog += 1;
	}
	
	if diacount == 5	&& global.subquest[2] != 2
	{
		text = scr_name[7];
	}
	
	if diacount == 5	&& global.subquest[2] == 2
	{
		text = scr_name[8];
		global.NPC7_dialog += 1;
		global.subquest[2] = 3;
		quest_clearboard("side002");
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 6
	{
		text = scr_name[9];
		global.NPC7_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[10];
		instance_create_layer(oPlayer.x, y-24, "Instances", Item_armlet_power);
		global.NPC7_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[11];
	}
}

if global.language == "English"
{	
	if diacount == 0
	{
		text = scr_name[13];
		if global.mainstream >= 18
		{global.NPC7_dialog += 1;}
	}
	
	if diacount == 1
	{
		text = scr_name[14];
		dialog_count +=1
		global.NPC7_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[15];
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
			text = scr_name[16];
			audio_play_sound(SE_system07, 1, false);
		}
		else {text = "맡은 일이 너무 많잖아!!!"}
		
	}
	
	if diacount == 4
	{
		text = scr_name[17];
		global.NPC7_dialog += 1;
	}
	
	if diacount == 5	&& global.subquest[2] != 2
	{
		text = scr_name[18];
	}
	
	if diacount == 5	&& global.subquest[2] == 2
	{
		text = scr_name[19];
		global.NPC7_dialog += 1;
		global.subquest[2] = 3;
		quest_clearboard("side002");
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 6
	{
		text = scr_name[20];
		global.NPC7_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[21];
		instance_create_layer(oPlayer.x, y-24, "Instances", Item_armlet_power);
		global.NPC7_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[22];
	}
}

	
	return text;
}