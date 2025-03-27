// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_shoponer03_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
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
	var text_line_num = 19;	
	if diacount == 0	
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper03_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper03_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper03_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper03_dialog += 1;
	}
	
	if diacount == 4
	{
		if randia == 0
			{text = scr_name[diacount + text_line_num];}
		if randia == 1
			{text = scr_name[diacount + text_line_num + 1];}
		if randia == 2
			{text = scr_name[diacount + text_line_num + 2];}		
	}
}

if global.language == "English"
{
	var text_line_num = 44;	
	if diacount == 0	
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper03_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper03_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper03_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC_shopper03_dialog += 1;
	}
	
	if diacount == 4
	{
		if randia == 0
			{text = scr_name[diacount + text_line_num];}
		if randia == 1
			{text = scr_name[diacount + text_line_num + 1];}
		if randia == 2
			{text = scr_name[diacount + text_line_num + 2];}		
	}
}

	return text;
}