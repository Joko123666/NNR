event_inherited();
maxHP = 260 ;
HP = maxHP;
Exp = 0 ;
gold = 0;
object_type = "boss";

attack_power = 30;
moving_speed = 5 * image_xscale;
knockback_power = 7;

grv = 0;
vsp = 0;

act_count = 360;

hit_particle = oparticle_26;
instance_create_depth(x, y, 1, shockwave_small);
body_wall = instance_create_depth(x,y, 1, ofinalboss_place_rock_wall);