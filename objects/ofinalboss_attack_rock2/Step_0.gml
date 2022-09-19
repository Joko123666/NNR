
var effect = instance_create_depth(x, y + random_range(-8, 8), 12, oparticle_29);
effect.image_angle = image_angle;




if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(x, y, self, sprite_index, knockback_power, 1, attack_power, image_xscale);
	create_particle(x, y, oparticle_26, 3);
	instance_destroy();
}
		
