
function NPC_NPC15_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	if diacount == 0 && global.mainstream < 18
	{
		text = "이곳은 길드원 전용 창구입니다";
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	if diacount == 0 && global.quest_stack[4] != "empty"
	{text = "지금은 조금 바쁘시네요 ";}
	
	if diacount == 0 && global.mainstream == 18 && global.quest_stack[4] == "empty"
	{
		text = "안녕하세요 이드씨 ";
		global.NPC15_dialog = 1;
		global.UItext_show = true;
	}
	
	if diacount == 1 
	{
		text = "얼마전 산에서 이상사태가 보고되어";
		global.NPC15_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "그것을 조사하기 위한 조사대가 출발했습니다";
		global.NPC15_dialog += 1;
	}
	
	if diacount == 3  
	{
		text = "혹시 중간에 마주치신다면";
		global.NPC15_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "협조를 부탁드려도 괜찮을까요?";
		global.NPC15_dialog += 1;
		global.mainstream = 19;
		global.mainquest[4] = 1;		//퀘스트 진행도 갱신
		quest_board("main004");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 5
	{
		text = "조사대는 동쪽으로 출발했습니다";
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	
	//End research quest
	
	if diacount <= 5 && global.greenorb == true
	{
		text = "어서오세요 이드씨";
		global.NPC15_dialog = 6;
		global.UItext_show = true;
	}
	
	if diacount == 6 
	{
		text = "조사대의 지원요청에 따라 조사를 하시다가";
		global.NPC15_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "이상한 물건을 발견하셨다구요?";
		global.NPC15_dialog += 1;
	}
	
	if diacount == 8 
	{
		text = "한번 보여주시겠어요?";
		global.NPC15_dialog += 1;
	}
	
	if diacount == 9 
	{
		text = "어디어디";
		audio_play_sound(SE_system01, 2, false);
		global.NPC15_dialog += 1;
	}
	
	if diacount == 10
	{
		text = "음... 지금으로서는 이게 뭔지 알 방법이 없네요";
		global.NPC15_dialog += 1;
	}
	
	if diacount == 11
	{
		text = "길드에서도 이것에 대해 조사를 진행하겠으니";
		global.NPC15_dialog += 1;
	}
	
	if diacount == 12
	{
		text = "뭔가 알아내는대로 말씀 드릴게요";
		global.NPC15_dialog += 1;
	}
	
	if diacount == 13
	{
		text = "이번 조사협력, 수고 많으셨습니다";
		global.NPC15_dialog += 1;
	}
	
	if diacount == 14
	{
		text = "이건 길드에서의 사례비입니다";
		global.gold += 200;
		audio_play_sound(SE_coin02, 1, false);
		global.mainquest[5] = 3;		//퀘스트 진행도 갱신
		global.NPC15_dialog += 1;
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 15
	{
		text = "앞으로도 잘부탁드립니다~";
		global.mainstream = 22;
		global.NPC15_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	if diacount == 16
	{
		var randia = irandom(3);
		if randia == 0
			{ text = "앞으로도 잘부탁드립니다~" ; }
		if randia == 1
			{ text = "모험자 길드에 어서오세요~" ; }
		if randia == 2
			{ text = "이드씨에겐 항상 감사드려요~" ; }
		if randia == 3
			{ text = "무슨 볼일이신가요?" ; }
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}

	
	return text;
}