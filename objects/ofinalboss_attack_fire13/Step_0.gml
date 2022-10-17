
direction = image_angle;

if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(x, y, self, hit_48, knockback_power, 1, attack_power, image_xscale);
	create_particle(x, y, oparticle_26, 3);
	instance_destroy();
}