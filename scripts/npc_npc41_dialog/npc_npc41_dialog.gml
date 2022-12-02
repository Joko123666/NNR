
function NPC_NPC41_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "미야옹~"
	
	if diacount == 0
	{
		text = "미야옹~";
		global.NPC41_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "이게임~ 갈비지 쓰레기게임이다냐옹~";
		global.NPC41_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "미야옹~";
		global.NPC41_dialog += 1;
	}
	
	
	return text;
}