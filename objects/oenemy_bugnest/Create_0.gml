event_inherited();
maxHP = 30 ;
HP = maxHP;
object_type = "enemy";

state = "Neutral";

if global.mainstream != 13
	{instance_destroy();}

act_range = 126;
attack_range = 64;
move_speed = 1.2;
knockback_maxcount = 10;
knockback_count = knockback_maxcount;
knockback_power = 5;
knockback = 4;
act_count = 30;
act_count_set = 30;
attack_power = 10;

grv = 0.4;
vsp = 0;

hit_particle = oparticle_01;

image_speed = 0.3;