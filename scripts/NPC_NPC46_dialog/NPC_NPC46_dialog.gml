
function NPC_NPC46_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC46_dialog.txt");
	for (var i = 1; i < 55; i++;)
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
		global.NPC46_dialog += 1;
		global.UItext_show = true;
		global.mainstream = 45;
		dialog_endswitch = false;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	

	if diacount == 11 && global.mainstream < 60
	{
		if randia == 0
		{text = scr_name[diacount + text_line_num];}
		if randia == 1
		{text = scr_name[diacount + text_line_num + 1];}
		if randia == 2
		{text = scr_name[diacount + text_line_num + 2];}
		dialog_endswitch = true;
		alarm[8] = 30;
	}
	
	if diacount == 11 && global.mainstream >= 60
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC46_dialog += 1;
		global.UItext_show = true;
		dialog_endswitch = false;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 16
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC46_dialog += 1;
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	if diacount == 17
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
	var text_line_num = 25;	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
		global.UItext_show = true;
		global.mainstream = 45;
		dialog_endswitch = false;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		global.NPC46_dialog += 1;
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	

	if diacount == 11 && global.mainstream < 60
	{
		if randia == 0
		{text = scr_name[diacount + text_line_num];}
		if randia == 1
		{text = scr_name[diacount + text_line_num + 1];}
		if randia == 2
		{text = scr_name[diacount + text_line_num + 2];}
		dialog_endswitch = true;
		alarm[8] = 30;
	}
	
	if diacount == 11 && global.mainstream >= 60
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC46_dialog += 1;
		global.UItext_show = true;
		dialog_endswitch = false;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC46_dialog += 1;
	}
	
	if diacount == 16
	{
		text = scr_name[diacount + text_line_num + 3];
		global.NPC46_dialog += 1;
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	if diacount == 17
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