
var effect = instance_create_depth(x, y + random_range(-8, 8), 12, oparticle_25);
effect.image_xscale = image_xscale;

x += moving_speed * image_xscale;


if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(oPlayer.x, oPlayer.y, self, sprite_index, knockback_power, 1, attack_power, image_xscale);
	create_particle(x, y, oparticle_26, 3);
	instance_destroy();
}
		
