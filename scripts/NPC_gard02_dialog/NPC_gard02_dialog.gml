// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_gard02_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	
	diacount = irandom(3)
	if diacount == 0
	{
		text = "안녕하십니까!";
	}
	
	if diacount == 1 
	{
		text = "근무중 이상 무!";
	}
	
	if diacount == 2 
	{
		text = "아무이상 없습니다!";
	}
	
	if diacount == 3
	{
		text = "제대로 근무중입니다!";
	}

	return text;
}