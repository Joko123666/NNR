
function NPC_gard01_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	
	if diacount == 0
	{
		text = "안녕하십니까!";
		dialog_count +=1
	}
	
	if diacount == 1 && global.mainstream < 7
	{
		text = "준비도 없이 마을을 나가실순 없습니다!";
	}
	
	if diacount == 1 && global.mainstream >= 7
	{
		text = "이 앞은 몬스터가 나오니 조심하십시오!";
	}
	
	return text;
}