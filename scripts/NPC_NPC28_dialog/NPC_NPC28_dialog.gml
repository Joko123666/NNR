  
function NPC_NPC28_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC28_dialog.txt");
	for (var i = 1; i < 95; i++;)
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
		global.NPC28_dialog += 1;
	}
	
	if diacount == 1
	{
		if global.NPC18_dialog >= 4
		{text = scr_name[diacount + text_line_num];}
		else
		{text = scr_name[diacount + text_line_num + 1];}
		
		global.NPC28_dialog += 1;
	}
	
	if diacount == 2
	{
		if global.NPC18_dialog >= 4
		{text = scr_name[diacount + text_line_num + 1];}
		else
		{text = scr_name[diacount + text_line_num + 2];}
		global.NPC28_dialog += 1;
	}
	
	var text_line_num = 4;
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
	}
	
	var text_line_num = 5;
	if diacount <= 6	&& global.mainstream >= 41
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog = 7;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}

	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		instance_create_layer(x + 24*image_xscale, y - 32, "Instances", Item_firework);
		global.NPC28_dialog += 1;
		
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 16
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if global.mainstream >= 51	&& global.NPC28_dialog <= 20
	{
		if global.NPC18_dialog < 3 && global.NPC28_dialog < 3
		{text = scr_name[22];}
		else
		{text = scr_name[23];}
		global.NPC28_dialog = 21;
		
	}
	
	var text_line_num = 3;
	if diacount == 21
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 22
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 23
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 24
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 25
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 26
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 27
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 28
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 29
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 30
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 31
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 32
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 33
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 34
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 35
	{
		text = scr_name[diacount + 3];
		global.NPC28_dialog += 1;
		global.Player_moveskill = 4;
		oPlayer.moveskill_set = 4;
		global.moveskill04 = true;
		audio_play_sound(SE_system03, 1, 0);
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 36
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 37
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if global.mainstream >= 60
	{
		text = scr_name[41];
		global.NPC28_dialog = 40;
	}
	
	if diacount == 40
	{
		text = scr_name[diacount + text_line_num -1];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 41
	{
		text = scr_name[diacount + text_line_num -1];
		global.NPC28_dialog += 1;
	}
}

if global.language == "English"
{
	var text_line_num = 45;	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 1
	{
		if global.NPC18_dialog >= 4
		{text = scr_name[diacount + text_line_num];}
		else
		{text = scr_name[diacount + text_line_num + 1];}
		
		global.NPC28_dialog += 1;
	}
	
	if diacount == 2
	{
		if global.NPC18_dialog >= 4
		{text = scr_name[diacount + text_line_num + 1];}
		else
		{text = scr_name[diacount + text_line_num + 2];}
		global.NPC28_dialog += 1;
	}
	
	var text_line_num = 47;
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
	}
	
	var text_line_num = 48;
	if diacount <= 6	&& global.mainstream >= 41
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog = 7;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}

	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		instance_create_layer(x + 24*image_xscale, y - 32, "Instances", Item_firework);
		global.NPC28_dialog += 1;
		
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 16
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if global.mainstream >= 51	&& global.NPC28_dialog <= 20
	{
		if global.NPC18_dialog < 3 && global.NPC28_dialog < 3
		{text = scr_name[22];}
		else
		{text = scr_name[23];}
		global.NPC28_dialog = 21;
		
	}
	
	var text_line_num = 46;
	if diacount == 21
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 22
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 23
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 24
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 25
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 26
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 27
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 28
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 29
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 30
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 31
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 32
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 33
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 34
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 35
	{
		text = scr_name[diacount + 3];
		global.NPC28_dialog += 1;
		global.Player_moveskill = 4;
		oPlayer.moveskill_set = 4;
		global.moveskill04 = true;
		audio_play_sound(SE_system03, 1, 0);
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 36
	{
		text = scr_name[diacount + text_line_num];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 37
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if global.mainstream >= 60
	{
		text = scr_name[41];
		global.NPC28_dialog = 40;
	}
	
	if diacount == 40
	{
		text = scr_name[diacount + text_line_num -1];
		global.NPC28_dialog += 1;
	}
	
	if diacount == 41
	{
		text = scr_name[diacount + text_line_num -1];
		global.NPC28_dialog += 1;
	}
}
	
	return text;
}