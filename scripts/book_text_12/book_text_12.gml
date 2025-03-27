// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_text_12(page_num, line_num)
{
	var text_line01 = ".";
	var text_line02 = "."
	var text_line03 = ".";
	var text_line04 = ".";
	var text_line05 = ".";
	var text_line06 = ".";
		
	var file = file_text_open_read(working_directory + "text_book.txt");
	for (var i = 1; i < 300; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	if global.language == "Korean"
	{
		if page_num == 1
		{var text_line_num = 68;}
		if page_num == 2
		{var text_line_num = 75;}
		if page_num == 3
		{var text_line_num = 82;}
		if page_num == 4
		{var text_line_num = 89;}
		if page_num == 5
		{var text_line_num = 96;}
	}
	if global.language == "English"
	{
		if page_num == 1
		{var text_line_num = 169;}
		if page_num == 2
		{var text_line_num = 176;}
		if page_num == 3
		{var text_line_num = 183;}
		if page_num == 4
		{var text_line_num = 190;}
		if page_num == 5
		{var text_line_num = 197;}
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