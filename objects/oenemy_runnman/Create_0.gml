event_inherited();

#region Base statuse

//오브젝트 그룹
object_type = "enemy";
//체력
maxHP = 130 ;
HP = maxHP;
//속도
move_speed = 3.4;
//공격 변수
attack_power = 25;
knockback_power = 8;
//넉백 저항
knockback_resistance = 4;
//중력, 마찰력
grv = 0.4;
frict = 0.2;
//피격시 출력 이펙트
hit_particle = oparticle_15;

//플레이어와의 거리 체크
act_range = 366;
attack_range = 366;

//제거시 드랍 보상
Exp = 18 ;
gold = 3;
dead_item = Item_root_redrock3;

//상태별 스프라이트
defalt_sprite = enemy_vally_runnman_stand;
move_sprite = enemy_vally_runnman_move;
attack_sprite = enemy_vally_runnman_attack_ready;
knockback_sprite = enemy_vally_runnman_knockback;
death_sprite = enemy_vally_runnman_death;

//상태별 사운드
attack_SE = SE_attack01;
knockback_SE = SE_enemy_knockback04;
death_SE = SE_enemy_death06;

#endregion

#region other variables

//오브젝트의 상태
state = "Neutral";
//가변 속도
moving_speed = 1;
//넉백 쿨타임
knockback_maxcount = 10;
knockback_count = knockback_maxcount;
//무적 변수
invincibility = false;
invincibility_count = 3;
//세로 속도
vsp = 0;
//다용도 카운트 변수
act_count = 30;
act_count_set = 55;
act_switch = false;
move_count = 0;
act_switch2 = false;

#endregion


image_speed = 0.3;