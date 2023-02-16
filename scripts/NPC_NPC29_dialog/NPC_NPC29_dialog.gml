
function NPC_NPC29_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC29_dialog.txt");
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
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(10, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC29_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC29_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(10, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(10, 5);
	}
	
	if diacount == 11 && global.gold >= 350
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(15, 5);
		global.gold -= 350;
		audio_play_sound(SE_coin02, 1, false);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.Player_attackskill = 3;
		global.attackskill03 = true;
		oPlayer.attackskill_set = 3;
		global.NPC29_dialog += 1;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 16
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 17
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 18
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 19
	{
		text = scr_name[diacount + text_line_num + 1];
		global.NPC29_dialog += 1;
	}

	if diacount == 20
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(10, 5);
		global.NPC29_dialog += 1;
	}


	if diacount == 21
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}

	if diacount == 22
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 23
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 24
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 25
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}


	if diacount == 26
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}


	if diacount == 27
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 28
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}

	if diacount == 29	&& global.gold < 500
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(10, 5);
	}
	
	if diacount == 29 && global.gold >= 500
	{
		text = scr_name[diacount + text_line_num + 2];
		screen_shake(15, 5);
		global.gold -= 500;
		audio_play_sound(SE_coin02, 1, false);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 30
	{
		text = scr_name[diacount + text_line_num + 2];
		screen_shake(10, 5);
		oPlayer.attackskill_set = 5;
		global.Player_attackskill = 5;
		global.attackskill05 = true;
		global.NPC29_dialog += 1;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 31
	{
		text = scr_name[diacount + text_line_num + 2];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 32
	{
		text = scr_name[diacount + text_line_num + 2];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 33
	{
		text = scr_name[diacount + text_line_num + 2];
		screen_shake(10, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 34
	{
		text = scr_name[diacount + text_line_num + 2];
		screen_shake(5, 5);
	}
}
	
if global.language == "English"
{
	var text_line_num = 39;	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(10, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC29_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC29_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(10, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num];
		screen_shake(10, 5);
	}
	
	if diacount == 11 && global.gold >= 350
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(15, 5);
		global.gold -= 350;
		audio_play_sound(SE_coin02, 1, false);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.Player_attackskill = 3;
		global.attackskill03 = true;
		oPlayer.attackskill_set = 3;
		global.NPC29_dialog += 1;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 16
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 17
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 18
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 19
	{
		text = scr_name[diacount + text_line_num + 1];
		global.NPC29_dialog += 1;
	}

	if diacount == 20
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(10, 5);
		global.NPC29_dialog += 1;
	}


	if diacount == 21
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}

	if diacount == 22
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 23
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 24
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 25
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}


	if diacount == 26
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}


	if diacount == 27
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 28
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}

	if diacount == 29	&& global.gold < 500
	{
		text = scr_name[diacount + text_line_num + 1];
		screen_shake(10, 5);
	}
	
	if diacount == 29 && global.gold >= 500
	{
		text = scr_name[diacount + text_line_num + 2];
		screen_shake(15, 5);
		global.gold -= 500;
		audio_play_sound(SE_coin02, 1, false);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 30
	{
		text = scr_name[diacount + text_line_num + 2];
		screen_shake(10, 5);
		oPlayer.attackskill_set = 5;
		global.Player_attackskill = 5;
		global.attackskill05 = true;
		global.NPC29_dialog += 1;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 31
	{
		text = scr_name[diacount + text_line_num + 2];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 32
	{
		text = scr_name[diacount + text_line_num + 2];
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 33
	{
		text = scr_name[diacount + text_line_num + 2];
		screen_shake(10, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 34
	{
		text = scr_name[diacount + text_line_num + 2];
		screen_shake(5, 5);
	}
}
	
	
	return text;
}