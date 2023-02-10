
function Player_selfend_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "Player_end_dialog.txt");
	for (var i = 1; i < 55; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	#region mainstream [1]
	if	diacount == 0	&& global.mainstream == 99
	{	
		//게임시작 튜토리얼 플레이어 독백
		text = scr_name[diacount + 2];
		global.screen_black = true;
		dialog_count += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1	&& global.mainstream == 99
	{
		text = scr_name[diacount + 2];
		dialog_count += 1;
	}
	
	if	diacount == 2
	{	
		text = scr_name[diacount + 2];
		dialog_count += 1;
	}
	if	diacount == 3
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
	
	if	diacount == 4
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
		
	if	diacount == 5
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
		
	if	diacount == 6
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
		
	if	diacount == 7
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
		
	if	diacount == 8
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
		
	if	diacount == 9
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
		
	if	diacount == 10
	{	
		//게임시작 튜토리얼 독백 종료
		text = scr_name[diacount + 2];
		//대화 종료, 대화변수 초기화, 암전해제
		global.screen_black = false;
		dialog_count += 1;
		global.mainstream = 100;
		act_count = 60;
	}
	
	if	diacount == 11
	{	
		text = "."
	}
	
	
	#endregion
	
	
	return text;
}