
function NPC_NPC15_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC15_dialog.txt");
	for (var i = 1; i < 55; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	if diacount == 0 && global.mainstream < 18
	{
		text = scr_name[diacount + 2];
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	if diacount == 0 && global.quest_stack[4] != "empty"
	{text = scr_name[3];}
	
	if diacount == 0 && global.mainstream == 18 && global.quest_stack[4] == "empty"
	{
		text = scr_name[diacount + 4];
		global.NPC15_dialog = 1;
		global.UItext_show = true;
	}
	
	if diacount == 1 
	{
		text = scr_name[diacount + 4];
		global.NPC15_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + 4];
		global.NPC15_dialog += 1;
	}
	
	if diacount == 3  
	{
		text = scr_name[diacount + 4];
		global.NPC15_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + 4];
		global.NPC15_dialog += 1;
		global.mainstream = 19;
		global.mainquest[4] = 1;		//퀘스트 진행도 갱신
		quest_board("main004");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 5	&& global.greenorb == false
	{
		text = scr_name[diacount + 4];
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	
	//End research quest
	
	if diacount <= 5 && global.greenorb == true
	{
		text = scr_name[diacount + 5];
		global.NPC15_dialog = 6;
		global.UItext_show = true;
	}
	
	if diacount == 6 
	{
		text = scr_name[diacount + 5];
		global.NPC15_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + 5];
		global.NPC15_dialog += 1;
	}
	
	if diacount == 8 
	{
		text = scr_name[diacount + 5];
		global.NPC15_dialog += 1;
	}
	
	if diacount == 9 
	{
		text = scr_name[diacount + 5];
		audio_play_sound(SE_system01, 2, false);
		global.NPC15_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + 5];
		global.NPC15_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + 5];
		global.NPC15_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + 5];
		global.NPC15_dialog += 1;
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + 5];
		global.NPC15_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + 5];
		global.gold += 200;
		audio_play_sound(SE_coin02, 1, false);
		global.mainquest[5] = 3;		//퀘스트 진행도 갱신
		global.NPC15_dialog += 1;
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + 5];
		global.mainstream = 22;
		global.NPC15_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	if diacount == 16
	{
		var randia = irandom(3);
		if randia == 0
			{ text = scr_name[21]; }
		if randia == 1
			{ text = scr_name[22]; }
		if randia == 2
			{ text = scr_name[23]; }
		if randia == 3
			{ text = scr_name[24]; }
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}

	
	return text;
}