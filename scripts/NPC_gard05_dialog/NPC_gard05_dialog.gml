
function NPC_gard05_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;

	
	if diacount == 0
	{
		text = "이곳은 아직 조사중입니다!";
		dialog_count +=1
	}
	
	if diacount == 1 
	{
		text = "죄송하지만 잠시 기다려주십시오!";
	}
	

	return text;
}