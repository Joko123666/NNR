
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
	
	if diacount == 0
	{
		text = "오늘도 건강하구나";
	}
	
	if diacount == 1
	{
		text = "밥은 먹고 다니니?";
	}
	
	if diacount == 2
	{
		text = "오늘도 열심히 일해보자!";
	}
	
	if diacount == 3  
	{
		text = "언제나 평화로운 마을이야";
	}
	
	if diacount == 4
	{
		text = "해롤드는 노란색지붕 집에 살고있어";
	}
	
	return text;
}