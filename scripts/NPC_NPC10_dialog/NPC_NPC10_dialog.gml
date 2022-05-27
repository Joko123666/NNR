// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC10_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "";
	
	if diacount == 0
	{
		text = "안녕하세요 이드씨";
		global.NPC10_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = "오늘은 어떤 일로 찾아오셨나요?";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "모험가 길드에 가입하고 싶으시다구요?";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "드리기 어려운 말씀입니다만";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 4 
	 {
		 text = "모험가 길드에 가입하는데는 규정이 있어서요";
		global.NPC10_dialog += 1;
	 }
	
	
	if diacount == 5
	{
		text = "새로 가입하는 분은" + "자신이 다룰수 있는 무기가 있어야합니다";
		
		global.NPC10_dialog += 1;
		global.mainstream = 12;
		global.mainquest[1] = 1;		//퀘스트 진행도 갱신
		quest_board("main001");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		
	}
	
	if diacount == 6 && global.Player_sword == false
	{
		text = "모쪼록 무기를 들고 다시 찾아주시기 바랍니다";
		global.UItext_show = false;
		dialog_endswitch = true;
	}
	
	if diacount == 6 && global.Player_sword == true
	{
		text = "무기를 구해 오셨군요";
		global.NPC10_dialog += 1;
		global.mainstream = 18;
		global.mainquest[1] = 3;
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = true;
	}
	
	if diacount == 7 && global.Player_sword == true
	{
		text = "이드씨는 그 외에 조건은 만족하심으로";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 8 && global.Player_sword == true
	{
		text = "모험가 길드에 가입 하실수 있습니다";
		global.NPC10_dialog += 1;
		global.guildcard = 1;
	}
	
	if diacount == 9 && global.mainstream == 18
	{
		text = "모쪼록 즐거운 모험가 생활이 될수있도록";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 10 && global.mainstream == 18
	{
		text = "저희 길드가 전심전력 도와드리겠습니다";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 11 
	{
		text = "필요하시다면 언제든지 찾아주세요";
		global.UItext_show = false;
		dialog_endswitch = true;
	}
	
	
	//Main quest proccess
	
	if diacount <= 11 && global.mainstream == 22
	{
		text = "어서오세요 이드씨";
		global.NPC10_dialog = 12;
		global.UItext_show = true;
	}
	
	if diacount == 12
	{
		text = "이번 이상사태 해결에 협렵해주셨다 들었어요";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 13
	{
		text = "길드에 대한 협력 감사드립니다";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 14
	{
		text = "이건 다른 말입니다만...";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 15
	{
		text = "근래에 길드의 순간이동장치를 운영하지 않는이유를 아시나요?";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 16
	{
		text = "순간이동장치를 가동할때는 적광석이라는 광물이 필요합니다";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 17
	{
		text = "적광석 자체는 귀한광물이 아니지만 생산지가 정해져 있는데";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 18
	{
		text = "이 주변에는 동쪽으로가면 나오는 제루루크 마을이 있습니다";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 19
	{
		text = "원래대로라면 매달 한번씩 배송이 되어야 하는데";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 20
	{
		text = "광산에서 이상이일어나 한동안 채굴이 힘들것 같다고 합니다";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 21
	{
		text = "현재 열심히 원인을 조사중이지만 일손이 부족하다 하니";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 22
	{
		text = "가능하시다면 제루루크로 가셔서 도와주실수 있겠습니까?";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 23
	{
		text = "저희도 곤란하던 참이라 여러가지 지원을 해드리겠습니다";
		global.NPC10_dialog += 1;
		global.mainstream = 23;
	}
	
	
	if diacount == 24
	{
		text = "우선 제루루크 마을에서 꼭 필요한 신발을 드리겠습니다";
		instance_create_layer(x - 24 *image_xscale, y-24, "Instances", Item_jumpplus);
		global.NPC10_dialog += 1;
		audio_play_sound(SE_coin01, 1, false);
	}
	
	if diacount == 25
	{
		text = "이걸 신으시면 공중에서 한번 더 점프가 가능해진답니다";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 26
	{
		text = "제루루크 마을 주변의 높은곳을 이동하는데 도움이 될거예요";
		global.NPC10_dialog += 1;
	}
	
	if diacount == 27
	{
		text = "자세한건 제루루크의 길드에서 알려드릴겁니다";
		global.NPC10_dialog += 1;
		global.UItext_show = false;
		dialog_endswitch = true;
	}
	
	if diacount == 28
	{
		var randia = irandom(3);
		if randia == 0
			{ text = "개인적으로도 응원하고 있어요 이드씨!" ; }
		if randia == 1
			{ text = "길드에 오신건 환영합니다" ; }
		if randia == 2
			{ text = "혹시 저에게 볼일이 있으신가요?" ; }
		if randia == 3
			{ text = "길드에의 협력 항상 감사드립니다" ; }
		dialog_endswitch = true;
	}
	


	return text;
}