event_inherited();
maxHP = 2800;
HP = maxHP;
HP_checkpoint = HP;
Exp = 520;
object_type = "boss"

state = "Neutral"
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

grv = 1;
vsp = 0;

numberof_minions = 0;


hit_swich = false;
hit_count = 0;

image_speed = 0.3;