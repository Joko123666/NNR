image_angle += angspd;

if place_meeting(x, y, oPlayer) or place_meeting(x, y, oWall)
{
	creat_hitbox(x, y, oenemy_kingskull, hit_48, 5, 1, 30, image_xscale);
	act_count = count_decrease(act_count, 1, 0);
	if act_count <= 0
	{
		create_particle(x, y, oparticle_18, 2);
		instance_destroy();
	}
	
}
