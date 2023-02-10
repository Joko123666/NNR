
function NPC_NPC21_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC21_dialog.txt");
	for (var i = 1; i < 55; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	if diacount == 0
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	

	if diacount == 2 
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 4  
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 6  
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	
	if diacount == 7  
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 9  
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 10
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 11
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 12
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 13
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 14
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 15
	{
		text = scr_name[diacount + 2];
		global.NPC21_dialog += 1;
	}

	if diacount == 16
	{
		if global.quest_stack[4] == "empty"
		{
			text = scr_name[diacount + 2];
			global.NPC21_dialog += 1;
			quest_board("side003");
			global.quest001 = 1;
			global.subquest[3] = 1;
			dialog_count +=1
			audio_play_sound(SE_system07, 1, false);
		}
		else {text = scr_name[19];}
		
	}
	
	if diacount == 17
	{
		text = scr_name[diacount + 3];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 18	&& global.Player_item != "Metalsack"
	{
		text = scr_name[diacount + 3];
	}
	
	if diacount == 18	&& global.Player_item == "Metalsack"
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 19
	{
		text = scr_name[diacount + 4];
		global.Player_item = "empty";
		global.NPC21_dialog += 1;
		global.subquest[3] = 3;
		quest_clearboard("side003");
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 20
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 21
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 22
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 23
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 24
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 25
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 26
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 27
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 28
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 29
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 30
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 31
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 32
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 33
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 34
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 35
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 36
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 37
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
		instance_create_depth(x + image_xscale*16, y - 48, 0, Item_necklace_speed2);
	}
	
	if diacount == 38
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 39
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 40
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 41
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 42
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 43
	{
		text = scr_name[diacount + 4];
		global.NPC21_dialog += 1;
	}
	
	if diacount == 44
	{
		text = scr_name[diacount + 4];
	}

	if diacount == 50
	{
		text = scr_name[49];
	}
	
	return text;
}