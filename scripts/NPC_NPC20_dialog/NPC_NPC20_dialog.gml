
function NPC_NPC20_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC20_dialog.txt");
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
		global.NPC20_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	

	if diacount == 2 
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	
	if diacount == 4  
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	
	if diacount == 6  
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	
	
	if diacount == 7  
	{
		text = scr_name[diacount + text_line_num];
	}
}

if global.language == "English"
{
	var text_line_num = 11;	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	

	if diacount == 2 
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	
	if diacount == 4  
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	
	if diacount == 6  
	{
		text = scr_name[diacount + text_line_num];
		global.NPC20_dialog += 1;
	}
	
	
	if diacount == 7  
	{
		text = scr_name[diacount + text_line_num];
	}
}

	
	return text;
}