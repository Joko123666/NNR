
function NPC_NPC30_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(1);
	text = ""
	
	if diacount == 0
	{
		text = "안녕하신가";
		global.NPC30_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "나에게 이름을 묻는다면 나는 닌자";
		global.NPC30_dialog += 1;
	}
	

	if diacount == 2 
	{
		text = "잘도 나를 찾아내었군";
		global.NPC30_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "날 찾은 기념으로 기술을 한가지 알려주지";
		global.NPC30_dialog += 1;
	}
	
	if diacount == 4  
	{
		text = "이번에는 좀 어려운 기술일세";
		global.NPC30_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "400G로 어떠신가";	
		global.NPC30_dialog += 1;
	}
	
	if diacount == 6 && randia == 0
	{
		text = "원래는 만금을 주고도 배울수 없는 기술이라네";
		if global.gold >= 400
		{global.NPC30_dialog += 1;}
	}
	
	if diacount == 6 && randia == 1
	{
		text = "기술을 배우려면 400G를 가져오게나";
		if global.gold >= 400
		{global.NPC30_dialog += 1;}
	}
	
	if diacount == 7
	{
		text = "잘 생각했네";
		global.gold -= 400;
		audio_play_sound(SE_coin02, 1, false);
		global.Player_moveskill = 3;
		oPlayer.moveskill_set = 3;
		global.NPC30_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "자신의 그림자를 남겨 이동하는 기술일세";
		global.NPC30_dialog += 1;
	}
	
	if diacount == 9
	{
		text = "빠르게 안전한 장소로 돌아오는데 유용하지";
		global.NPC30_dialog += 1;
	}
	
	if diacount == 10
	{
		text = "그럼 다음에 볼때까지 잘 계시게나";
		global.NPC30_dialog += 1;
	}
	
	
	return text;
}