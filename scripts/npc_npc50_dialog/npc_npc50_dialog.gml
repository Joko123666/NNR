
function NPC_NPC50_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(1);
	text = ""
	
	if diacount == 0
	{
		text = "안녕하신가";
		global.NPC50_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "나를 찾는것도 슬슬 익숙해 진듯 하군";
		global.NPC50_dialog += 1;
	}
	

	if diacount == 2 
	{
		text = "슬슬 닌자의 길을 걸어도 좋을것일세";
		global.NPC50_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "이번 기술은 좀 더 닌자다운 기술";
		global.NPC50_dialog += 1;
	}
	
	if diacount == 4  
	{
		text = "인법 '바꿔치기술'";
		global.NPC50_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "... 이번엔 무료로 좋네";	
		global.NPC50_dialog += 1;
	}
	
	if diacount == 6
	{
		text = "미래에 대해 신중히 생각해 주시게";
		global.NPC50_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "인법 '기술전수의 술!'";
		audio_play_sound(SE_system04, 1, false);
		global.Player_moveskill = 5;
		oPlayer.moveskill_set = 5;
		global.NPC50_dialog += 1;
		global.moveskill05 = true;
	}
	
	if diacount == 8
	{
		text = "사라지듯 이동하는 기술일세";
		global.NPC50_dialog += 1;
	}
	
	if diacount == 9
	{
		text = "원래자리에는 작은 선물을 남겨두며 말이지";
		global.NPC50_dialog += 1;
	}
	
	if diacount == 10
	{
		text = "그럼 다음에 볼수 있기를 바라네";
		global.NPC50_dialog += 1;
	}
	
	
	return text;
}