// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC4_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "";
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC04_dialog.txt");
	for (var i = 1; i < 55; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	if diacount == 0
	{
		text = scr_name[diacount + 2];
		dialog_count +=1
		if global.mainstream >= 18
		{global.NPC4_dialog += 1;}

	}
	
	if diacount == 1
	{
		text = scr_name[diacount + 2];
		dialog_count +=1
		global.NPC4_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + 2];
		dialog_count +=1
		global.NPC4_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + 2];
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
		text = scr_name[diacount + 2];
	 }
	
	if diacount >= 4 && global.Player_item == "Bushberry"
	{
		text = scr_name[diacount + 3];
		 dialog_count +=1
		global.NPC4_dialog += 1;
		global.subquest[1] = 3;
		quest_clearboard("side001");
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + 3];
		global.Player_item = "empty";
		instance_create_layer(x + image_xscale * 44, y - 46, "Effects", Item_healherb);
		
		dialog_count = 6;
		global.NPC4_dialog =6;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + 3];
	}
	
	return text;
}