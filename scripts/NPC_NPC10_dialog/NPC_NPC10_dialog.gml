// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC10_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = "";
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC10_dialog.txt");
	for (var i = 1; i < 80; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	if global.language == "Korean"
{
	var text_line_num = 2;
	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 4 
	 {
		 text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	 }
	
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		
		global.NPC10_dialog += 1;
		global.mainstream = 12;
		global.mainquest[1] = 1;		//퀘스트 진행도 갱신
		quest_board("main001");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		
	}
	
	if diacount == 6 && global.Player_sword == false
	{
		if randia == 0
		{text = scr_name[diacount + text_line_num];}
		if randia == 1
		{text = scr_name[diacount + text_line_num + 1];}
		if randia == 2
		{text = scr_name[diacount + text_line_num + 2];}
		
		global.UItext_show = false;
		dialog_endswitch = true;
		diafalse_count = 50;
	}
	
	var text_line_num = 5;
	if diacount == 6 && global.Player_sword == true
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
		global.mainstream = 18;
		global.mainquest[1] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 7 && global.Player_sword == true
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 8 && global.Player_sword == true
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
		global.guildcard = 1;
	}
	
	if diacount == 9 && global.mainstream == 18
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 10 && global.mainstream == 18
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 11 && global.mainstream < 21
	{
		text = scr_name[diacount + text_line_num];
		global.UItext_show = false;
		dialog_endswitch = true;
		diafalse_count = 50;
	}
	
	
	//Main quest proccess
	var text_line_num = 6;
	if diacount <= 11 && global.mainstream == 22
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog = 12;
		global.UItext_show = true;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 16
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 17
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 18
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 19
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 20
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 21
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 22
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 23
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
		global.mainstream = 23;
	}
	
	
	if diacount == 24
	{
		text = scr_name[diacount + text_line_num];
		instance_create_layer(x - 24 *image_xscale, y-24, "Instances", Item_jumpplus);
		global.NPC10_dialog += 1;
		audio_play_sound(SE_coin01, 1, false);
	}
	
	if diacount == 25
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 26
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 27
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
		global.UItext_show = false;
		dialog_endswitch = true;
		diafalse_count = 50;
		global.mainquest[6] = 1;		//퀘스트 진행도 갱신
		quest_board("main006");			//퀘스트 보드에 퀘스트 갱신
	}
	
	if diacount == 28
	{
		var randia = irandom(3);
		if randia == 0
			{ text = scr_name[diacount + text_line_num]; }
		if randia == 1
			{ text = scr_name[diacount + text_line_num + 1]; }
		if randia == 2
			{ text = scr_name[diacount + text_line_num + 2]; }
		if randia == 3
			{ text = scr_name[diacount + text_line_num + 3]; }
		dialog_endswitch = true;
		diafalse_count = 50;
	}
	
}

	if global.language == "English"
{
	var text_line_num = 39;
	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 4 
	 {
		 text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	 }
	
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		
		global.NPC10_dialog += 1;
		global.mainstream = 12;
		global.mainquest[1] = 1;		//퀘스트 진행도 갱신
		quest_board("main001");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		
	}
	
	if diacount == 6 && global.Player_sword == false
	{
		if randia == 0
		{text = scr_name[diacount + text_line_num];}
		if randia == 1
		{text = scr_name[diacount + text_line_num + 1];}
		if randia == 2
		{text = scr_name[diacount + text_line_num + 2];}
		
		global.UItext_show = false;
		dialog_endswitch = true;
		diafalse_count = 50;
	}
	
	var text_line_num = 42;
	if diacount == 6 && global.Player_sword == true
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
		global.mainstream = 18;
		global.mainquest[1] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 7 && global.Player_sword == true
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 8 && global.Player_sword == true
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
		global.guildcard = 1;
	}
	
	if diacount == 9 && global.mainstream == 18
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 10 && global.mainstream == 18
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 11 && global.mainstream < 21
	{
		text = scr_name[diacount + text_line_num];
		global.UItext_show = false;
		dialog_endswitch = true;
		diafalse_count = 50;
	}
	
	
	//Main quest proccess
	var text_line_num = 43;
	if diacount <= 11 && global.mainstream == 22
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog = 12;
		global.UItext_show = true;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 16
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 17
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 18
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 19
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 20
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 21
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 22
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 23
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
		global.mainstream = 23;
	}
	
	
	if diacount == 24
	{
		text = scr_name[diacount + text_line_num];
		instance_create_layer(x - 24 *image_xscale, y-24, "Instances", Item_jumpplus);
		global.NPC10_dialog += 1;
		audio_play_sound(SE_coin01, 1, false);
	}
	
	if diacount == 25
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 26
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
	}
	
	if diacount == 27
	{
		text = scr_name[diacount + text_line_num];
		global.NPC10_dialog += 1;
		global.UItext_show = false;
		dialog_endswitch = true;
		diafalse_count = 50;
		global.mainquest[6] = 1;		//퀘스트 진행도 갱신
		quest_board("main006");			//퀘스트 보드에 퀘스트 갱신
	}
	
	if diacount == 28
	{
		var randia = irandom(3);
		if randia == 0
			{ text = scr_name[diacount + text_line_num]; }
		if randia == 1
			{ text = scr_name[diacount + text_line_num + 1]; }
		if randia == 2
			{ text = scr_name[diacount + text_line_num + 2]; }
		if randia == 3
			{ text = scr_name[diacount + text_line_num + 3]; }
		dialog_endswitch = true;
		diafalse_count = 50;
	}
	
}

	return text;
}