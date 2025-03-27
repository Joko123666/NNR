
function NPC_NPC09_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC09_dialog.txt");
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
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(10, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC09_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(15, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC09_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.NPC09_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC09_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(10, 5);
	}
	
	var text_line_num = 3;
	if diacount == 11 && global.gold >= 150
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(15, 5);
		global.gold -= 150;
		audio_play_sound(SE_coin02, 1, false);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		oPlayer.attackskill_set = 2;
		global.Player_attackskill = 1;
		global.attackskill02 = true;
		global.NPC09_dialog += 1;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(15, 5);
	}
}

if global.language == "English"
{	
	var text_line_num = 20;
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(10, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC09_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(15, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC09_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.NPC09_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC09_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(10, 5);
	}
	
	var text_line_num = 21;
	if diacount == 11 && global.gold >= 150
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(15, 5);
		global.gold -= 150;
		audio_play_sound(SE_coin02, 1, false);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		oPlayer.attackskill_set = 2;
		global.Player_attackskill = 1;
		global.attackskill02 = true;
		global.NPC09_dialog += 1;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(15, 5);
	}
}
	
	return text;
}