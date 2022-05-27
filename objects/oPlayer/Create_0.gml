
event_inherited();

#region Basic status

//오브젝트 그룹
object_type = "player";

//체력
maxHP = 100;
HP = maxHP;
//마력
maxMP = 100;
MP = maxMP;
MP_regen_time = 120;
alarm[9] = MP_regen_time;
//경험치, 레벨
Exp = 0;
maxExp = 20;
level = 1;
//속도
hspd = 2.4;	
vsp = 1;
SPD = 1;				//애니메이션 속도, 후딜 프레임 감소
rollspd = 8;
//점프
maxjumpcount = 1;
jumpcount = 1;
jumppower = 6.5;
//중력, 마찰력
grv = 0.5;
frict = 0.2;
//공격력
damage = 10;
STR = 0;
//넉백
knockback_speed = 0;
knockback = 3;
knockback_power = 5;
knockback_resistance = 0;
//공격장비 상태
weapon = "empty";
maxattack = 1;
//공격 스킬
attackskill_set = 1;
attackskill_cool = 0;
attackskill_coolset = 70;
skillS_cool = 0;	
skillS_maxcool = 300;
attackskill_cost = 10;
//이동스킬
moveskill_set = 1;
moveskill_cool = 0;
moveskill_maxcool = 100;
moveskill01_cool = 90;
moveskill02_cool = 150;
moveskill03_cool = 120;
//피격 이펙트
hit_particle = oparticle_02;
//현재 룸 확인
room_playeris = room;

#endregion

#region ather valiables
//플레이어 상태 표시
state = "Move";			
//무적 변수
invincibility = false;
invincibility_count = 30;
invincibility_maxcount = 45;
//가변 속도
moving_speed = 0;
//지속상태 변수
isshadow = false;
//지면 접촉 확인
isground = true;
//1회용 변수
death_knockback = 6;
ladder_term = 10;
ispushed = false;
//다용도 변수
actingcount = 0;		
delaycount = 0;
repeatcount = 0;
act_count = 10;
act_switch = false;
//텍스트 출력 변수
notenough_text = false;
notready_text = false;
//부활 변수
revive_count = 0;		
revive_maxcount = 10;
//오디오 출력 변수
audio_play_switch = true;
audio_play_count = 10;
//하단 카메라 이동 변수
crawl_cameramove_count_defalt = 45;
crawl_cameramove_count = crawl_cameramove_count_defalt;
//독백 대화창 출력 변수
dialog_endswitch = false;
dialog_count = 0;
event_tirriger = false;

//튜토리얼 입력 확인 변수
movekey_input_check = false;
jumpkey_input_check = false;
attackkey_input_check = false;
attackskillkey_input_check = false;
moveskillkey_input_check = false;
itemkey_input_check = false;

#endregion


//입력 받아오기
input = instance_create_layer(0, 0, "Instances", oInput);