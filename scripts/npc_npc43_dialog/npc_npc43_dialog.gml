
function NPC_NPC43_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(1);
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC43_dialog.txt");
	for (var i = 1; i < 75; i++;)
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
		global.NPC43_dialog += 1;
		global.UItext_show = true;
		global.mainquest[14] = 3;		//퀘스트 진행도 갱신
		quest_clearboard("main014");
		audio_play_sound(SE_system03, 1, false);
		global.mainstream = 45;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 13
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 16
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 60;
		global.UItext_show = false;
		global.mainquest[15] = 1;		//퀘스트 진행도 갱신
		quest_board("main015");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		global.mainstream = 51;
		alarm[9] = 30;
	}
	
	if diacount == 17 && global.mainstream < 60
	{
		if randia == 0
		{text = scr_name[diacount  + text_line_num];}
		if randia == 1
		{text = scr_name[diacount + text_line_num + 1];}
		dialog_endswitch = true;
		diafalse_count = 40;
		alarm[9] = 30;
	}
	
	if diacount == 17 && global.mainstream >= 60
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
		global.UItext_show = true;
		dialog_endswitch = false;
		
		global.mainquest[17] = 3;
		quest_clearboard("main017");
	}
	
	if diacount == 18
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 19
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 20
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 21
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 22
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 23
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 24
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 25
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
		global.UItext_show = false;
		dialog_endswitch = true;
		diafalse_count = 40;
		global.mainstream = 61;
		alarm[9] = 30;
		global.mainquest[20] = 1;		//퀘스트 진행도 갱신
		quest_board("main020");			//퀘스트 보드에 퀘스트 갱신
	}
	
	if diacount == 26
	{
		if randia == 0
		{text = scr_name[diacount  + text_line_num + 2];}
		if randia == 1
		{text = scr_name[diacount + 5];}
		dialog_endswitch = true;
		diafalse_count = 40;
	}
	
}

if global.language == "English"
{
	var text_line_num = 33;	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		global.NPC43_dialog += 1;
		global.UItext_show = true;
		global.mainquest[14] = 3;		//퀘스트 진행도 갱신
		quest_clearboard("main014");
		audio_play_sound(SE_system03, 1, false);
		global.mainstream = 45;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 13
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 16
	{
		text = scr_name[diacount  + text_line_num];
		global.NPC43_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 60;
		global.UItext_show = false;
		global.mainquest[15] = 1;		//퀘스트 진행도 갱신
		quest_board("main015");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		global.mainstream = 51;
		alarm[9] = 30;
	}
	
	if diacount == 17 && global.mainstream < 60
	{
		if randia == 0
		{text = scr_name[diacount  + text_line_num];}
		if randia == 1
		{text = scr_name[diacount + text_line_num + 1];}
		dialog_endswitch = true;
		diafalse_count = 40;
		alarm[9] = 30;
	}
	
	if diacount == 17 && global.mainstream >= 60
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
		global.UItext_show = true;
		dialog_endswitch = false;
		
		global.mainquest[17] = 3;
		quest_clearboard("main017");
	}
	
	if diacount == 18
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 19
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 20
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 21
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 22
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 23
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 24
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
	}
	
	if diacount == 25
	{
		text = scr_name[diacount  + text_line_num + 2];
		global.NPC43_dialog += 1;
		global.UItext_show = false;
		dialog_endswitch = true;
		diafalse_count = 40;
		global.mainstream = 61;
		alarm[9] = 30;
		global.mainquest[20] = 1;		//퀘스트 진행도 갱신
		quest_board("main020");			//퀘스트 보드에 퀘스트 갱신
	}
	
	if diacount == 26
	{
		if randia == 0
		{text = scr_name[diacount  + text_line_num + 2];}
		if randia == 1
		{text = scr_name[diacount + 5];}
		dialog_endswitch = true;
		diafalse_count = 40;
	}
	
}
	
	
	return text;
}