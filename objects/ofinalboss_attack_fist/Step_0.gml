

x += moving_speed * image_xscale;
moving_speed = moving_speed * 0.9;

if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(oPlayer.x, y, self, hit_48, knockback_power, 1, attack_power, image_xscale);
	create_particle(x, y, oparticle_26, 3);
}

if moving_speed >= 1.5
{
	var shadow = instance_create_layer(x, y, "Instances", ofinalboss_attack_fist_shadow);
	shadow.image_xscale = image_xscale;
}