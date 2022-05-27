
function NPC_vally_gard01_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;

	diacount = irandom(3);
	
	if diacount == 0
	{
		text = "제루루크에 오신걸 환영합니다!";
	}
	
	if diacount == 1 
	{
		text = "이곳은 우리가 지키고 있습니다!";
	}
	
	if diacount == 2 
	{
		text = "순찰중 이상 무!";
	}
	
	if diacount == 3
	{
		text = "현재 근무중입니다!";
	}
	

	return text;
}