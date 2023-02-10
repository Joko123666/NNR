
function NPC_NPC50_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC50_dialog.txt");
	for (var i = 1; i < 55; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	if diacount == 0
	{
		text = scr_name[diacount + 2];
		global.NPC50_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + 2];
		global.NPC50_dialog += 1;
	}
	

	if diacount == 2 
	{
		text = scr_name[diacount + 2];
		global.NPC50_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + 2];
		global.NPC50_dialog += 1;
	}
	
	if diacount == 4  
	{
		text = scr_name[diacount + 2];
		global.NPC50_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + 2];
		global.NPC50_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + 2];
		global.NPC50_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[diacount + 2];
		audio_play_sound(SE_system04, 1, false);
		global.Player_moveskill = 5;
		oPlayer.moveskill_set = 5;
		global.NPC50_dialog += 1;
		global.moveskill05 = true;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + 2];
		global.NPC50_dialog += 1;
	}
	
	if diacount == 9
	{
		text = scr_name[diacount + 2];
		global.NPC50_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + 2];
		global.NPC50_dialog += 1;
	}
	
	
	return text;
}