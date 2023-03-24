 
function NPC_NPC44_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC44_dialog.txt");
	for (var i = 1; i < 60; i++;)
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
		global.NPC44_dialog += 1;
		global.UItext_show = true;
		dialog_endswitch = false;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
		instance_create_depth(x + image_xscale*8, y-8, 1, Item_healpotion2);
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
		dialog_endswitch = true;
		global.UItext_show = false;
	}

	if diacount == 13	&& global.mainstream < 60
	{
		if randia == 0
		{text = scr_name[diacount + text_line_num];}
		if randia == 1
		{text = scr_name[diacount + text_line_num + 1];}
		if randia == 2
		{text = scr_name[diacount + text_line_num + 2];}
		dialog_endswitch = true;
	}
	
	if diacount == 13 && global.mainstream >= 60
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC44_dialog += 1;
		dialog_endswitch = false;
		global.UItext_show = true;
	}
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC44_dialog += 1;
	}
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC44_dialog += 1;
		audio_play_sound(SE_coin02, 1, 0);
		global.gold += 1000;
	}
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC44_dialog += 1;
	}
	if diacount == 16
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC44_dialog += 1;
	}
	if diacount == 17
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC44_dialog += 1;
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	if diacount == 18
	{
		if randia == 0
		{text = scr_name[diacount + text_line_num + 3];}
		if randia == 1
		{text = scr_name[diacount + text_line_num + 4];}
		dialog_endswitch = true;
	}
}

if global.language == "English"
{
	var text_line_num = 26;	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
		global.UItext_show = true;
		dialog_endswitch = false;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
		instance_create_depth(x + image_xscale*8, y-8, 1, Item_healpotion2);
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		global.NPC44_dialog += 1;
		dialog_endswitch = true;
		global.UItext_show = false;
	}

	if diacount == 13	&& global.mainstream < 60
	{
		if randia == 0
		{text = scr_name[diacount + text_line_num];}
		if randia == 1
		{text = scr_name[diacount + text_line_num + 1];}
		if randia == 2
		{text = scr_name[diacount + text_line_num + 2];}
		dialog_endswitch = true;
	}
	
	if diacount == 13 && global.mainstream >= 60
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC44_dialog += 1;
		dialog_endswitch = false;
		global.UItext_show = true;
	}
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC44_dialog += 1;
	}
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC44_dialog += 1;
		audio_play_sound(SE_coin02, 1, 0);
		global.gold += 1000;
	}
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC44_dialog += 1;
	}
	if diacount == 16
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC44_dialog += 1;
	}
	if diacount == 17
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC44_dialog += 1;
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	if diacount == 18
	{
		if randia == 0
		{text = scr_name[diacount + text_line_num + 3];}
		if randia == 1
		{text = scr_name[diacount + text_line_num + 4];}
		dialog_endswitch = true;
	}
}
	
	return text;
}