
function Player_self_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	#region mainstream [1]
	if	diacount == 0	&& global.mainstream == 1
	{	
		//게임시작 튜토리얼 플레이어 독백
		text = "내이름은 이드";
		global.screen_black = true;
		dialog_count += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1	&& global.mainstream == 1
	{
		text = "시골의 한적한 마을 '아카리코'에서 살고있다";
		dialog_count += 1;
	}
	
	if	diacount == 2	&& global.mainstream == 1
	{	
		text = "이곳은 평화로운 마을이지만";
		dialog_count += 1;
	}
	if	diacount == 3	&& global.mainstream == 1
	{	text = "이 마을 말고 다른곳들도 구경하고싶어";
		dialog_count += 1;}
	
	if	diacount == 4	&& global.mainstream == 1
	{	text = "여행과 탐험을 할수 있는 모험자를 목표로";
		dialog_count += 1;}
		
	if	diacount == 5	&& global.mainstream == 1
	{	text = "수련에 매진해 왔지";
		dialog_count += 1;}
		
	if	diacount == 6	&& global.mainstream == 1
	{	text = "모험자를 지원하는 길드에 들어가";
		dialog_count += 1;}
		
	if	diacount == 7	&& global.mainstream == 1
	{	text = "새로운 지역들을 돌아보는것";
		dialog_count += 1;}
		
	if	diacount == 8	&& global.mainstream == 1
	{	text = "그것을 목표로 삼아";
		dialog_count += 1;}
		
	if	diacount == 9	&& global.mainstream == 1
	{	
		//게임시작 튜토리얼 독백 종료
		text = "매일같이 훈련을 하며 지내고 있다";
		//대화 종료, 대화변수 초기화, 암전해제
		global.screen_black = false;
		dialog_count = 0;
		dialog_endswitch = true;
		global.mainstream = 2;
	}
	
	#endregion
	
	#region mainstream [2]
	if	diacount == 0	&& global.mainstream == 2
	{	
		//게임조작 기본이동 튜토리얼 플레이어 독백
		text = "그렇게 혼자 훈련하면서";
		dialog_count += 1;
	}
	
	if	diacount == 1	&& global.mainstream == 2
	{	text = "오늘은 스스로 정한 마지막 훈련날";
		dialog_count += 1;	}
		
	if	diacount == 2	&& global.mainstream == 2
	{	text = "기본을 다시한번 확인하고";
		dialog_count += 1;	}
		
	if	diacount == 3	&& global.mainstream == 2
	{	text = "내일부터는 모험을 떠나자";
		dialog_count += 1;	}
	
	if diacount == 4	&& global.mainstream == 2
	{
		//게임조작 기본이동 튜토리얼 독백 종료
		text = "우선 가볍게 움직여보자";
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
		text = "[" + input.UI_attackkey + "] 로 공격을 하고";
		dialog_count += 1;
		global.UItext_show = true;
	}
	
	if	diacount == 1	&& global.mainstream == 4
	{	text = "[" + input.UI_attackskill + "] 로 기력을 소비해서 스킬을 쓸수있어";
		dialog_count += 1;}
		
	if	diacount == 2	&& global.mainstream == 4
	{	text = "지금은 간단한 기술밖에 없지만";
		dialog_count += 1;}
	
	if	diacount == 3	&& global.mainstream == 4
	{	text = "나중에 누군가에게서 더 배울수 있을거야";
		dialog_count += 1;}
	
	if diacount == 4	&& global.mainstream == 4
	{
		//게임조작 공격, 공격스킬 튜토리얼 독백 종료
		text = "우선 허수아비를 몇번 공격해보자";
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
		text =  "[" + input.UI_moveskill + "]키로 특수이동을 할수있어";
		dialog_count += 1;
		global.UItext_show = true;
	}
	
	if	diacount == 1	&& global.mainstream == 6
	{	text = "이때는 긴시간동안 적의 공격을 회피할수 있지";
		dialog_count += 1;}
		
	if	diacount == 2	&& global.mainstream == 6
	{	text =  "또, [" + input.UI_itemkey + "]키로 들고있는 아이템을 먹을 수 있어";
		dialog_count += 1;}
	
	if diacount == 3	&& global.mainstream == 6
	{
		//게임조작 점프, 이동스킬 튜토리얼 독백 종료
		text = "아이템은 한번에 하나만 들수 있으니 조심해";
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
		text = "오늘은 이정도로 하고 마무리할까?";
		dialog_count += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1	&& global.mainstream == 8
	{
		//튜토리얼 종료 독백 종료
		text = "내일을 위해 일찍 쉬도록 하자";
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
		text = "어제 그동안 모은 돈으로 갑옷을 샀다";
		dialog_count += 1;
	}
	
	if	diacount == 1	&& global.mainstream == 10
	{	text = "하지만 갑옷이 생각보다 비싸서";
		dialog_count += 1;}
		
	if	diacount == 2	&& global.mainstream == 10
	{	text = "무기는 아직 구하지 못했다";
		dialog_count += 1;}
		
	if	diacount == 3	&& global.mainstream == 10
	{	text = "그래도 일단 길드로 가서 말을 걸어보자";
		dialog_count += 1;}
	
	if diacount == 4	&& global.mainstream == 10
	{
		//본편 시작 독백 종료
		text = "길드는 마을 서쪽에 있었지?";
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