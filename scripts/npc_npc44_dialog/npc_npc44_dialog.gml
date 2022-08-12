
function NPC_NPC44_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = ""
	
	if diacount == 0
	{
		text = "...";
		global.NPC44_dialog += 1;
		global.UItext_show = true;
		global.mainstream = 45;
		dialog_endswitch = false;
	}
	
	if diacount == 1
	{
		text = "당신은 모험가 길드원인가";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "일전에 조사단이 다녀갔다";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "이상은 이미 일어났다";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "너희에게 의뢰할것이 있었다";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "안쪽에서 목걸이를 찾아주길 바란다";
		global.NPC44_dialog += 1;
	}
	if diacount == 6
	{
		text = "600G정도는 준비해놓는다";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "그럼 부탁한다";
		global.NPC44_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 60;
		global.UItext_show = false;
		quest_board("side004");
		global.subquest[4] = 1;
	}

	if diacount == 8 && global.subquest[4] == 1
	{
		if randia == 0
		{text = "...";}
		if randia == 1
		{text = "파란색 목걸이다";}
	}
	
	
	return text;
}