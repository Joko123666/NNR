
function NPC_vally_gard02_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;

	diacount = irandom(3);
	
	if diacount == 0
	{
		text = "아~ 전역하고싶다~";
	}
	
	if diacount == 1 
	{
		text = "사실 지금 근무시간인데 짱박혀 있는거야";
	}
	
	if diacount == 2 
	{
		text = "순찰중 이상 무!";
	}
	
	if diacount == 3
	{
		text = "아~ 경계나가기 싫다~";
	}
	

	return text;
}