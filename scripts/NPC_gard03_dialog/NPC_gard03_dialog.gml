
function NPC_gard03_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC_gard_dialog.txt");
	for (var i = 1; i < 60; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	if global.language == "Korean"
{	
	var text_line_num = 8;
	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
	}
	
	if diacount == 1 
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
	}
	
	if diacount == 2 
	{
		text = scr_name[diacount + text_line_num];
	}
}

	if global.language == "English"
{	
	var text_line_num = 38;
	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
	}
	
	if diacount == 1 
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
	}
	
	if diacount == 2 
	{
		text = scr_name[diacount + text_line_num];
	}
}
	
	return text;
}