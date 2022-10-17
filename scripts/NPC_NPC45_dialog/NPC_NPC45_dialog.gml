
function NPC_NPC45_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = ""
	
	if diacount == 0
	{
		text = "...";
		global.NPC45_dialog += 1;
		global.UItext_show = true;
		global.mainstream = 45;
		dialog_endswitch = false;
	}
	
	if diacount == 1
	{
		text = "네가 이드인가";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "일전에 조사단이 다녀갔다";
		global.NPC45_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "이상을 해결하려 한다고 말이지";
		global.NPC45_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "...";
		global.NPC45_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "진짜 이상한건 뭐일까?";
		global.NPC45_dialog += 1;
	}
	
	if diacount == 6
	{
		text = "돌아가거라";
		global.NPC45_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "이상은 유지되어야 한다";
		global.NPC45_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "...";
	}
	
	
	return text;
}