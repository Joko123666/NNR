
if place_meeting(x, y, oExplosion)
{
	instance_destroy();
	create_particle(x, y, oparticle_15, 7);
	
	instance_destroy(this_wall);

	global.mainstream = 36;
}

if global.mainstream >= 36
{instance_destroy();instance_destroy(this_wall);}
