
function NPC_NPC48_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	var randia = irandom(2);
	text = ""
	
	if diacount == 0
	{
		text = "아? 누구십니까?";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 1
	{
		text = "여기는 관계자외 출입금지입니다만";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "뭐, 좋습니다";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "마침 같이 놀던 친구가 근무를 나가서";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 4
	{
		text = "상대가 필요한 참이였습니다";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 5
	{
		text = "한판 어떠십니까?";
		global.NPC48_dialog += 1;
	}
	if diacount == 6
	{
		text = "룰은 간단합니다";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 7
	{
		text = "제가 공을 세개의 컵중 하나에 넣을테니";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 8
	{
		text = "공이 들어간 컵을 고르시면 승리입니다";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 9
	{
		text = "거는것은 한번에 500G!";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 10
	{
		text = "대신 맞추시면 유용한 스킬을 하나 드리겠습니다";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 11
	{
		text = "아, 길드에는 비밀로 부탁드립니다";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 12
	{
		text = "그러면 한판 어떠십니까?";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 13
	{
		text = "저한테 돈을 주시면";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 14
	{
		text = "뒤집을수 있는 기회를 한번씩 드리겠습니다";
		global.NPC48_dialog += 1;
		var cup_01 = instance_create_layer(415, 332, "Instances", oYabawi_cup);
		var cup_02 = instance_create_layer(461, 332, "Instances", oYabawi_cup);
		var cup_03 = instance_create_layer(507, 332, "Instances", oYabawi_cup);
		var selection = irandom(2)
		if selection == 0
		{cup_01.has_ball = true;}
		if selection == 1
		{cup_02.has_ball = true;}
		if selection == 2
		{cup_03.has_ball = true;}
	}
	
	if diacount == 15	&& global.gold <500
	{
		text = "어라라, 돈이 부족하시네요";
	}
	if diacount == 15	&& global.gold >= 500
	{
		text = "500G 받았습니다~";
		global.NPC48_dialog += 1;
		global.yabawi_token += 1;
		global.gold -= 500;
	}
	
	if diacount == 16	&& global.yabawi_token > 0
	{
		text = "이곳을 떠나시면 기권으로 생각하겠습니다~";
	}
	if diacount == 16	&& global.yabawi_token <= 0
	{
		text = "저런!";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 17
	{
		text = "이번엔 운이 없으셨군요";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 18
	{
		text = "한번 더 어떠십니까?";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 19
	{
		text = "다시 섞어놓거나 하진 않겠습니다";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 20	&& global.gold < 500
	{
		text = "어라라? 돈이 다 떨어지셨나본데요?"
	}
	if diacount == 20	&& global.gold >= 500
	{
		global.gold -= 500;
		text = "과연 이번엔 공을 찾으실지?";
		global.yabawi_token += 1;
		global.NPC48_dialog += 1;
	}
	
	if diacount == 21	&& global.yabawi_token > 0
	{
		text = "자 골라골라~";
	}
	if diacount == 21	&& global.yabawi_token <= 0
	{
		text = "이런이런!";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 22
	{
		text = "이것 참 확률이 무섭네요~";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 23
	{
		text = "그래도 이번에는 쉽게 찾으실수 있겠어요~~";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 24
	{
		text = "500G! 한번 더 주시겠어요?";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 25	&& global.gold < 500
	{
		text = "이런이런! 돈만 있으면 이번엔 확정일텐데!"
	}
	if diacount == 25	&& global.gold >= 500
	{
		global.gold -= 500;
		text = "하하, 이것참 죄송하게 됐네요!";
		global.yabawi_token += 1;
		global.NPC48_dialog += 1;
	}
	
	if diacount == 26
	{
		text = "자! 마지막 컵을 뒤집으시죠!";
	}
	
	if diacount == 30
	{
		text = "공을 찾은걸 축하드립니다!";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 31
	{
		text = "당신이 이기셨네요!";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 32
	{
		text = "골드 감사합니다~~~";
		global.NPC48_dialog += 1;
	}
	
	if diacount == 33
	{
		if randia == 0
		{text = "핫!핫!하!";}
		if randia == 1
		{text = "내기란 이런법인거죠~";}
		if randia == 2
		{text = "슬슬 휴식시간도 끝나가네요~";}
		
	}
	

	

	
	return text;
}