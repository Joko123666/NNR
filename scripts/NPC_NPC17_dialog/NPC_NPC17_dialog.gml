
function NPC_NPC17_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(1);
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC17_dialog.txt");
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
		global.NPC17_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	

	if diacount == 2 
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	
	if diacount == 4  
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	
	if diacount == 6 && randia == 0
	{
		text = scr_name[diacount + text_line_num];
		if global.gold >= 200
		{global.NPC17_dialog += 1;}
	}
	
	var text_line_num = 3;	
	if diacount == 6 && randia == 1
	{
		text = scr_name[diacount + text_line_num];
		if global.gold >= 200
		{global.NPC17_dialog += 1;}
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.gold -= 200;
		audio_play_sound(SE_coin02, 1, false);
		global.Player_moveskill = 2;
		oPlayer.moveskill_set = 2;
		global.NPC17_dialog += 1;
		global.moveskill02 = true;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
}

if global.language == "English"
{
	var text_line_num = 14;	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	

	if diacount == 2 
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	
	if diacount == 4  
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	
	if diacount == 6 && randia == 0
	{
		text = scr_name[diacount + text_line_num];
		if global.gold >= 200
		{global.NPC17_dialog += 1;}
	}
	
	var text_line_num = 15;	
	if diacount == 6 && randia == 1
	{
		text = scr_name[diacount + text_line_num];
		if global.gold >= 200
		{global.NPC17_dialog += 1;}
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.gold -= 200;
		audio_play_sound(SE_coin02, 1, false);
		global.Player_moveskill = 2;
		oPlayer.moveskill_set = 2;
		global.NPC17_dialog += 1;
		global.moveskill02 = true;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC17_dialog += 1;
	}
}
	
	return text;
}