
function NPC_gard04_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;

	diacount = irandom(2);
	
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
		text = scr_name[11];
	}
	
	if diacount == 1 
	{
		text = scr_name[12];
	}
	
	if diacount == 2 
	{
		text = scr_name[13];
	}
	
	return text;
}