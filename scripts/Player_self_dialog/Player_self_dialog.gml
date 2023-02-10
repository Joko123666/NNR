
function Player_self_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	//텍스트 파일 호출
	var file = file_text_open_read(working_directory + "Player_dialog.txt");
	for (var i = 1; i < 40; i++;)
	{
	    scr_name[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	file_text_close(file);
	
	
	#region mainstream [1]
	if	diacount == 0	&& global.mainstream == 1
	{	
		//게임시작 튜토리얼 플레이어 독백
		text = scr_name[diacount + 2];
		global.screen_black = true;
		dialog_count += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1	&& global.mainstream == 1
	{
		text = scr_name[diacount + 2];
		dialog_count += 1;
	}
	
	if	diacount == 2	&& global.mainstream == 1
	{	
		text = scr_name[diacount + 2];
		dialog_count += 1;
	}
	if	diacount == 3	&& global.mainstream == 1
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
	
	if	diacount == 4	&& global.mainstream == 1
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
		
	if	diacount == 5	&& global.mainstream == 1
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
		
	if	diacount == 6	&& global.mainstream == 1
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
		
	if	diacount == 7	&& global.mainstream == 1
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
		
	if	diacount == 8	&& global.mainstream == 1
	{	text = scr_name[diacount + 2];
		dialog_count += 1;}
		
	if	diacount == 9	&& global.mainstream == 1
	{	
		//게임시작 튜토리얼 독백 종료
		text = scr_name[11];
		//대화 종료, 대화변수 초기화, 암전해제
		global.screen_black = false;
		dialog_count = 0;
		global.mainstream = 2;
	}
	
	#endregion
	
	#region mainstream [2]
	if	diacount == 0	&& global.mainstream == 2
	{	
		//게임조작 기본이동 튜토리얼 플레이어 독백
		text = scr_name[12];
		dialog_count += 1;
	}
	
	if	diacount == 1	&& global.mainstream == 2
	{	text = scr_name[13];
		dialog_count += 1;	}
		
	if	diacount == 2	&& global.mainstream == 2
	{	text = scr_name[14];
		dialog_count += 1;	}
		
	if	diacount == 3	&& global.mainstream == 2
	{	text = scr_name[15];
		dialog_count += 1;	}
	
	if diacount == 4	&& global.mainstream == 2
	{
		//게임조작 기본이동 튜토리얼 독백 종료
		text = scr_name[16];
		//대화 종료, 대화변수 초기화, 암전해제
		dialog_count = 0;
		dialog_endswitch = true;
		global.mainstream = 3;
		global.UItext_show = false;
	}
	#endregion
	
	#region mainstream [4]
	if	diacount == 0	&& global.mainstream == 4
	{	
		//게임조작 공격,공격스킬 튜토리얼 플레이어 독백
		text = "[" + input.UI_attackkey + "]" + scr_name[17];;
		dialog_count += 1;
		global.UItext_show = true;
	}
	
	if	diacount == 1	&& global.mainstream == 4
	{	text = "[" + input.UI_attackskill + "]" + scr_name[18];;
		dialog_count += 1;}
		
	if	diacount == 2	&& global.mainstream == 4
	{	text = scr_name[19];
		dialog_count += 1;}
	
	if	diacount == 3	&& global.mainstream == 4
	{	text = scr_name[20];
		dialog_count += 1;}
	
	if diacount == 4	&& global.mainstream == 4
	{
		//게임조작 공격, 공격스킬 튜토리얼 독백 종료
		text = scr_name[21];
		//대화 종료, 대화변수 초기화, 암전해제
		dialog_count = 0;
		dialog_endswitch = true;
		global.mainstream = 5;
		global.UItext_show = false;
	}
	#endregion
	
	#region mainstream [6]
	if	diacount == 0	&& global.mainstream == 6
	{	
		//게임조작 점프, 이동스킬 튜토리얼 플레이어 독백
		text =  "[" + input.UI_moveskill + "]" + scr_name[22];
		dialog_count += 1;
		global.UItext_show = true;
	}
	
	if	diacount == 1	&& global.mainstream == 6
	{	text = scr_name[23];
		dialog_count += 1;}
		
	if	diacount == 2	&& global.mainstream == 6
	{	text =  "또, [" + input.UI_itemkey + "]" + scr_name[24];
		dialog_count += 1;}
	
	if diacount == 3	&& global.mainstream == 6
	{
		//게임조작 점프, 이동스킬 튜토리얼 독백 종료
		text = scr_name[25];
		//대화 종료, 대화변수 초기화, 암전해제
		dialog_count = 0;
		dialog_endswitch = true;
		global.mainstream = 7;
		global.UItext_show = false;
		instance_create_depth(x + 84, y - 12, 5, Item_healherb);
	}
	#endregion
	
	#region mainstream [8]
	if	diacount == 0	&& global.mainstream == 8
	{	
		//튜토리얼 종료 플레이어 독백
		text = scr_name[26];
		dialog_count += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1	&& global.mainstream == 8
	{
		//튜토리얼 종료 독백 종료
		text = scr_name[27];
		//대화 종료, 대화변수 초기화, 암전해제
		dialog_count = 2;
		dialog_endswitch = true;
		global.screen_black = true;
	}
	#endregion
	
	#region mainstream [10]
	if	diacount == 0	&& global.mainstream == 10
	{	
		//본편 시작 독백 시작
		text = scr_name[28];
		dialog_count += 1;
	}
	
	if	diacount == 1	&& global.mainstream == 10
	{	text = scr_name[29];
		dialog_count += 1;}
		
	if	diacount == 2	&& global.mainstream == 10
	{	text = scr_name[30];
		dialog_count += 1;}
		
	if	diacount == 3	&& global.mainstream == 10
	{	text = scr_name[31];
		dialog_count += 1;}
	
	if diacount == 4	&& global.mainstream == 10
	{
		//본편 시작 독백 종료
		text = scr_name[32];
		//대화 종료, 대화변수 초기화, 암전해제
		dialog_count = 0;
		dialog_endswitch = true;
		global.screen_black = false;
		global.mainstream = 11;
		global.UItext_show = false;
	}
	#endregion
	

	
	return text;
}