// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_shoponer02_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	var ex_diacount = ex_dialog_count;
	text = "";
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC_shoponer_dialog.txt");
	for (var i = 1; i < 55; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	if global.language == "Korean"
{
	var text_line_num = 6;	
	if diacount == 0	
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount ==7		&& randia == 0
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if diacount ==7		&& randia == 1
	{
		text = scr_name[diacount + text_line_num + 1];
	}
	
	if diacount ==7		&& randia == 2
	{
		text = scr_name[diacount + text_line_num - 1];
	}
	
	//++++
	
	if global.Player_item == "Metalsack"	&& ex_diacount == 0
	{
		text = scr_name[text_line_num + 9];
		ex_dialog_count = 1;
	}
	
	if global.Player_item == "Metalsack"	&& ex_diacount == 1
	{
		text = scr_name[text_line_num + 10];
		ex_dialog_count = 2;
	}
	
	if global.Player_item == "Metalsack"	&& ex_diacount == 2
	{
		text = scr_name[text_line_num + 11];
		global.Player_item = "empty";
		global.gold += 1000;
		global.subquest[3] = 3;
		quest_clearboard("side003");
		audio_play_sound(SE_system07, 1, false);
		ex_dialog_count = 3;
		global.NPC21_dialog = 50;
	}
	
	if ex_diacount == 3
	{
		text = scr_name[text_line_num + 12];
	}
}

	if global.language == "English"
{
	var text_line_num = 31;	
	if diacount == 0	
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper02_dialog += 1;
	}
	
	if diacount ==7		&& randia == 0
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if diacount ==7		&& randia == 1
	{
		text = scr_name[diacount + text_line_num + 1];
	}
	
	if diacount ==7		&& randia == 2
	{
		text = scr_name[diacount + text_line_num + 2];
	}
	
	//++++
	
	if global.Player_item == "Metalsack"	&& ex_diacount == 0
	{
		text = scr_name[text_line_num + 9];
		ex_dialog_count = 1;
	}
	
	if global.Player_item == "Metalsack"	&& ex_diacount == 1
	{
		text = scr_name[text_line_num + 10];
		ex_dialog_count = 2;
	}
	
	if global.Player_item == "Metalsack"	&& ex_diacount == 2
	{
		text = scr_name[text_line_num + 11];
		global.Player_item = "empty";
		global.gold += 1000;
		global.subquest[3] = 3;
		quest_clearboard("side003");
		audio_play_sound(SE_system07, 1, false);
		ex_dialog_count = 3;
		global.NPC21_dialog = 50;
	}
	
	if ex_diacount == 3
	{
		text = scr_name[text_line_num + 12];
	}
}


	return text;
}