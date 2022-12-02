// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_NPC23_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;
	text = "";
	
	if diacount == 0
	{
		text = "안녕하세요 길드엔 어쩐 일이시죠?";
		global.NPC23_dialog += 1;
		global.UItext_show = true;
	}
	
	if diacount == 1
	{
		text = "아, 당신이 이드님이신가요?";
		global.NPC23_dialog += 1;
		global.mainquest[6] = 3;		//퀘스트 진행도 갱신
		quest_clearboard("main006");
		audio_play_sound(SE_system03, 1, false);
	}
	
	if diacount == 2
	{
		text = "저는 이 길드의 지부장을 맡고 있는 사람입니다";
		global.NPC23_dialog += 1;
	}
	
	if diacount == 3
	{
		text = "지부장이라고 해도 직원이 얼마 없는 시골이지만요";
		global.NPC23_dialog += 1;
	}
	
	if diacount == 4 
	 {
		 text = "카카리코 마을의 길드에서 연락은 받았습니다";
		global.NPC23_dialog += 1;
	 }
	
	
	if diacount == 5
	{
		text = "저희의 지원요청에 맞춰서 오셨다구요";
		global.NPC23_dialog += 1;
	}
	
	if diacount == 6 
	 {
		 text = "정말 도움이 필요하던 차에 잘 와주셨습니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 7 
	 {
		 text = "다름이 아니라 최근 산의 몬스터가 급증해서";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 8
	 {
		 text = "점점 세력권을 널혀와서 적광석을 채굴하는 곳인";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 9 
	 {
		 text = "광산 안까지 몰려들어 채굴을 할수 없는상황입니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 10 
	 {
		 text = "이 건에 대해서는 몬스터를 물리쳐 주시는 경비대의";
		global.NPC23_dialog += 1;
	 }
	
	 if diacount == 11 
	 {
		 text = "경비대장님이 의뢰를 주셨기 때문에";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 12 
	 {
		 text = "그쪽에서 현황과 자세한 정보를 전달받으실수 있으실겁니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 13 
	 {
		 text = "그리고 이건 저희 길드에서 드리는 지원금입니다";
		global.NPC23_dialog += 1;
		global.gold += 150;
		audio_play_sound(SE_getitem, 1, false);
	 }
	 
	 if diacount == 14 
	 {
		 text = "필요한게 있으시면 말씀해주십시오";
		global.NPC23_dialog += 1;
		global.mainstream = 31;
		global.mainquest[11] = 1;		//퀘스트 진행도 갱신
		quest_board("main011");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		global.UItext_show = false;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15	&& global.mainstream <= 32
	 {
		 text = "더 필요한게 있으신가요?";
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream ==33
	 {
		  text = "광산조사 힘내세요";
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream ==34
	 {
		  text = "바위를 처리하는 방법은 병사장님이 아실겁니다";
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream ==35
	 {
		  text = "이곳의 상점에서는 화약량을 늘린 폭탄을 판다고 합니다";
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream ==36
	 {
		  text = "광산조사 힘내세요";
		dialog_endswitch = true;
		diafalse_count = 50;
		alarm[9] = 30;
	 }
	 
	 if diacount == 15 && global.mainstream >= 41
	 {
		  text = "어서오세요 이드씨";
		global.NPC23_dialog += 1;
		global.UItext_show = true;
	 }
	 
	 if diacount == 16
	 {
		  text = "병사장님께 의뢰 달성의 확인을 연락받았습니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 17
	 {
		  text = "조사뿐만 아니라 해결까지 하셨다고 전해들었습니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 18
	 {
		  text = "사건해결 고생 많으셨습니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 19
	 {
		  text = "병사장님도 크게 만족하신듯 추가 보수를 전달받았습니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 20
	 {
		  text = "거기에 길드에서도 추가 보수를 더 얹었습니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 21
	 {
		  text = "전부 합쳐서 총합 1000G를 드리겠습니다";
		global.NPC23_dialog += 1;
		global.gold += 1000;
		audio_play_sound(SE_getitem, 1, false);
		global.mainstream = 43;
	 }
	 
	 if diacount == 22
	 {
		  text = "그리고 추가로, 광산의 문제가 해결되서";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 23
	 {
		  text = "잠시 절제하고 있던 적광석을 다시 쓸수 있게되어";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 24
	 {
		  text = "길드 위의 전송장치를 이용할수 있게 되었습니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 25
	 {
		  text = "일반적으로는 매번 사용료를 받지만";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 26
	 {
		  text = "이드씨의 공헌에 보답하기위해";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 27
	 {
		  text = "길드 본부에 보고해서 특별허가증을 발급받았습니다";
		global.NPC23_dialog += 1;
		audio_play_sound(SE_getitem, 1, false);
	 }
	 
	 if diacount == 28
	 {
		  text = "이 허가증이 있으면 길드가 관리하는 전송장치는";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 29
	 {
		  text = "무료로 이용하실 수 있습니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 30
	 {
		  text = "앞으로 편하게 이용해주시면 되겠습니다";
		global.NPC23_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 50;
		global.UItext_show = false;
		alarm[9] = 30;
		
	 }
	 
	 if diacount == 31
	 {
		  text = "아 그리고 본부에서의 전언이 있습니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 32
	 {
		  text = "카카리코마을에 연결되어있는 길드의 전송점에서";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 33
	 {
		  text = "붉은 옷을 입고 있는 직원에게 말을 걸어달라고 합니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 34
	 {
		  text = "맡기고싶은 일이 있는데 그곳에서 전달한다고 합니다";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 35
	 {
		  text = "본부에서의 직접 의뢰라니 어떤 일일까요?";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 36
	 {
		  text = "이드님이 기대받고 있다는 일이니 ";
		global.NPC23_dialog += 1;
	 }
	 
	 if diacount == 37
	 {
		  text = "긍정적으로 검토해주시길 바랍니다";
		  global.mainquest[14] = 1;		//퀘스트 진행도 갱신
		quest_board("main014");			//퀘스트 보드에 퀘스트 갱신
		audio_play_sound(SE_system07, 1, false);
		global.NPC23_dialog += 1;
		dialog_endswitch = true;
		diafalse_count = 50;
		global.mainstream = 44;
		global.UItext_show = false;
		alarm[9] = 30;
	 }
	 
	if diacount == 38
	 {
		 var randia = irandom(2)
		 if randia == 0
		 { text = "도움이 필요하면 말씀해주세요";}
		 if randia == 1
		 { text = "이드님의 앞으로의 활약을 기대합니다";}
		 if randia == 2
		 { text = "길드 제루루크 지점에 어서오세요!"}
		 dialog_endswitch = true;
		 diafalse_count = 50;
		 alarm[9] = 30;
		
	 }
	
	return text;
}