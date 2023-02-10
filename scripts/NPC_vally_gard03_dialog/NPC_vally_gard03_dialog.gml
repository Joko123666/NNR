
function NPC_vally_gard03_dialog(argument0)
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

	diacount = irandom(3);
	
	if diacount == 0
	{
		text = scr_name[24];
	}
	
	if diacount == 1 
	{
		text = scr_name[25];
	}
	
	if diacount == 2 
	{
		text = scr_name[26];
	}
	
	if diacount == 3
	{
		text = scr_name[27];
	}
	
	if global.mainstream == 35	&& global.Player_item != "Bomb01"	&& global.store_item_stock03 > 0
	{
		text = scr_name[28];
		instance_create_depth(x + 24*image_xscale, y - 24, 0, Item_bomb01);
		global.store_item_stock03 -= 1;
	}
	
	if global.mainstream == 35	&& global.store_item_stock03 <= 0
	{
		text = scr_name[29];
	}
	

	return text;
}