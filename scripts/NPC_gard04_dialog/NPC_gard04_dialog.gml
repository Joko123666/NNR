
function NPC_gard04_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;

	diacount = irandom(2);
	
	
	if diacount == 0
	{
		text = "저희는 정찰임무중입니다";
	}
	
	if diacount == 1 
	{
		text = "이 주변에 이상사태가 발생해 조사중입니다";
	}
	
	if diacount == 2 
	{
		text = "항상 위험에 대비하십시오!";
	}
	
	return text;
}