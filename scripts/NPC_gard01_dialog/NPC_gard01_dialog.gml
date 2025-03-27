
function NPC_gard01_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	
if global.language == "Korean"
{	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC_gard_dialog.txt");
	for (var i = 1; i < 60; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	var text_line_num = 2;
	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
	}
	
	if diacount == 1 && global.mainstream < 7
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if diacount == 1 && global.mainstream >= 7
	{
		text = scr_name[diacount + text_line_num + 1];
	}
}
if global.language == "English"
{	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC_gard_dialog.txt");
	for (var i = 1; i < 60; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	var text_line_num = 31;
	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
	}
	
	if diacount == 1 && global.mainstream < 7
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if diacount == 1 && global.mainstream >= 7
	{
		text = scr_name[diacount + text_line_num + 1];
	}
}


	return text;
}