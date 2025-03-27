act_count--;

if act_count <=0
{
	repeat(random_range(3,7))
	{
	instance_create_depth(x + random_range(-24, 24), y-28, 10, oparticle_04);
	}
	act_count = random_range(5, 25);
}

if place_meeting(x, y, oHitbox)
{
	create_deathob(furniture_pot_desob, ofurniture_pot_frag, 8, 24);
	instance_destroy();
}