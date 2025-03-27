// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function terminal_text_03(line_num)
{
//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "text_terminal.txt");
	for (var i = 1; i < 65; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	if global.language == "Korean"
	{
		var text_line_num = 24;
	}
	
	if global.language == "English"
	{
		var text_line_num = 53;
	}
	
	var text_line01 = scr_name[text_line_num];
	var text_line02 = scr_name[text_line_num + 1];
	var text_line03 = scr_name[text_line_num + 2];
	var text_line04 = scr_name[text_line_num + 3];
	var text_line05 = scr_name[text_line_num + 4];
	var text_line06 = scr_name[text_line_num + 5];
	
	
	if line_num == 1
	{return text_line01;}
	if line_num == 2
	{return text_line02;}
	if line_num == 3
	{return text_line03;}
	if line_num == 4
	{return text_line04;}
	if line_num == 5
	{return text_line05;}
	if line_num == 6
	{return text_line06;}
}