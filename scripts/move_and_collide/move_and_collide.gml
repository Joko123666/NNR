function move_and_collide(argument0, argument1)
{
	///@arg xspeed
	///@arg yspeed
	var xspeed = argument0;
	var yspeed = argument1;
	
	if !place_meeting(x+xspeed, y-4, oWall)
	{
		x += xspeed;
	}
	

	if !place_meeting(x, y+yspeed, oWall)
	{
		y += yspeed;
	}

}