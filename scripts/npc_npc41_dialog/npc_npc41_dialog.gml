
function NPC_NPC41_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = ""
	
	if diacount == 0
	{
		text = "미야옹~";
		global.NPC41_dialog += 1;
	}
	
	
	return text;
}