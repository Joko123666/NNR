count--;

if place_meeting(x, y, oPlayer) && oPlayer.invincibility == false
{
	creat_hitbox(x, y, self, sprite_index, knockback_power, 1, attack_power, image_xscale)
	repeat(4)
	{instance_create_depth(x, y, 0, oparticle_08)}
	instance_destroy();
}


if place_meeting(x, y, oWall) && count < 85
{
	repeat(4)
	{instance_create_depth(x, y, 0, oparticle_08)}
	instance_destroy();
}

if count <=0
{
	instance_destroy() 
}