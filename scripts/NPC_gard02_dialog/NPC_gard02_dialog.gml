// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_gard02_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC_gard_dialog.txt");
	for (var i = 1; i < 30; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	diacount = irandom(3)
	if diacount == 0
	{
		text = scr_name[2];
	}
	
	if diacount == 1 
	{
		text = scr_name[5];
	}
	
	if diacount == 2 
	{
		text = scr_name[6];
	}
	
	if diacount == 3
	{
		text = scr_name[7];
	}

	return text;
}