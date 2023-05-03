// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC02_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "";
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC02_dialog.txt");
	for (var i = 1; i < 25; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
if global.language == "Korean"
{	
	if diacount == 0
	{
		text = scr_name[2];
		dialog_count +=1	
		global.NPC2_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = scr_name[3];
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[4];
		dialog_count +=1
		global.NPC2_dialog += 1;
		{if global.mainstream != 15 {dialog_endswitch = true;global.UItext_show = false;}  }
	}
	
	if diacount == 3  && global.mainstream != 15
	{
		text = scr_name[5];
		if global.mainstream >= 16 {global.NPC2_dialog =9;}
		else {dialog_endswitch = true; global.UItext_show = false;}
	}
	
	if diacount == 3 && global.mainstream == 15 && global.Player_item == "Questmail"
	{
		text = scr_name[6];
		global.Player_item = "empty";
		
		dialog_count = 4;
		global.NPC2_dialog = 4;
		global.mainstream = 16;
		global.mainquest[3] = 2;
		global.UItext_show = true;
		global.quest_selection = "A";
	}
	
	if diacount == 4
	{
		text = scr_name[7];
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[8];
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[9];
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[10];
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[11];
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	if diacount == 9
	{
		text = scr_name[12];
		dialog_endswitch = true;
		global.UItext_show = false;
	}
}

if global.language == "English"
{	
	if diacount == 0
	{
		text = scr_name[14];
		dialog_count +=1	
		global.NPC2_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = scr_name[15];
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[16];
		dialog_count +=1
		global.NPC2_dialog += 1;
		{if global.mainstream != 15 {dialog_endswitch = true;global.UItext_show = false;}  }
	}
	
	if diacount == 3  && global.mainstream != 15
	{
		text = scr_name[17];
		if global.mainstream >= 16 {global.NPC2_dialog =9;}
		else {dialog_endswitch = true; global.UItext_show = false;}
	}
	
	if diacount == 3 && global.mainstream == 15 && global.Player_item == "Questmail"
	{
		text = scr_name[18];
		global.Player_item = "empty";
		
		dialog_count = 4;
		global.NPC2_dialog = 4;
		global.mainstream = 16;
		global.mainquest[3] = 2;
		global.UItext_show = true;
		global.quest_selection = "A";
	}
	
	if diacount == 4
	{
		text = scr_name[19];
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 5
	{
		text = scr_name[20];
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 6
	{
		text = scr_name[21];
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 7
	{
		text = scr_name[22];
		dialog_count +=1
		global.NPC2_dialog += 1;
	}
	
	if diacount == 8
	{
		text = scr_name[23];
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	if diacount == 9
	{
		text = scr_name[24];
		dialog_endswitch = true;
		global.UItext_show = false;
	}
}

	
	return text;
}