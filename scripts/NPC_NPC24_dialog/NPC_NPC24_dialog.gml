// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC24_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "";
	
	if diacount == 0
	{
		text = "외지인이 이곳엔 무슨일인가";
		if global.mainstream >= 31
		{
			global.NPC24_dialog += 1;
			global.UItext_show = true;
			global.mainstream = 32;
			global.mainquest[11] = 3;		//퀘스트 진행도 갱신
			quest_clearboard("main011");
			audio_play_sound(SE_system03, 1, false);
		}
		else
		{dialog_endswitch = true; diafalse_count = 50;}
		
	}
	
	if diacount == 1
	{
		text = "길드의 지원으로 왔다고?";
		global.NPC24_dialog += 1;
	}
	
	if diacount == 2
	{
		text = "길드의 지원으로 왔다고?";
		global.NPC24_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "길드녀석들은 항상 필요할때 도움이 안되";
		global.NPC24_dialog += 1;
	}
	
	if diacount == 4 
	 {
		 text = "그렇게 중요한 일이라고 일렀는데";
		global.NPC24_dialog += 1;
	 }
	
	
	if diacount == 5
	{
		text = "한참지나서 겨우 보낸게 처음보는 외지인이라니";
		global.NPC24_dialog += 1;
	}
	
	if diacount == 6 
	 {
		 text = "하지만 사태가 사태니까 어쩔수 없군";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 7 
	 {
		 text = "길드에서 대충 설명은 들었겠지";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 8
	 {
		 text = "얼마전부터 광산 안쪽에서 몬스터가 몰려나와서";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 9 
	 {
		 text = "도저히 마음놓고 채굴을 할 상황이 아니다";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 10 
	 {
		 text = "광산 안쪽으로 들어가서 원인을 조사하고 싶은데";
		global.NPC24_dialog += 1;
	 }
	
	 if diacount == 11 
	 {
		 text = "현재 병사의 인원이 충분하지 않기 때문에";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 12 
	 {
		 text = "밀려나오는 몬스터들을 막아내는데 급급한 지경이다";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 13 
	 {
		 text = "그래서 길드에 광산 안쪽을 조사해줄 인원을 부탁했는데";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 14 
	 {
		 text = "너 혼자서 할수 있겠나?";
		global.NPC24_dialog += 1;
		
	 }
	 
	 if diacount == 15
	 {
		 text = "아니, 여기까지 온 이상 못해도 해줘야겠다";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 16
	 {
		 text = "병사에게는 말을 해놓을테니";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 17
	 {
		 text = "빠르게 조사를 끝낼수 있도록";
		global.NPC24_dialog += 1;
		global.mainstream = 33;
		global.mainquest[12] = 1;		//퀘스트 진행도 갱신
		quest_board("main012");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	 }
	 
	 if diacount == 18	&& global.mainstream <= 33
	 {
		 var randia = irandom(2)
		 if randia == 0
		 { text = "느긋하게 수다 떨 시간은 없다";}
		 if randia == 1
		 { text = "아직도 출발하지 않은건가?";}
		 if randia == 2
		 { text = "어서빨리 조사해 오도록";}
		 dialog_endswitch = true;
		 diafalse_count = 50;
		
	 }
	 
	 if diacount == 18 && global.mainstream >= 34
	 {
		 text = "조사는 좀 진척 되었는가?";
		global.NPC24_dialog += 1;
		global.UItext_show = true;
	 }
	 
	 if diacount == 19
	 {
		 text = "광산 안쪽에 돌로 막힌곳이 있어서";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 20
	 {
		 text = "조사를 더 진행할 수 없다고?";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 21
	 {
		 text = "몬스터들이 난동을 부리면서";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 22
	 {
		 text = "통로가 일부 무너졌나 보군";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 23
	 {
		 text = "안전을 확보하면서 길을 낼 시간은 없다";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 24
	 {
		 text = "마침 우리가 확보한 발파용 폭약이 있으니";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 25
	 {
		 text = "이걸 사용하면 무너진 바위정도는";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 26
	 {
		 text = "한번에 치울수 있을거다";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 27
	 {
		 text = "혹시 폭탄이 또 필요하면";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 28
	 {
		 text = "창고의 병사에게 말하면 지급해줄거다";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 29
	 {
		 text = "하지만 창고의 폭탄도 무한한게 아니니";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 30
	 {
		 text = "너무 남용하지 말도록";
		global.NPC24_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 50;
		global.mainstream = 35;
		audio_play_sound(SE_system07, 1, false);
		instance_create_depth(x + 24*image_xscale, y - 24, 0, Item_bomb01);
		global.UItext_show = false;
		global.mainquest[13] = 2;
	 }
	 
	 if diacount == 31	&& global.mainstream <= 40
	 {
		 var randia = irandom(2)
		 if randia == 0
		 { text = "느긋하게 수다 떨 시간은 없다";}
		 if randia == 1
		 { text = "여긴 항상 자원이 부족하다";}
		 if randia == 2
		 { text = "이곳의 폭탄에는 기본적으로 점착제가 발려있다";}
		 dialog_endswitch = true;
		 diafalse_count = 50;
	 }
	 
	  if diacount == 31 && global.mainstream >= 41
	 {
		 text = "조사는 좀 진척 되었는가?";
		global.NPC24_dialog += 1;
		global.UItext_show = true;
	 }
	 
	 if diacount == 32
	 {
		 text = "광산 안쪽에서 몬스터를 뱉어내는 장치가 있어서";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 33
	 {
		 text = "그것을 부수고 왔다고?";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 34
	 {
		 text = "조사만 하고 끝낼수도 있었는데";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 35
	 {
		 text = "생각보다 유능한 녀석이였군";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 36
	 {
		 text = "이래저래 신세를 졌다";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 37
	 {
		 text = "이 마을의 병사장으로서";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 38
	 {
		 text = "할수있는 보답은 최대한 해주마";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 39
	 {
		 text = "남아있는 몬스터는 병사들을 이용해 정리하지";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 40
	 {
		 text = "보수는 길드를 통해 지급하겠네";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 41
	 {
		 text = "그리고 이건 내가 주는 보답이다";
		global.NPC24_dialog += 1;
		instance_create_depth(x + image_xscale*32, y - 24, 0, Item_superroot);
	 }
	 
	 if diacount == 42
	 {
		 text = "광산에서 드물게 나는 버섯으로";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 43
	 {
		 text = "먹으면 신체가 놀랍도록 강해진다고 하지";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 44
	 {
		 text = "시중에서 팔지 않는 물건이니 잘 쓰도록";
		global.NPC24_dialog += 1;
	 }
	 
	 if diacount == 45
	 {
		 text = "그럼 이만 줄이도록 하지";
		global.NPC24_dialog += 1;
		if global.mainstream <= 42
		{
			global.mainstream = 42;
		}
		global.mainquest[16] = 3;		//퀘스트 진행도 갱신
		quest_clearboard("main016");
		audio_play_sound(SE_system07, 1, false);
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
	 }
	 
	 if diacount == 46	&& global.mainstream >= 42
	 {
		 var randia = irandom(2)
		 if randia == 0
		 { text = "큰 도움을 받았다, 감사하지";}
		 if randia == 1
		 { text = "이변이 해결되어도 할일이 산더미다";}
		 if randia == 2
		 { text = "이곳에 입대를 해볼 생각 없나?";}
		 dialog_endswitch = true;
		 diafalse_count = 50;
		
	 }
	 
	 
	
	return text;
}