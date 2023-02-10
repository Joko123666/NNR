
function NPC_gard01_dialog(argument0)
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
	
	if diacount == 0
	{
		text = scr_name[2];
		dialog_count +=1
	}
	
	if diacount == 1 && global.mainstream < 7
	{
		text = scr_name[3];
	}
	
	if diacount == 1 && global.mainstream >= 7
	{
		text = scr_name[4];
	}
	
	return text;
}