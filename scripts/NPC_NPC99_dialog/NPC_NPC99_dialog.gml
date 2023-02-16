
function NPC_NPC99_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC99_dialog.txt");
	for (var i = 1; i < 65; i++;)
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
		global.NPC99_dialog += 1;
		global.mainstream = 60;
	}
	
	//사망횟수로 분기
	
	
	if diacount == 1	&& global.Deathcount_total >=1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		oPlayer.state = "Death"
		alarm[2] = 20;
		audio_play_sound(SE_magiccast_01, 1, 0);
		act_count = 30;
	}
	
	
	//0회사망으로 도달
	
	if diacount == 1	&& global.Deathcount_total ==0
	{
		text = scr_name[diacount + text_line_num + 4];
		global.NPC99_dialog = 10;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num - 4];
		global.NPC99_dialog += 1;
	}
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num - 4];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num - 4];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num - 4];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num - 4];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num - 4];
		global.NPC99_dialog = 99;
	}
	
	if diacount == 100
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog += 1;
		global.mainstream = 70;
	}
	if diacount == 101
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog += 1;
	}
	if diacount == 102
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog += 1;
	}
	if diacount == 103
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog += 1;
	}
	if diacount == 104
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog += 1;
	}
	if diacount == 105
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog += 1;
	}
	if diacount == 106
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog = 110;
		global.mainstream = 71;
		act_count = 500;
		act_switch = false;
	}
}

if global.language == "English"
{
	var text_line_num = 22;	
	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		global.NPC99_dialog += 1;
		global.mainstream = 60;
	}
	
	//사망횟수로 분기
	
	
	if diacount == 1	&& global.Deathcount_total >=1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		oPlayer.state = "Death"
		alarm[2] = 20;
		audio_play_sound(SE_magiccast_01, 1, 0);
		act_count = 30;
	}
	
	
	//0회사망으로 도달
	
	if diacount == 1	&& global.Deathcount_total ==0
	{
		text = scr_name[diacount + text_line_num + 4];
		global.NPC99_dialog = 10;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + text_line_num - 4];
		global.NPC99_dialog += 1;
	}
	if diacount == 11
	{
		text = scr_name[diacount + text_line_num - 4];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + text_line_num - 4];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + text_line_num - 4];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + text_line_num - 4];
		global.NPC99_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + text_line_num - 4];
		global.NPC99_dialog = 99;
	}
	
	if diacount == 100
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog += 1;
		global.mainstream = 70;
	}
	if diacount == 101
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog += 1;
	}
	if diacount == 102
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog += 1;
	}
	if diacount == 103
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog += 1;
	}
	if diacount == 104
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog += 1;
	}
	if diacount == 105
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog += 1;
	}
	if diacount == 106
	{
		text = scr_name[diacount + text_line_num - 88];
		global.NPC99_dialog = 110;
		global.mainstream = 71;
		act_count = 500;
		act_switch = false;
	}
}
	
	
	return text;
}