
function NPC_NPC8_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	
	text = "어서와";
	
	if diacount == 0
	{
		text = "어서와 이드";
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = "날 찾아오다니 별일이네";
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "무슨 볼일 있어?";
		if global.mainstream == 12
		{
			dialog_count +=1
			global.NPC8_dialog += 1;
		}
		else {dialog_endswitch = true;	global.UItext_show = false;}
	}
	
	if diacount == 3	&& global.mainstream == 12
	{
		text = "검이 필요한거야?";
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 4 
	 {
		 text = "내 부탁을 들어주면 못줄것도 없지";
		 dialog_count +=1
		global.NPC8_dialog += 1;
	 }
	
	
	if diacount == 5
	{
		
		if global.quest_stack[4] == "empty"
		{
			quest_board("main002")
			global.NPC8_dialog += 1;
			global.mainstream = 13;
			global.mainquest[2] = 1;
			dialog_count +=1
			text = "우선은 지붕 위에 생긴 벌레 둥지를 처리해줘";
			audio_play_sound(SE_system07, 1, false);
		}
		else {text = "지금은 맡고 있는 일이 너무 많네."; dialog_endswitch = true;	global.UItext_show = false;}
	}
	
	if diacount == 6	&& global.mainstream == 13
	{
		text = "헤헤, 내가 벌레는 워낙 질색이라서 말이야";
		global.UItext_show = false;
		dialog_endswitch = true;
	}
	
	if diacount == 6 && global.mainstream == 14
	{
		if global.bugbeat == false
		{text = "처리를 안했으면 매일같이 벌레가 날아들었을텐데";}
		if global.bugbeat == true
		{text = "부탁하지 않은 벌레까지 처리해주다니!";}
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.mainquest[2] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 7 && global.mainstream == 14
	{
		text = "덕분에 살았어 이드!!";
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 8 && global.mainstream == 14
	{
		text = "그럼 다음 부탁을 들어줘";
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 9 && global.mainstream == 14
	{
		text = "이 편지를 길드의 바레타씨에게 전달해 주었으면 해";
		dialog_count +=1
		global.NPC8_dialog += 1;
		quest_board("main003");
		
		instance_create_layer(x + image_xscale * 44, y - 46, "Effects", questitem_mail);
		global.mainstream = 15;
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 10 && global.mainstream == 15
	{
		text = "헤헤, 꼭좀 부탁할게";
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	//퀘스트 분기에 따라 퀘스트 진행 조정 
	
	#region 분기A 편지 전달
	if diacount == 10 && global.mainstream == 16	&& global.quest_selection == "A"
	{
		text = "편지를 제대로 전달해줬네";
		dialog_count +=1
		global.NPC8_dialog = 11;
		global.NPC8_status = 1;
		global.mainquest[3] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 11 && global.NPC8_status == 1
	{
		text = "내용물은 보지 않은거지?";
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 12 && global.NPC8_status == 1
	{
		text = "제대로 믿고 있었다구~";
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 13 && global.NPC8_status == 1
	{
		text = "약속대로 검은 가져가도 좋아";
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.mainstream = 17;
		instance_create_depth(x, y-32, -1, Item_sword_get);
	}
	
	if diacount >= 14 && global.mainstream >= 17	&& global.NPC8_status == 1
	{
		text = "답장이 기대되네~";
		dialog_endswitch = true;
		global.UItext_show = false;
	}
	
	#endregion
	
	#region 분기B 편지 사용
	if diacount == 10 && global.mainstream == 16	&& global.quest_selection == "B"
	{
		text = "... 그 편지를 열어본거야??";
		dialog_count = 11;
		global.NPC8_dialog += 1;
		global.NPC8_status = 2;
		global.mainquest[3] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 11 && global.NPC8_status == 2
	{
		text = "아니... 그게아니라...";
		dialog_count +=1
		global.NPC8_dialog += 1;
	}
	
	if diacount == 12 	&& global.NPC8_status == 2
	{
		text = "원하던 대로 검은 줄테니까";
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.mainstream = 17;
		instance_create_depth(x, y-32, -1, Item_sword_get);
	}
	if diacount == 13 && global.mainstream == 17	&& global.NPC8_status == 2
	{
		text = "이 일에 대해서는 조용히 해줬으면 좋겠어...";
		dialog_count +=1
		global.NPC8_dialog += 1;
		global.NPC2_dialog = 9;
	}
	
	if diacount >= 14 && global.mainstream >= 17	&& global.NPC8_status == 2
	{
		text = "다시는 말걸지 말아줘";
		dialog_endswitch = true;
		global.UItext_show = false;

	}
	#endregion
	
	return text;
}