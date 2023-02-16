// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC12_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	//메인 스트림에 따른 대사 출력 결정
	if global.mainstream != 1
	{diacount = irandom(3);}
	if global.mainstream == 12
	{diacount = 4;}
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC12_dialog.txt");
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
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if diacount == 3  
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
	}
}

if global.language == "English"
{
	var text_line_num = 8;
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if diacount == 3  
	{
		text = scr_name[diacount + text_line_num];
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + text_line_num];
	}
}

	return text;
}