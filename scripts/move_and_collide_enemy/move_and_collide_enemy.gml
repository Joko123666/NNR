function move_and_collide_enemy(argument0, argument1)
{
	///@arg xspeed
	///@arg yspeed
	var xspeed = argument0;
	var yspeed = argument1;
	
	if !place_meeting(x+xspeed, y-4, oWall) && !place_meeting(x+xspeed, y-4, Enemy_wall)
	{
		x += xspeed;
	}
	

	if !place_meeting(x, y+yspeed, oWall) && !place_meeting(x, y+yspeed, oEnemy) && !place_meeting(x, y+yspeed, Enemy_wall)
	{
		y += yspeed;
	}
	
	if place_meeting(x+xspeed, y-4, oEnemy) && !place_meeting(x+xspeed, y-4, oWall)
	{
		x -= xspeed/2;
	}

}