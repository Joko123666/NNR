
function NPC_NPC29_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	if diacount == 0
	{
		text = "안녕하신가!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "내이름은 골리아스!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "다시만났군!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "이 만남에 감사를!!";
		screen_shake(10, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "바로 본론으로 들어가지...";
		global.NPC29_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "나의 비장의 기술 그 두번째!!!";
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 6
	{
		text = "그이름도 찬란한..";
		global.NPC29_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "검-회전-베어내기!!!";
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "검에 회전을 실어서 거침없이 베어내는 기술이다!!";
		screen_shake(10, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 9
	{
		text = "이번엔 단돈 350G로 가르쳐 주겠다!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 10
	{
		text = "돈을 가지고 말을 걸면 배울 생각이 있는거로 알겠다!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 11
	{
		text = "너에게는 기대하고있다!!";
		screen_shake(10, 5);
	}
	
	if diacount == 11 && global.gold >= 350
	{
		text = "잘 생각했다!!!";
		screen_shake(15, 5);
		global.gold -= 350;
		audio_play_sound(SE_coin02, 1, false);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 12
	{
		text = "그럼 이 기술을 받아라!";
		screen_shake(5, 5);
		oPlayer.attackskill_set = 2;
		global.Player_attackskill = 3;
		global.attackskill03 = true;
		oPlayer.attackskill_set = 3;
		global.NPC29_dialog += 1;
	}
	
	if diacount == 13
	{
		text = "자신이 강할수록 더욱 빛을 발하는 기술이다!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 14
	{
		text = "부디 잘 써주길 바란다!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 15
	{
		text = "그럼 다음에 볼때까지 다시 수련이다!!!";
		screen_shake(15, 5);
	}

	
	return text;
}