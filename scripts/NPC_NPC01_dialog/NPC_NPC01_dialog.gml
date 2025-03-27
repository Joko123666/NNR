
function NPC_NPC01_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	//메인 스트림에 따른 대사 출력 결정
	if global.mainstream != 1
	{diacount = irandom(3);}
	if global.mainstream == 1
	{diacount = 4;}
	text = "";
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "NPC01_dialog.txt");
	for (var i = 1; i < 20; i++;)
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
	}
	
	if diacount == 1
	{
		text = scr_name[3];
	}
	
	if diacount == 2
	{
		text = scr_name[4];
	}
	
	if diacount == 3  
	{
		text = scr_name[5];
	}
	
	if diacount == 4
	{
		text = scr_name[6];
	}
}

if global.language == "English"
{	
	if diacount == 0
	{
		text = scr_name[8];
	}
	
	if diacount == 1
	{
		text = scr_name[9];
	}
	
	if diacount == 2
	{
		text = scr_name[10];
	}
	
	if diacount == 3  
	{
		text = scr_name[11];
	}
	
	if diacount == 4
	{
		text = scr_name[12];
	}
}
	
	return text;
}