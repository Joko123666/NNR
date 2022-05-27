
function NPC_gard03_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	
	if diacount == 0
	{
		text = "경계중 이상 무!";
		dialog_count +=1
	}
	
	if diacount == 1 
	{
		text = "이 언덕 위쪽 동굴에 강한 몬스터가 나타났습니다!";
		dialog_count +=1
	}
	
	if diacount == 2 
	{
		text = "단단히 준비하지 않으면 위험합니다!";
	}
	
	return text;
}