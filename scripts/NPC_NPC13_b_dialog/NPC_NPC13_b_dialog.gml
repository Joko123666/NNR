
function NPC_NPC13_b_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	//메인 스트림에 따른 대사 출력 결정
	//if global.mainstream != 0		 메인스트림 트리거
	diacount = irandom(4);
	text = ""
	
	if diacount == 0
	{
		text = "어서오십시오";
	}
	
	if diacount == 1
	{
		text = "죄송하지만 지금은 방이 전부 찼습니다";
	}
	
	if diacount == 2
	{
		text = "제루루크에는 어떤 일로 오셨나요?";
	}
	
	if diacount == 3  
	{
		text = "좋은 날입니다";
	}
	
	if diacount == 4
	{
		text = "환영합니다";
	}
	
	return text;
}