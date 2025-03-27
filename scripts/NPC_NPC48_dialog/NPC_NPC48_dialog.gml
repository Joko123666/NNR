
function NPC_NPC48_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC48_dialog.txt");
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
		global.NPC48_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
		var cup_01 = instance_create_layer(415, 332, "Instances", oYabawi_cup);
		var cup_02 = instance_create_layer(461, 332, "Instances", oYabawi_cup);
		var cup_03 = instance_create_layer(507, 332, "Instances", oYabawi_cup);
		var selection = irandom(2)
		if selection == 0
		{cup_01.has_ball = true;}
		if selection == 1
		{cup_02.has_ball = true;}
		if selection == 2
		{cup_03.has_ball = true;}
	}
	
	if diacount == 15	&& global.gold <500
	{
		text = scr_name[diacount + text_line_num];
	}
	if diacount == 15	&& global.gold >= 500
	{
		text = scr_name[diacount + text_line_num + 1];
		global.NPC48_dialog += 1;
		global.yabawi_token += 1;
		global.gold -= 500;
	}
	
	if diacount == 16	&& global.yabawi_token > 0
	{
		text = scr_name[diacount + text_line_num + 1];
	}
	if diacount == 16	&& global.yabawi_token <= 0
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 17
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 18
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 19
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 20	&& global.gold < 500
	{
		text = scr_name[diacount + text_line_num + 2];
	}
	if diacount == 20	&& global.gold >= 500
	{
		global.gold -= 500;
		text = scr_name[diacount + text_line_num + 3];
		global.yabawi_token += 1;
		global.NPC48_dialog += 1;
	}
	
	if diacount == 21	&& global.yabawi_token > 0
	{
		text = scr_name[diacount + text_line_num + 3];
	}
	if diacount == 21	&& global.yabawi_token <= 0
	{
		text = scr_name[diacount + text_line_num + 4];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 22
	{
		text = scr_name[diacount + text_line_num + 4];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 23
	{
		text = scr_name[diacount + text_line_num + 4];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 24
	{
		text = scr_name[diacount + text_line_num + 4];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 25	&& global.gold < 500
	{
		text = scr_name[diacount + text_line_num + 4];
	}
	if diacount == 25	&& global.gold >= 500
	{
		global.gold -= 500;
		text = scr_name[diacount + text_line_num + 5];
		global.yabawi_token += 1;
		global.NPC48_dialog += 1;
	}
	
	if diacount == 26
	{
		text = scr_name[diacount + text_line_num + 5];
	}
	
	if diacount == 30
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 31
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 32
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 33
	{
		if randia == 0
		{text = scr_name[diacount + text_line_num + 2];}
		if randia == 1
		{text = scr_name[diacount + text_line_num + 3];}
		if randia == 2
		{text = scr_name[diacount + text_line_num + 4];}
		
	}
}	
if global.language == "English"
{
	var text_line_num = 41;	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num];
		global.NPC48_dialog += 1;
		var cup_01 = instance_create_layer(415, 332, "Instances", oYabawi_cup);
		var cup_02 = instance_create_layer(461, 332, "Instances", oYabawi_cup);
		var cup_03 = instance_create_layer(507, 332, "Instances", oYabawi_cup);
		var selection = irandom(2)
		if selection == 0
		{cup_01.has_ball = true;}
		if selection == 1
		{cup_02.has_ball = true;}
		if selection == 2
		{cup_03.has_ball = true;}
	}
	
	if diacount == 15	&& global.gold <500
	{
		text = scr_name[diacount + text_line_num];
	}
	if diacount == 15	&& global.gold >= 500
	{
		text = scr_name[diacount + text_line_num + 1];
		global.NPC48_dialog += 1;
		global.yabawi_token += 1;
		global.gold -= 500;
	}
	
	if diacount == 16	&& global.yabawi_token > 0
	{
		text = scr_name[diacount + text_line_num + 1];
	}
	if diacount == 16	&& global.yabawi_token <= 0
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 17
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 18
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 19
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 20	&& global.gold < 500
	{
		text = scr_name[diacount + text_line_num + 2];
	}
	if diacount == 20	&& global.gold >= 500
	{
		global.gold -= 500;
		text = scr_name[diacount + text_line_num + 3];
		global.yabawi_token += 1;
		global.NPC48_dialog += 1;
	}
	
	if diacount == 21	&& global.yabawi_token > 0
	{
		text = scr_name[diacount + text_line_num + 3];
	}
	if diacount == 21	&& global.yabawi_token <= 0
	{
		text = scr_name[diacount + text_line_num + 4];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 22
	{
		text = scr_name[diacount + text_line_num + 4];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 23
	{
		text = scr_name[diacount + text_line_num + 4];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 24
	{
		text = scr_name[diacount + text_line_num + 4];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 25	&& global.gold < 500
	{
		text = scr_name[diacount + text_line_num + 4];
	}
	if diacount == 25	&& global.gold >= 500
	{
		global.gold -= 500;
		text = scr_name[diacount + text_line_num + 5];
		global.yabawi_token += 1;
		global.NPC48_dialog += 1;
	}
	
	if diacount == 26
	{
		text = scr_name[diacount + text_line_num + 5];
	}
	
	if diacount == 30
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 31
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 32
	{
		text = scr_name[diacount + text_line_num + 2];
		global.NPC48_dialog += 1;
	}
	
	if diacount == 33
	{
		if randia == 0
		{text = scr_name[diacount + text_line_num + 2];}
		if randia == 1
		{text = scr_name[diacount + text_line_num + 3];}
		if randia == 2
		{text = scr_name[diacount + text_line_num + 4];}
		
	}
}	
	

	
	return text;
}