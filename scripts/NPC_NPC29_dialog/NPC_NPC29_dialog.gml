
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
		text = "너에게는 기대하고있다!! 350G!!";
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
		global.Player_attackskill = 3;
		global.attackskill03 = true;
		oPlayer.attackskill_set = 3;
		global.NPC29_dialog += 1;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
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
		global.NPC29_dialog += 1;
	}
	
	if diacount == 16
	{
		text = "라고 할줄 알았겠지만!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 17
	{
		text = "무려 특별 서비스!!!";
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 18
	{
		text = "기술을 하나 더 준비했다!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 19
	{
		text = "검-회전-베어내기는 회전의 힘을담은 기술이지";
		global.NPC29_dialog += 1;
	}

	if diacount == 20
	{
		text = "하지만 회전은 종회전만 있는게 아니다!!";
		screen_shake(10, 5);
		global.NPC29_dialog += 1;
	}


	if diacount == 21
	{
		text = "그래! 다른 하나의 회전기술!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}

	if diacount == 22
	{
		text = "이름하야 '관상축-회전-베어내기'!!!";
		screen_shake(15, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 23
	{
		text = "앞으로 구르듯이 회전하며 베는 기술이다!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 24
	{
		text = "강력한 파워와 속도가 특징이지!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 25
	{
		text = "대신 조금 지치는 기술이다!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}


	if diacount == 26
	{
		text = "대신 위력은 보증한다!!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}


	if diacount == 27
	{
		text = "500G로 배워보는건 어떠냐!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 28
	{
		text = "마찬가지로 돈을 가지고 말을걸면 승낙으로 보겠다!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}

	if diacount == 29	&& global.gold < 500
	{
		text = "단돈 500G!!";
		screen_shake(10, 5);
	}
	
	if diacount == 29 && global.gold >= 500
	{
		text = "잘 생각했다!!!";
		screen_shake(15, 5);
		global.gold -= 500;
		audio_play_sound(SE_coin02, 1, false);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 30
	{
		text = "그럼 이 기술도 받아라!!";
		screen_shake(10, 5);
		oPlayer.attackskill_set = 5;
		global.Player_attackskill = 5;
		global.attackskill05 = true;
		global.NPC29_dialog += 1;
		skillget_effect(oPlayer.x, oPlayer.y - 12, 4);
	}
	
	if diacount == 31
	{
		text = "하하하!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 32
	{
		text = "너라면 나를 뛰어넘는것도 가능하겠군!";
		screen_shake(5, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 33
	{
		text = "그럼 다음에 보도록 하지!!";
		screen_shake(10, 5);
		global.NPC29_dialog += 1;
	}
	
	if diacount == 34
	{
		text = "다음에 만날때까지 다시 단련이다!";
		screen_shake(5, 5);
	}
	
	

	
	return text;
}