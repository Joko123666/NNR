

y -= moving_speed;
moving_speed = moving_speed * 0.85;

if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(oPlayer.x, oPlayer.y, self, hit_48, knockback_power, 1, attack_power, image_xscale);
	oPlayer.vsp = -12;
	create_particle(x, y, oparticle_26, 3);
}

if moving_speed > 2
{instance_create_layer(x, y, "Instances", ofinalboss_attack_fist2_shadow);}