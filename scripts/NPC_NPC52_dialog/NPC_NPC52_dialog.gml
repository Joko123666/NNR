
function NPC_NPC52_dialog()
{

	var diacount = irandom(4);
	var _text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC52_dialog.txt");
	for (var i = 1; i < 15; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
if global.language == "Korean"
{
	var text_line_num = 2;	
	_text = scr_name[diacount + text_line_num];
	
}

if global.language == "English"
{
	var text_line_num = 8;	
	_text = scr_name[diacount + text_line_num];
}
	
	return _text;
}