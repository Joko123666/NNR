
function NPC_NPC09_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	if diacount == 0
	{
		text = "안녕하신가!";
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "내이름은 골리아스!";
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "수련 외길인생!";
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "단련만이 나의 삶이다!!!";
		screen_shake(10, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "하지만 수련만으로는 먹고 살수 없지...";
		global.NPC09_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "그! 래! 서!";
		screen_shake(15, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 6
	{
		text = "내 기술들을 약간의 돈을 받고 가르쳐주고있지";
		global.NPC09_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "어떤가?";
		global.NPC09_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "내 기술중 하나인 돌격 1식을 배워볼텐가?";
		global.NPC09_dialog += 1;
	}
	
	if diacount == 9
	{
		text = "단돈 150G로 가르쳐 주겠다!";
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 10
	{
		text = "돈을 가지고 말을 걸면 배울 생각이 있는거로 알겠다!";
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 11
	{
		text = "자! 이런기회는 많지않다!!";
		screen_shake(10, 5);
	}
	
	if diacount == 11 && global.gold >= 150
	{
		text = "잘 생각했다!!!";
		screen_shake(15, 5);
		global.gold -= 150;
		audio_play_sound(SE_coin02, 1, false);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 12
	{
		text = "그럼 이 기술을 받아라!";
		screen_shake(5, 5);
		oPlayer.attackskill_set = 2;
		global.Player_attackskill = 1;
		global.NPC09_dialog += 1;
	}
	
	if diacount == 13
	{
		text = "기본적이여도 좋은 기술이다!";
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 14
	{
		text = "부디 잘 써주길 바란다!";
		screen_shake(5, 5);
		global.NPC09_dialog += 1;
	}
	
	if diacount == 15
	{
		text = "그럼 다음에 볼때까지 수련이다!!!";
		screen_shake(15, 5);
	}

	
	return text;
}