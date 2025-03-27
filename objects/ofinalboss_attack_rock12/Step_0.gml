direction = image_angle;

var effect = instance_create_depth(x, y , 12, oparticle_25);
effect.image_angle = image_angle + 180;

if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(oPlayer.x, oPlayer.y, self, sprite_index, knockback_power, 1, attack_power, image_xscale);
	create_particle(x, y, oparticle_26, 3);
	instance_destroy();
}