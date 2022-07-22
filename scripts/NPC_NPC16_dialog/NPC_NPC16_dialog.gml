
function NPC_NPC16_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	if diacount == 0	&& global.mainstream < 19
	{
		text = "안녕하세요 이드씨 여긴 어쩐 일이세요?";
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	if diacount == 0 && global.mainstream == 19
	{
		text = "안녕하세요 이드씨 여긴 어쩐 일이세요?";
		global.NPC16_dialog += 1;
		global.UItext_show = true;
	}
	

	if diacount == 1 
	{
		text = "아 길드에서 보내서 오셨다구요?";
		global.NPC16_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "마침 도움이 필요하던 차였는데 다행이네요";
		global.NPC16_dialog += 1;
		global.mainquest[4] = 3;		//퀘스트 진행도 갱신
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 3  
	{
		text = "조사중 이 위쪽 동굴에서 이상을 발견했습니다";
		global.NPC16_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "특이한 고블린이 출현한 듯 합니다만";	
		global.NPC16_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "조사원분중 한분이 함정에 걸려 부상을 당해서";
		global.NPC16_dialog += 1;
	}
	
	if diacount == 6
	{
		text = "한번 마을에 돌아가야 하는 상황이였습니다";
		global.NPC16_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "가능하면 동굴 안쪽의 확인을 부탁드려도 될까요?";
		global.mainstream = 20;
		global.mainquest[5] = 1;		//퀘스트 진행도 갱신
		quest_board("main005");			//퀘스트 보드에 퀘스트 갱신
		global.NPC16_dialog += 1;
		audio_play_sound(SE_system07, 1, false);
	}
	
	if diacount == 8	
	{
		text = "기운도 차릴겸 스프도 드시고 가세요~";
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	if diacount <= 8 && global.mainstream >= 21
	{
		text = "무사히 돌아오셨군요!";
		global.NPC16_dialog = 9;
		global.UItext_show = true;
	}
	
	if diacount == 9
	{
		text = "동굴 안쪽에 커다란 고블린이 있어서";
		global.NPC16_dialog += 1;
	}
	
	if diacount == 10
	{
		text = "쓰러트리고 오셨다구요?";
		global.NPC16_dialog += 1;
	}
	
	if diacount == 11
	{
		text = "수고 많으셨습니다";
		global.NPC16_dialog += 1;
	}
	
	if diacount == 12
	{
		text = "저희는 후속 조사를 마친 뒤에 복귀하겠습니다";
		global.NPC16_dialog += 1;
	}
	if diacount == 13
	{
		text = "휴식도 하실겸 먼저 마을로 돌아가셔도 됩니다";
		global.NPC16_dialog += 1;
	}
	if diacount == 14
	{
		text = "조사협력 감사드립니다!";
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	}
	
	return text;
}