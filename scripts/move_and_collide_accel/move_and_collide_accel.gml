function move_and_collide_accel(argument0, argument1, argument2, argument3)
{
	///@arg xspeed
	///@arg yspeed
	var xspeed = argument0;
	var yspeed = argument1;
	var duration = argument2;
	var frict = argument3;
	
	if !place_meeting(x+xspeed, y-4, oWall)
	{
		x += xspeed;
		xspeed -= frict;
		duration--;
	}
	

	if !place_meeting(x, y+yspeed, oWall)
	{
		y += yspeed;
	}
	
	if duration <=0
	{
		duration = argument2;
		xspeed = argument0;
		yspeed = argument1;
	}

}