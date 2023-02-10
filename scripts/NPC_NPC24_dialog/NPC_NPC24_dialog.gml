// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC24_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "";
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC24_dialog.txt");
	for (var i = 1; i < 55; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	if diacount == 0
	{
		text = scr_name[diacount + 2];
		if global.mainstream >= 31
		{
			global.NPC24_dialog += 1;
			global.UItext_show = true;
			global.mainstream = 32;
			global.mainquest[11] = 3;		//퀘스트 진행도 갱신
			quest_clearboard("main011");
			audio_play_sound(SE_system03, 1, false);
		}
		else
		{dialog_endswitch = true; diafalse_count = 50;}
		
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	}
	
	if diacount == 4 
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	 }
	
	
	if diacount == 5
	{
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	}
	
	if diacount == 6 
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 7 
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 8
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 9 
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 10 
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	 }
	
	 if diacount == 11 
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 12 
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 13 
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 14 
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
		
	 }
	 
	 if diacount == 15
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 16
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 17
	 {
		text = scr_name[diacount + 2];
		global.NPC24_dialog += 1;
		global.mainstream = 33;
		global.mainquest[12] = 1;		//퀘스트 진행도 갱신
		quest_board("main012");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	 }
	 
	 if diacount == 18	&& global.mainstream <= 33
	 {
		 var randia = irandom(2)
		 if randia == 0
		 { text = scr_name[20];}
		 if randia == 1
		 { text = scr_name[21];}
		 if randia == 2
		 { text = scr_name[22];}
		 dialog_endswitch = true;
		 diafalse_count = 50;
		
	 }
	 
	 if diacount == 18 && global.mainstream >= 34
	 {
		 text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
		global.UItext_show = true;
	 }
	 
	 if diacount == 19
	 {
		 text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 20
	 {
		text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 21
	 {
		text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 22
	 {
		text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 23
	 {
		text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 24
	 {
		text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 25
	 {
		text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 26
	 {
		text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 27
	 {
		text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 28
	 {
		text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 29
	 {
		text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 30
	 {
		text = scr_name[diacount + 5];
		global.NPC24_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 50;
		global.mainstream = 35;
		audio_play_sound(SE_system07, 1, false);
		instance_create_depth(x + 24*image_xscale, y - 24, 0, Item_bomb01);
		global.UItext_show = false;
		global.mainquest[13] = 2;
	 }
	 
	 if diacount == 31	&& global.mainstream <= 40
	 {
		 var randia = irandom(2)
		 if randia == 0
		 { text = scr_name[diacount + 5];}
		 if randia == 1
		 { text = scr_name[diacount + 6];}
		 if randia == 2
		 { text = scr_name[diacount + 7];}
		 dialog_endswitch = true;
		 diafalse_count = 50;
	 }
	 
	  if diacount == 31 && global.mainstream >= 41
	 {
		 text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
		global.UItext_show = true;
	 }
	 
	 if diacount == 32
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 33
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 34
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 35
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 36
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 37
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 38
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 39
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 40
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 41
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
		instance_create_depth(x + image_xscale*32, y - 24, 0, Item_superroot);
	 }
	 
	 if diacount == 42
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 43
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 44
	 {
		 text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 45
	 {
		text = scr_name[diacount + 8];
		global.NPC24_dialog += 1;
		if global.mainstream <= 42
		{
			global.mainstream = 42;
		}
		global.mainquest[16] = 3;		//퀘스트 진행도 갱신
		quest_clearboard("main016");
		audio_play_sound(SE_system07, 1, false);
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	 }
	 
	 if diacount == 46	&& global.mainstream >= 42
	 {
		 var randia = irandom(2)
		 if randia == 0
		 { text = scr_name[diacount + 8];}
		 if randia == 1
		 { text = scr_name[diacount + 9];}
		 if randia == 2
		 { text = scr_name[diacount + 10];}
		 dialog_endswitch = true;
		 diafalse_count = 50;
		
	 }
	 
	 
	
	return text;
}