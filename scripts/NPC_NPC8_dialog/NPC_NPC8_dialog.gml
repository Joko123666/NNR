
function NPC_NPC8_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "";
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC08_dialog.txt");
	for (var i = 1; i < 55; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
if global.language == "Korean"
{	
	var text_line_num = 3;	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		if global.mainstream == 12
		{
			dialog_count +=1
			global.NPC8_dialog += 1;
		}
		else {dialog_endswitch = true;	global.UItext_show = false;}
	}
	
	if diacount == 3	&& global.mainstream == 12
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 4 
	 {
		text = scr_name[diacount + text_line_num];
		 dialog_count +=1
		global.NPC8_dialog += 1;
	 }
	
	
	if diacount == 5
	{
		
		if global.quest_stack[4] == "empty"
		{
			quest_board("main002")
			global.NPC8_dialog += 1;
			global.mainstream = 13;
			global.mainquest[2] = 1;
			dialog_count +=1
			text = scr_name[diacount + text_line_num];
			audio_play_sound(SE_system07, 1, false);
		}
		else {text = "지금은 맡고 있는 일이 너무 많네."; dialog_endswitch = true;	global.UItext_show = false;}
	}
	
	if diacount == 6	&& global.mainstream == 13
	{
		text = scr_name[diacount + text_line_num];
		global.UItext_show = false;
		dialog_endswitch = true;
	}
	
	if diacount == 6 && global.mainstream == 14
	{
		if global.bugbeat == false
		{text = scr_name[diacount + text_line_num + 1];}
		if global.bugbeat == true
		{text = scr_name[diacount + text_line_num + 2];}
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.mainquest[2] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 7 && global.mainstream == 14
	{
		text = scr_name[diacount + text_line_num + 2];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 8 && global.mainstream == 14
	{
		text = scr_name[diacount + text_line_num + 2];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 9 && global.mainstream == 14
	{
		text = scr_name[diacount + text_line_num + 2];
		dialog_count +=1
		global.NPC8_dialog += 1;
		quest_board("main003");
		
		instance_create_layer(x + image_xscale * 44, y - 46, "Effects", questitem_mail);
		global.mainstream = 15;
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 10 && global.mainstream == 15
	{
		text = scr_name[diacount + text_line_num + 2];
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	//퀘스트 분기에 따라 퀘스트 진행 조정 
	
	#region 분기A 편지 전달
	if diacount == 10 && global.mainstream == 16	&& global.quest_selection == "A"
	{
		text = scr_name[diacount + text_line_num + 3];
		dialog_count +=1
		global.NPC8_dialog = 11;
		global.NPC8_status = 1;
		global.mainquest[3] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 11 && global.NPC8_status == 1
	{
		text = scr_name[diacount + text_line_num + 3];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 12 && global.NPC8_status == 1
	{
		text = scr_name[diacount + text_line_num + 3];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 13 && global.NPC8_status == 1
	{
		text = scr_name[diacount + text_line_num + 3];
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.mainstream = 17;
		instance_create_depth(x, y-32, -1, Item_sword_get);
	}
	
	if diacount >= 14 && global.mainstream >= 17	&& global.NPC8_status == 1
	{
		text = scr_name[diacount + text_line_num + 3];
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	#endregion
	
	#region 분기B 편지 사용
	if diacount == 10 && global.mainstream == 16	&& global.quest_selection == "B"
	{
		text = scr_name[diacount + text_line_num + 8];
		dialog_count = 11;
		global.NPC8_dialog += 1;
		global.NPC8_status = 2;
		global.mainquest[3] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 11 && global.NPC8_status == 2
	{
		text = scr_name[diacount + text_line_num + 8];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 12 	&& global.NPC8_status == 2
	{
		text = scr_name[diacount + text_line_num + 8];
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.mainstream = 17;
		instance_create_depth(x, y-32, -1, Item_sword_get);
	}
	if diacount == 13 && global.mainstream == 17	&& global.NPC8_status == 2
	{
		text = scr_name[diacount + text_line_num + 8];
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.NPC2_dialog = 9;
	}
	
	if diacount >= 14 && global.mainstream >= 17	&& global.NPC8_status == 2
	{
		text = scr_name[diacount + text_line_num + 8];
		dialog_endswitch = true;
		global.UItext_show = false;

	}
	#endregion
}
if global.language == "English"
{	
	var text_line_num = 28;	
	if diacount == 0
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + text_line_num];
		if global.mainstream == 12
		{
			dialog_count +=1
			global.NPC8_dialog += 1;
		}
		else {dialog_endswitch = true;	global.UItext_show = false;}
	}
	
	if diacount == 3	&& global.mainstream == 12
	{
		text = scr_name[diacount + text_line_num];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 4 
	 {
		text = scr_name[diacount + text_line_num];
		 dialog_count +=1
		global.NPC8_dialog += 1;
	 }
	
	
	if diacount == 5
	{
		
		if global.quest_stack[4] == "empty"
		{
			quest_board("main002")
			global.NPC8_dialog += 1;
			global.mainstream = 13;
			global.mainquest[2] = 1;
			dialog_count +=1
			text = scr_name[diacount + text_line_num];
			audio_play_sound(SE_system07, 1, false);
		}
		else {text = "지금은 맡고 있는 일이 너무 많네."; dialog_endswitch = true;	global.UItext_show = false;}
	}
	
	if diacount == 6	&& global.mainstream == 13
	{
		text = scr_name[diacount + text_line_num];
		global.UItext_show = false;
		dialog_endswitch = true;
	}
	
	if diacount == 6 && global.mainstream == 14
	{
		if global.bugbeat == false
		{text = scr_name[diacount + text_line_num + 1];}
		if global.bugbeat == true
		{text = scr_name[diacount + text_line_num + 2];}
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.mainquest[2] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 7 && global.mainstream == 14
	{
		text = scr_name[diacount + text_line_num + 2];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 8 && global.mainstream == 14
	{
		text = scr_name[diacount + text_line_num + 2];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 9 && global.mainstream == 14
	{
		text = scr_name[diacount + text_line_num + 2];
		dialog_count +=1
		global.NPC8_dialog += 1;
		quest_board("main003");
		
		instance_create_layer(x + image_xscale * 44, y - 46, "Effects", questitem_mail);
		global.mainstream = 15;
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 10 && global.mainstream == 15
	{
		text = scr_name[diacount + text_line_num + 2];
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	//퀘스트 분기에 따라 퀘스트 진행 조정 
	
	#region 분기A 편지 전달
	if diacount == 10 && global.mainstream == 16	&& global.quest_selection == "A"
	{
		text = scr_name[diacount + text_line_num + 3];
		dialog_count +=1
		global.NPC8_dialog = 11;
		global.NPC8_status = 1;
		global.mainquest[3] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 11 && global.NPC8_status == 1
	{
		text = scr_name[diacount + text_line_num + 3];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 12 && global.NPC8_status == 1
	{
		text = scr_name[diacount + text_line_num + 3];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 13 && global.NPC8_status == 1
	{
		text = scr_name[diacount + text_line_num + 3];
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.mainstream = 17;
		instance_create_depth(x, y-32, -1, Item_sword_get);
	}
	
	if diacount >= 14 && global.mainstream >= 17	&& global.NPC8_status == 1
	{
		text = scr_name[diacount + text_line_num + 3];
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	#endregion
	
	#region 분기B 편지 사용
	if diacount == 10 && global.mainstream == 16	&& global.quest_selection == "B"
	{
		text = scr_name[diacount + text_line_num + 8];
		dialog_count = 11;
		global.NPC8_dialog += 1;
		global.NPC8_status = 2;
		global.mainquest[3] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 11 && global.NPC8_status == 2
	{
		text = scr_name[diacount + text_line_num + 8];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 12 	&& global.NPC8_status == 2
	{
		text = scr_name[diacount + text_line_num + 8];
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.mainstream = 17;
		instance_create_depth(x, y-32, -1, Item_sword_get);
	}
	if diacount == 13 && global.mainstream == 17	&& global.NPC8_status == 2
	{
		text = scr_name[diacount + text_line_num + 8];
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.NPC2_dialog = 9;
	}
	
	if diacount >= 14 && global.mainstream >= 17	&& global.NPC8_status == 2
	{
		text = scr_name[diacount + text_line_num + 8];
		dialog_endswitch = true;
		global.UItext_show = false;

	}
	#endregion
}

#region
/*
if global.language == "English"
{	
	if diacount == 0
	{
		text = scr_name[27];
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = scr_name[28];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[29];
		if global.mainstream == 12
		{
			dialog_count +=1
			global.NPC8_dialog += 1;
		}
		else {dialog_endswitch = true;	global.UItext_show = false;}
	}
	
	if diacount == 3	&& global.mainstream == 12
	{
		text = scr_name[30];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 4 
	 {
		 text = scr_name[31];
		 dialog_count +=1
		global.NPC8_dialog += 1;
	 }
	
	
	if diacount == 5
	{
		
		if global.quest_stack[4] == "empty"
		{
			quest_board("main002")
			global.NPC8_dialog += 1;
			global.mainstream = 13;
			global.mainquest[2] = 1;
			dialog_count +=1
			text = scr_name[32];
			audio_play_sound(SE_system07, 1, false);
		}
		else {text = "지금은 맡고 있는 일이 너무 많네."; dialog_endswitch = true;	global.UItext_show = false;}
	}
	
	if diacount == 6	&& global.mainstream == 13
	{
		text = scr_name[33];
		global.UItext_show = false;
		dialog_endswitch = true;
	}
	
	if diacount == 6 && global.mainstream == 14
	{
		if global.bugbeat == false
		{text = scr_name[34];}
		if global.bugbeat == true
		{text = scr_name[35];}
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.mainquest[2] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 7 && global.mainstream == 14
	{
		text = scr_name[36];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 8 && global.mainstream == 14
	{
		text = scr_name[37];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 9 && global.mainstream == 14
	{
		text = scr_name[38];
		dialog_count +=1
		global.NPC8_dialog += 1;
		quest_board("main003");
		
		instance_create_layer(x + image_xscale * 44, y - 46, "Effects", questitem_mail);
		global.mainstream = 15;
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 10 && global.mainstream == 15
	{
		text = scr_name[39];
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	//퀘스트 분기에 따라 퀘스트 진행 조정 
	
	#region 분기A 편지 전달
	if diacount == 10 && global.mainstream == 16	&& global.quest_selection == "A"
	{
		text = scr_name[40];
		dialog_count +=1
		global.NPC8_dialog = 11;
		global.NPC8_status = 1;
		global.mainquest[3] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 11 && global.NPC8_status == 1
	{
		text = scr_name[41];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 12 && global.NPC8_status == 1
	{
		text = scr_name[42];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 13 && global.NPC8_status == 1
	{
		text = scr_name[43];
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.mainstream = 17;
		instance_create_depth(x, y-32, -1, Item_sword_get);
	}
	
	if diacount >= 14 && global.mainstream >= 17	&& global.NPC8_status == 1
	{
		text = scr_name[44];
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	#endregion
	
	#region 분기B 편지 사용
	if diacount == 10 && global.mainstream == 16	&& global.quest_selection == "B"
	{
		text = scr_name[45];
		dialog_count = 11;
		global.NPC8_dialog += 1;
		global.NPC8_status = 2;
		global.mainquest[3] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 11 && global.NPC8_status == 2
	{
		text = scr_name[46];
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 12 	&& global.NPC8_status == 2
	{
		text = scr_name[47];
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.mainstream = 17;
		instance_create_depth(x, y-32, -1, Item_sword_get);
	}
	if diacount == 13 && global.mainstream == 17	&& global.NPC8_status == 2
	{
		text = scr_name[48];
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.NPC2_dialog = 9;
	}
	
	if diacount >= 14 && global.mainstream >= 17	&& global.NPC8_status == 2
	{
		text = scr_name[49];
		dialog_endswitch = true;
		global.UItext_show = false;

	}
	#endregion
}
	*/
	#endregion
	return text;
}