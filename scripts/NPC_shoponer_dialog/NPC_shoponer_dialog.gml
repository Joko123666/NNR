// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_shoponer_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC_shoponer_dialog.txt");
	for (var i = 1; i < 55; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	
	if diacount == 0	
	{
		text = scr_name[diacount + 2];
		dialog_count +=1
		global.NPC_shopper01_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + 2];
		dialog_count +=1
		global.NPC_shopper01_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + 2];
		dialog_count +=1
		global.NPC_shopper01_dialog += 1;
		
		instance_create_layer(x + image_xscale * 44, y - 46, "Effects", Item_healpotion);
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + 2];
		dialog_count +=1
	}
	
	return text;
}