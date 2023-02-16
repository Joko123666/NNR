
function NPC_NPC45_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC45_dialog.txt");
	for (var i = 1; i < 55; i++;)
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
		text = "...";
		global.NPC45_dialog += 1;
		global.UItext_show = true;
		global.mainstream = 45;
		dialog_endswitch = false;
	}
	
	if diacount == 1
	{
		text = scr_name[diacount + 2];
		global.NPC44_dialog += 1;
	}
	
	if diacount == 2
	{
		text = scr_name[diacount + 2];
		global.NPC45_dialog += 1;
	}
	
	if diacount == 3
	{
		text = scr_name[diacount + 2];
		global.NPC45_dialog += 1;
	}
	
	if diacount == 4
	{
		text = scr_name[diacount + 2];
		global.NPC45_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "진짜 이상한건 뭐일까?";
		global.NPC45_dialog += 1;
	}
	
	if diacount == 6
	{
		text = "돌아가거라";
		global.NPC45_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "이상은 유지되어야 한다";
		global.NPC45_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "...";
	}
}
	
	return text;
}