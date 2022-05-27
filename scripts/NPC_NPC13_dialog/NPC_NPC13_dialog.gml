
function NPC_NPC13_dialog(argument0)
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
		text = "저희 여관은 1박에 10G 입니다";
	}
	
	if diacount == 2
	{
		text = "집이 있으신분이 방을 빌릴 필요는 없겠죠";
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