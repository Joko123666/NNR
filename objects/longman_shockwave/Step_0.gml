speed = speed*0.9;

if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(oPlayer.x, y, self, hit_48, knockback_power, 1, attack_power, image_xscale)
	repeat(4)
	{instance_create_depth(x, y, 0, oparticle_01); create_particle(x, y, oparticle_02, 1);}
	instance_destroy();
}


if animation_end()
{instance_destroy();}