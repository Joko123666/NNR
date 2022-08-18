
var effect = instance_create_depth(x, y + random_range(-8, 8), 12, oparticle_25);
effect.image_xscale = image_xscale;

move_and_collide(moving_speed * image_xscale, 0)

if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(x, y, self, sprite_index, knockback_power, 1, attack_power, image_xscale);
	create_particle(x, y, oparticle_26, 3);
	instance_destroy();
}
		
if place_meeting(x, y, oWall)
{instance_destroy();}