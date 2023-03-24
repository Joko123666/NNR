
function NPC_NPC16_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC16_dialog.txt");
	for (var i = 1; i < 60; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);

if global.language == "Korean"
{
	var text_line_num = 2;	
	if diacount == 0	&& global.mainstream < 19
	{
		text = scr_name[diacount + text_line_num];
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	if diacount == 0 && global.mainstream == 19
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
		global.UItext_show = true;
	}
	
	var text_line_num = 3;	
	if diacount == 1 
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
		global.mainquest[4] = 3;		//퀘스트 진행도 갱신
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 3  
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.mainstream = 20;
		global.mainquest[5] = 1;		//퀘스트 진행도 갱신
		quest_board("main005");			//퀘스트 보드에 퀘스트 갱신
		global.NPC16_dialog += 1;
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 8	&& global.mainstream < 21
	{
		text = scr_name[diacount + text_line_num];
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	var text_line_num = 4;
	if diacount <= 8 && global.mainstream >= 21
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog = 9;
		global.UItext_show = true;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
	}
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
		instance_create_layer(x + 32*image_xscale, y-24, "Instances", Item_teleportgem);
	}
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
	}
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num];
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
}

if global.language == "English"
{
	var text_line_num = 21;	
	if diacount == 0	&& global.mainstream < 19
	{
		text = scr_name[diacount + text_line_num];
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	if diacount == 0 && global.mainstream == 19
	{
		text = scr_name[diacount + text_line_num];
		global.NPC16_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1 
	{
		text = scr_name[diacount + text_line_num + 1];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num + 1];
		global.NPC16_dialog += 1;
		global.mainquest[4] = 3;		//퀘스트 진행도 갱신
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 3  
	{
		text = scr_name[diacount + text_line_num + 1];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num + 1];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num + 1];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num + 1];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num + 1];
		global.mainstream = 20;
		global.mainquest[5] = 1;		//퀘스트 진행도 갱신
		quest_board("main005");			//퀘스트 보드에 퀘스트 갱신
		global.NPC16_dialog += 1;
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 8	&& global.mainstream < 21
	{
		text = scr_name[diacount + text_line_num + 1];
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	if diacount <= 8 && global.mainstream >= 21
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC16_dialog = 9;
		global.UItext_show = true;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC16_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC16_dialog += 1;
	}
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC16_dialog += 1;
		instance_create_layer(x + 32*image_xscale, y-24, "Instances", Item_teleportgem);
	}
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC16_dialog += 1;
	}
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num + 2];
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
}
	
	return text;
}