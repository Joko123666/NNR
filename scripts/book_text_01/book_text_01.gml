// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_01(line_num)
{
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC07_dialog.txt");
	for (var i = 0; i < 25; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	var text_line01 = scr_name[1];
	var text_line02 = scr_name[2];
	var text_line03 = scr_name[3];
	var text_line04 = scr_name[4];
	var text_line05 = scr_name[5];
	var text_line06 = scr_name[6];
	
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