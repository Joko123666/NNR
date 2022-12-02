
function NPC_NPC17_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(1);
	text = ""
	
	if diacount == 0
	{
		text = "안녕하신가";
		global.NPC17_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "나에게 이름을 묻는다면 나는 닌자";
		global.NPC17_dialog += 1;
	}
	

	if diacount == 2 
	{
		text = "잘도 여기까지 올라왔군";
		global.NPC17_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "날 찾은 기념으로 기술을 한가지 알려주지";
		global.NPC17_dialog += 1;
	}
	
	if diacount == 4  
	{
		text = "물론 공짜로는 안되네";
		global.NPC17_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "200G로 어떠신가";	
		global.NPC17_dialog += 1;
	}
	
	if diacount == 6 && randia == 0
	{
		text = "원래는 만금을 주고도 배울수 없는 기술이라네";
		if global.gold >= 200
		{global.NPC17_dialog += 1;}
	}
	
	if diacount == 6 && randia == 1
	{
		text = "기술을 배우려면 200G를 가져오게나";
		if global.gold >= 200
		{global.NPC17_dialog += 1;}
	}
	
	if diacount == 7
	{
		text = "잘 생각했네";
		global.gold -= 200;
		audio_play_sound(SE_coin02, 1, false);
		global.Player_moveskill = 2;
		oPlayer.moveskill_set = 2;
		global.NPC17_dialog += 1;
		global.moveskill02 = true;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 8
	{
		text = "적 사이를 빠르게 빠져나가는데 유용한 기술이네";
		global.NPC17_dialog += 1;
	}
	
	if diacount == 9
	{
		text = "그럼 다음에 볼때까지 잘 계시게나";
		global.NPC17_dialog += 1;
	}
	
	
	return text;
}