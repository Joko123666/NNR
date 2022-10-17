
function NPC_NPC43_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = ""
	
	if diacount == 0
	{
		text = "어서오게 이드";
		global.NPC43_dialog += 1;
		global.UItext_show = true;
		global.mainquest[14] = 3;		//퀘스트 진행도 갱신
		quest_clearboard("main014");
		audio_play_sound(SE_system03, 1, false);
		global.mainstream = 45;
	}
	
	if diacount == 1
	{
		text = "자네에 대한 보고는 여러번 들었다네";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "나는 이 지역을 총괄하는 길드장일세";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "저번에 아카리코 마을에서 올라온 보고에";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "정체불명의 구체를 입수했다고 전해들었네";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "이쪽에서 그물건에 대해 조사해본 결과";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 6
	{
		text = "그물건이 최근 일어나는 이상사태와 관련이 있고";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "몇개를 더 모으면 이상사태를 막을수도 있다";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "라는게 우리길드 조사반의 의견이더군";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 9
	{
		text = "제루루크에서도 한개를 더 발견 한듯 한데";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 10
	{
		text = "그것 역시 이상사태의 중심에 있더군";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 11
	{
		text = "마침 우리쪽에 이상사태의 보고가 새로 들어왔네";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 12
	{
		text = "그곳에서 구체를 하나 더 찾을수 있으리라 보는데";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 13
	{
		text = "회수를 좀 부탁하겠네";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 14
	{
		text = "그곳으로 바로 갈수있는 전송장치를 설치해놨으니";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 15
	{
		text = "그걸 이용하시면 바로 갈수을걸세";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 16
	{
		text = "그럼 잘 부탁하네";
		global.NPC43_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 60;
		global.UItext_show = false;
		global.mainquest[15] = 1;		//퀘스트 진행도 갱신
		quest_board("main015");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		global.mainstream = 51;
	}
	
	if diacount == 17 && global.mainstream < 50
	{
		if randia == 0
		{text = "그곳으로 가는 전송장치는 이쪽 맨위에 설치했다";}
		if randia == 1
		{text = "당신의 활약에는 항상 감사하고있다 이드";}
		dialog_endswitch = true;
		diafalse_count = 40;
	}
	
	if diacount == 17 && global.mainstream >= 50
	{
		text = "어서오게 이드";
		global.NPC43_dialog += 1;
		global.UItext_show = true;
		dialog_endswitch = false;
	}
	
	if diacount == 18
	{
		text = "자네가 이상사태를 해결하러 간 사이에";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 19
	{
		text = "이 공간을 고정시켜주던 장치가";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 20
	{
		text = "갑자기 빛을내기 시작했네";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 21
	{
		text = "그리고는 자네가 돌아왔을때";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 22
	{
		text = "3개의 구멍이 뚤린 판이 튀어나왔지";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 23
	{
		text = "이곳에 그동안 모은 구슬을 끼워넣으면";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 24
	{
		text = "무언가 변화가 있을거라 생각하네";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 25
	{
		text = "바로 넣어보겠나?";
		global.NPC43_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 40;
	}
	
	if diacount == 26
	{
		if randia == 0
		{text = "자 어서 구슬을 끼워넣게";}
		if randia == 1
		{text = "무언가 남은 할일이 있나?";}
		dialog_endswitch = true;
		diafalse_count = 40;
	}
	

	
	
	return text;
}