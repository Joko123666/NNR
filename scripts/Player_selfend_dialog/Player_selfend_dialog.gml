
function Player_selfend_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	#region mainstream [1]
	if	diacount == 0	&& global.mainstream == 99
	{	
		//게임시작 튜토리얼 플레이어 독백
		text = "내이름은 이드";
		global.screen_black = true;
		dialog_count += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1	&& global.mainstream == 99
	{
		text = "시골의 한적한 마을 '아카리코'에서 살고있다";
		dialog_count += 1;
	}
	
	if	diacount == 2
	{	
		text = "이곳은 평화로운 마을이지만";
		dialog_count += 1;
	}
	if	diacount == 3
	{	text = "이 마을 말고 다른곳들도 구경하고싶어";
		dialog_count += 1;}
	
	if	diacount == 4
	{	text = "여행과 탐험을 할수 있는 모험자를 목표로";
		dialog_count += 1;}
		
	if	diacount == 5
	{	text = "수련에 매진해 왔지";
		dialog_count += 1;}
		
	if	diacount == 6
	{	text = "모험자를 지원하는 길드에 들어가";
		dialog_count += 1;}
		
	if	diacount == 7
	{	text = "새로운 지역들을 돌아보는것";
		dialog_count += 1;}
		
	if	diacount == 8
	{	text = "그것을 목표로 삼아";
		dialog_count += 1;}
		
	if	diacount == 9
	{	text = "...";
		dialog_count += 1;}
		
	if	diacount == 10
	{	
		//게임시작 튜토리얼 독백 종료
		text = "매일같이 훈련을 반복하고있다";
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