// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC23_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "";
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC23_dialog.txt");
	for (var i = 1; i < 100; i++;)
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
		global.NPC23_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		global.mainquest[6] = 3;		//퀘스트 진행도 갱신
		quest_clearboard("main006");
		audio_play_sound(SE_system03, 1, false);
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	}
	
	if diacount == 4 
	 {
		 text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	}
	
	if diacount == 6 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 7 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 8
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 9 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 10 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	
	 if diacount == 11 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 12 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 13 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		global.gold += 150;
		audio_play_sound(SE_getitem, 1, false);
	 }
	 
	 if diacount == 14 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		global.mainstream = 31;
		global.mainquest[11] = 1;		//퀘스트 진행도 갱신
		quest_board("main011");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = false;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15	&& global.mainstream <= 32
	 {
		text = scr_name[diacount + text_line_num];
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream ==33
	 {
		text = scr_name[diacount + text_line_num + 1];
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream ==34
	 {
		text = scr_name[diacount + text_line_num + 2];
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream ==35
	 {
		text = scr_name[diacount + text_line_num + 3];
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream ==36
	 {
		text = scr_name[diacount + text_line_num + 4];
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 var text_line_num = 7;
	 if diacount == 15 && global.mainstream >= 41
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		global.UItext_show = true;
	 }
	 
	 if diacount == 16
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 17
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 18
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 19
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 20
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 21
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		global.gold += 1000;
		audio_play_sound(SE_getitem, 1, false);
		global.mainstream = 43;
	 }
	 
	 if diacount == 22
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 23
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 24
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 25
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 26
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 27
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		audio_play_sound(SE_getitem, 1, false);
	 }
	 
	 if diacount == 28
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 29
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 30
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
		alarm[9] = 30;
		
	 }
	 
	 if diacount == 31
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 32
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 33
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 34
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 35
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 36
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 37
	 {
		text = scr_name[diacount + text_line_num];
		  global.mainquest[14] = 1;		//퀘스트 진행도 갱신
		quest_board("main014");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		global.NPC23_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 50;
		global.mainstream = 44;
		global.UItext_show = false;
		alarm[9] = 30;
	 }
	 
	if diacount == 38
	 {
		 var randia = irandom(2)
		 if randia == 0
		 { text = scr_name[diacount + text_line_num];}
		 if randia == 1
		 { text = scr_name[diacount + text_line_num + 1];}
		 if randia == 2
		 { text = scr_name[diacount + text_line_num + 2];}
		 dialog_endswitch = true;
		 diafalse_count = 50;
		 alarm[9] = 30;
		
	 }
}

if global.language == "English"
{
	var text_line_num = 49;	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		global.mainquest[6] = 3;		//퀘스트 진행도 갱신
		quest_clearboard("main006");
		audio_play_sound(SE_system03, 1, false);
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	}
	
	if diacount == 4 
	 {
		 text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	
	
	if diacount == 5
	{
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	}
	
	if diacount == 6 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 7 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 8
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 9 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 10 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	
	 if diacount == 11 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 12 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 13 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		global.gold += 150;
		audio_play_sound(SE_getitem, 1, false);
	 }
	 
	 if diacount == 14 
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		global.mainstream = 31;
		global.mainquest[11] = 1;		//퀘스트 진행도 갱신
		quest_board("main011");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = false;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15	&& global.mainstream <= 32
	 {
		text = scr_name[diacount + text_line_num];
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream ==33
	 {
		text = scr_name[diacount + text_line_num + 1];
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream ==34
	 {
		text = scr_name[diacount + text_line_num + 2];
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream ==35
	 {
		text = scr_name[diacount + text_line_num + 3];
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream ==36
	 {
		text = scr_name[diacount + text_line_num + 4];
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 var text_line_num = 54;
	 if diacount == 15 && global.mainstream >= 41
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		global.UItext_show = true;
	 }
	 
	 if diacount == 16
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 17
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 18
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 19
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 20
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 21
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		global.gold += 1000;
		audio_play_sound(SE_getitem, 1, false);
		global.mainstream = 43;
	 }
	 
	 if diacount == 22
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 23
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 24
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 25
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 26
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 27
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		audio_play_sound(SE_getitem, 1, false);
	 }
	 
	 if diacount == 28
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 29
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 30
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
		alarm[9] = 30;
		
	 }
	 
	 if diacount == 31
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 32
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 33
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 34
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 35
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 36
	 {
		text = scr_name[diacount + text_line_num];
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 37
	 {
		text = scr_name[diacount + text_line_num];
		  global.mainquest[14] = 1;		//퀘스트 진행도 갱신
		quest_board("main014");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		global.NPC23_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 50;
		global.mainstream = 44;
		global.UItext_show = false;
		alarm[9] = 30;
	 }
	 
	if diacount == 38
	 {
		 var randia = irandom(2)
		 if randia == 0
		 { text = scr_name[diacount + text_line_num];}
		 if randia == 1
		 { text = scr_name[diacount + text_line_num + 1];}
		 if randia == 2
		 { text = scr_name[diacount + text_line_num + 2];}
		 dialog_endswitch = true;
		 diafalse_count = 50;
		 alarm[9] = 30;
		
	 }
}

	return text;
}