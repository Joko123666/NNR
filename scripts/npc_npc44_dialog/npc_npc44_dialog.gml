
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
		dialog_endswitch = false;
	}
	
	if diacount == 1
	{
		text = "당신이 길드의 이드인가";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "나는 이 유적을 관리하는 관리인일세";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "말이 좋아 유적이지 그저 방치된 땅이였는데";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "얼마전부터 안쪽에서 이상한것이 움직이기 시작하더군";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "그래서 바로 길드에 조사를 의뢰했지";
		global.NPC44_dialog += 1;
	}
	if diacount == 6
	{
		text = "다른곳의 이상을 해결한 길드원이 온다고 하더군";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "이렇게 와줘서 고맙네";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "미안하지만 이 주변엔 아무것도 없다네";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 9
	{
		text = "내가 가진 포션을 조금 나눠주지";
		global.NPC44_dialog += 1;
		instance_create_depth(x + image_xscale*8, y-8, 1, Item_healpotion2);
	}
	
	if diacount == 10
	{
		text = "내가 해줄수 있는건 이정도로군";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 11
	{
		text = "그러면 잘부탁하네";
		global.NPC44_dialog += 1;
	}
	
	if diacount == 12
	{
		text = "그러면 잘부탁하네";
		global.NPC44_dialog += 1;
		dialog_endswitch = true;
		global.UItext_show = false;
	}

	if diacount == 13	&& global.mainstream < 60
	{
		if randia == 0
		{text = "이 앞으로 곧장 가면 되네";}
		if randia == 1
		{text = "건물에 들어가면 바로 있으니 조심하게";}
		dialog_endswitch = true;
	}
	
	if diacount == 13 && global.mainstream >= 60
	{
		text = "이상을 해결하고 온건가?";
		global.NPC44_dialog += 1;
		dialog_endswitch = false;
		global.UItext_show = true;
	}
	if diacount == 14
	{
		text = "수고했네";
		global.NPC44_dialog += 1;
	}
	if diacount == 14
	{
		text = "이건 이상해결의 보수일세";
		global.NPC44_dialog += 1;
		global.gold += 1000;
	}
	if diacount == 15
	{
		text = "그리고 방금전에 길드에서 전언이 온듯하네";
		global.NPC44_dialog += 1;
	}
	if diacount == 16
	{
		text = "이 옆의 직원이 돌아오면 찾아와달라 하더군";
		global.NPC44_dialog += 1;
	}
	if diacount == 17
	{
		text = "바로 가보는게 어떤가?";
		global.NPC44_dialog += 1;
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	if diacount == 18
	{
		if randia == 0
		{text = "감사를 표하네";}
		if randia == 1
		{text = "자네에게 평안이 있기를";}
		dialog_endswitch = true;
	}
	
	
	return text;
}