
function NPC_NPC43_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = ""
	
	if diacount == 0
	{
		text = "어서 오십시오 이드씨";
		global.NPC43_dialog += 1;
		global.UItext_show = true;
		global.mainquest[14] = 3;		//퀘스트 진행도 갱신
		quest_clearboard("main014");
		audio_play_sound(SE_system03, 1, false);
		global.mainstream = 45;
	}
	
	if diacount == 1
	{
		text = "당신에 대한 보고는 듣고있습니다";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "저는 이 지역 길드를 총괄하는 길드장입니다";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "저번에 아카리코 마을에서 올라온 보고에";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "정체불명의 구체를 입수하셨다고 들었습니다";
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
		text = "라는게 저희팀 조사반의 의견입니다";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 9
	{
		text = "제루루크에서도 한개를 더 발견 하신듯 한데";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 10
	{
		text = "저희쪽에서도 한개의 행방을 조사해 두었습니다";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 11
	{
		text = "이드씨가 그쪽에서 그물건을 회수해주시면";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 12
	{
		text = "그 사이에 저희가 이상을 해결할수 있는 방법을";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 13
	{
		text = "확립해 놓도록 하겠습니다";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 14
	{
		text = "그 장소로 가는 전송장치를 마련했으니";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 15
	{
		text = "그걸 이용하시면 바로 갈수 있을겁니다";
		global.NPC43_dialog += 1;
	}
	
	if diacount == 16
	{
		text = "그럼 잘 부탁드립니다";
		global.NPC43_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 60;
		global.UItext_show = false;
		global.mainquest[15] = 1;		//퀘스트 진행도 갱신
		quest_board("main015");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		global.mainstream = 51;
	}
	
	if diacount == 17 && global.mainstream <= 51
	{
		if randia == 0
		{text = "목표의 전송장치는 이쪽 맨위에 있습니다";}
		if randia == 1
		{text = "모쪼록 잘 부탁드립니다";}
	}
	
	
	return text;
}