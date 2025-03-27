
function NPC_vally_gard03_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;

	diacount = irandom(3);

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
	var text_line_num = 24;
	
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
	
	if global.mainstream == 35	&& global.Player_item != "Bomb01"	&& global.store_item_stock03 > 0
	{
		text = scr_name[text_line_num + 4];
		instance_create_depth(x + 24*image_xscale, y - 24, 0, Item_bomb01);
		global.store_item_stock03 -= 1;
	}
	
	if global.mainstream == 35	&& global.store_item_stock03 <= 0
	{
		text = scr_name[text_line_num + 5];
	}
}

	if global.language == "English"
{	
	var text_line_num = 53;
	
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
	
	if global.mainstream == 35	&& global.Player_item != "Bomb01"	&& global.store_item_stock03 > 0
	{
		text = scr_name[text_line_num + 4];
		instance_create_depth(x + 24*image_xscale, y - 24, 0, Item_bomb01);
		global.store_item_stock03 -= 1;
	}
	
	if global.mainstream == 35	&& global.store_item_stock03 <= 0
	{
		text = scr_name[text_line_num + 5];
	}
}
	

	return text;
}