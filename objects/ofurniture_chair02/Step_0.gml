

if place_meeting(x, y, oHitbox)
{
	repeat(random_range(3, 5))
	{instance_create_depth(x, y-4, 2, ofurniture_wood_frag);}
	instance_destroy();
}