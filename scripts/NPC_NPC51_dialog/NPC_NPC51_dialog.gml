
function NPC_NPC51_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC51_dialog.txt");
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
		global.NPC51_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC51_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "...";
		active_sprite = NPC_village_09_active2;
		global.NPC51_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC51_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC51_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC51_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC51_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.Player_attackskill = 6;
		global.attackskill06 = true;
		oPlayer.attackskill_set = 6;
		global.NPC51_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC51_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC51_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		active_sprite = NPC_village_09_active;
		screen_shake(10, 5);
		global.NPC51_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(10, 5);
		global.NPC51_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
	}
}

if global.language == "English"
{
	var text_line_num = 16;	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC51_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC51_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "...";
		active_sprite = NPC_village_09_active2;
		global.NPC51_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC51_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC51_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC51_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC51_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		global.Player_attackskill = 6;
		global.attackskill06 = true;
		oPlayer.attackskill_set = 6;
		global.NPC51_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		global.NPC51_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		global.NPC51_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		active_sprite = NPC_village_09_active;
		screen_shake(10, 5);
		global.NPC51_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(10, 5);
		global.NPC51_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
	}
}
	
	return text;
}