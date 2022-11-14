
function NPC_NPC51_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = ""
	
	if diacount == 0
	{
		text = "안녕하신가!";
		screen_shake(5, 5);
		global.NPC51_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "내이름은 골리아스!";
		screen_shake(5, 5);
		global.NPC51_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "...";
		active_sprite = NPC_village_09_active2;
		global.NPC51_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "자네의 여행도 끝이 다가왔군";
		global.NPC51_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "마음의 준비는 되었는가?";
		global.NPC51_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "자네에게 나의 최고의 기술을 맡기고싶네";
		global.NPC51_dialog += 1;
	}
	
	if diacount == 6
	{
		text = "이 기술을 사용해도 좋고 사용하지 않아도 좋네";
		global.NPC51_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "그저 이 기술을 받아주게나";
		global.Player_attackskill = 6;
		global.attackskill06 = true;
		oPlayer.attackskill_set = 6;
		global.NPC51_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "...";
		global.NPC51_dialog += 1;
	}
	
	if diacount == 9
	{
		text = "그럼 잘 지내시게";
		global.NPC51_dialog += 1;
	}
	
	if diacount == 10
	{
		text = "나도 자신을 단련시키고 있겠네!!";
		active_sprite = NPC_village_09_active;
		screen_shake(10, 5);
		global.NPC51_dialog += 1;
	}
	
	if diacount == 11
	{
		text = "왓핫핫하!!";
		screen_shake(10, 5);
		global.NPC51_dialog += 1;
	}
	
	if diacount == 12
	{
		text = "오오 단련! 그것은 인생!";
		screen_shake(5, 5);
	}

	
	return text;
}