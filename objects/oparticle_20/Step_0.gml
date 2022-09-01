
if place_meeting(x, y, oPlayer) or place_meeting(x, y, oWall)
{
	creat_hitbox(x, y, oenemy_kingskull, hit_48, 8, 1, 50, image_xscale);
	if act_count > 0 
	{act_count--;}
	else
	{
		create_particle(x, y, oparticle_28, 7);
		instance_destroy();
	}
}