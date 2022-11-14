
#region GUI 관리변수
	global.screen_black = false;
	global.input_type = "A";
	global.UItext_show = false;
	global.gamevolume = 0.5;
#endregion

#region //게임구조 트리거 변수 

global.room_direction = 1;
global.BGM_number = 0;
global.PauseGame = false;
#endregion

#region //퀘스트보드 관리변수
global.quest_stack[1] = "empty";
global.quest_stack[2] = "empty";
global.quest_stack[3] = "empty";
global.quest_stack[4] = "empty";
#endregion

#region //플레이어 수치,상태 변수
global.Deathcount_total = 0;

global.Player_item = "empty";	//소지아이템
for (i = 0; i < 20 ; i++)		//소지 전리품
{global.root_item[i] = 0;}
//1 = 고블린귀 
//2 = 고블린 귀걸이
//3 = 오크엄니
//4 = 적광석1
//5 = 적광석2
//6 = 적광석3
//7 = 적광석4
//8 = 박쥐날개
//9 = 
global.guildcard = 0;
global.greenorb = false;
global.redorb = false;
global.blueorb = false;

global.gold = 0;				//소지 골드

global.Player_moveskill = 1;	//이동 스킬
global.Player_sword = false;
global.Player_weapon = "sword";	//무 기 바 리 에 이 션
global.Player_attack3 = false;	
global.Player_attackskill = 0;	//공격 스킬
global.Playerequip01 = "empty";
global.Playerequip02 = "empty";
global.Playerequip03 = "empty";

global.moveskill01 = true;
global.moveskill02 = false;
global.moveskill03 = false;
global.moveskill04 = false;
global.moveskill05 = false;
global.moveskill06 = false;

global.attackskill01 = true;
global.attackskill02 = false;
global.attackskill03 = false;
global.attackskill04 = false;
global.attackskill05 = false;
global.attackskill06 = false;
#endregion

for (i=0; i<20 ;i++)
	{
		global.chest_number[i] = false;
	}
	
global.store_item_stock01 = 1;
global.store_item_stock02 = 1;
global.store_item_stock03 = 3;
global.store_item_stock04 = 1;
//1 = 카카리코 씨앗
//2 = 제루루크 신발
//3 = 제루루크 병영폭탄 
//4 = 유적지 체력씨앗 
	
	
#region dialog_variables
#region //Main
	global.mainstream = -1;
	// 퀘스트 상태 0 = 미수락, 1 = 시작, 2 = 달성, 3 = 클리어
	for (i=1; i< 20 ; i++)
	{global.mainquest[i] = 0;}
	global.mainquest[10] = 0;
	global.mainquest[11] = 0;
	global.mainquest[12] = 0;
	global.mainquest[13] = 0;
	global.mainquest[14] = 0;
	global.mainquest[15] = 0;
	global.mainquest[16] = 0;
	global.mainquest[17] = 0;
	global.mainquest[20] = 0;
#endregion

#region //Quest line
	for (i=1; i< 20 ; i++)
	{global.subquest[i] = 0;}
	global.quest001 = 0;
	global.quest002 = 0;

#endregion

global.quest_selection = "A";

#region	//NPC dialog process
	global.NPC_shopper01_dialog = 0;
	global.NPC_shopper02_dialog = 0;
	global.NPC_shopper03_dialog = 0;
	global.NPC2_dialog = 0;
	global.NPC4_dialog = 0;
	global.NPC7_dialog = 0;
	global.NPC8_dialog = 0;
	global.NPC09_dialog = 0;
	global.NPC10_dialog = 0;
	global.NPC15_dialog = 0;
	global.NPC16_dialog = 0;
	global.NPC17_dialog = 0;
	global.NPC18_dialog = 0;
	global.NPC19_dialog = 0;
	global.NPC20_dialog = 0;
	global.NPC21_dialog = 0;
	global.NPC23_dialog = 0;
	global.NPC24_dialog = 0;
	global.NPC28_dialog = 0;
	global.NPC29_dialog = 0;
	global.NPC30_dialog = 0;
	global.NPC31_dialog = 0;
	global.NPC43_dialog = 0;
	//이 밑으로 세이브,로드 미등록
	global.NPC41_dialog = 0;
	global.NPC44_dialog = 0;
	global.NPC45_dialog = 0;
	global.NPC46_dialog = 0;
	global.NPC48_dialog = 0;
	global.NPC50_dialog = 0;
	global.NPC51_dialog = 0;
	global.NPC99_dialog = 0;

	global.NPC8_status = 0;
	global.NPC21_status = 0;
#endregion

//선택지 확인 
global.selection = "A";
global.yabawi_token = 0;
global.end_sleep = false;

global.bugbeat = false;

#endregion