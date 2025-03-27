event_inherited();
image_size(2);
maxHP = 1500;
pattern_HP1 = 1000;
pattern_HP2 = 500;
pattern_HP3 = 100;
HP = maxHP;
HP_checkpoint = HP;
Exp = 0;
object_type = "boss"

state = "Neutral"
phase_state = "Phase_1";
this_act = "empty";
last_act = "empty";

act_range = 2246;
attack_range = 250;
act_num = random(10);
act_count = 120;
act_switch = false;
delay_count = 20;
move_speed = 0;
moving_speed = 0;
charge_speed = 0;

knockback_power = 5;		//타격 넉백파워 
attack_power = 40;			//공격 파워
damage = 10;
side = 1;
act_count_set = 90;
shockwave_count = 3;

grv = 1;
vsp = 0;

numberof_minions = 0;

shockwave_count = 3;

hit_swich = false;
hit_count = 0;

image_speed = 1;
image_xscale = -2;

oPlayer.MP_regen_time = 20;

quest_clearall();
