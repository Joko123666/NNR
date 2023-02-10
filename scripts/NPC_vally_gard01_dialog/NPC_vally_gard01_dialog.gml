
function NPC_vally_gard01_dialog(argument0)
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
		text = scr_name[16];
	}
	
	if diacount == 1 
	{
		text = scr_name[17];
	}
	
	if diacount == 2 
	{
		text = scr_name[18];
	}
	
	if diacount == 3
	{
		text = scr_name[19];
	}
	

	return text;
}