/*
if instance_exists(oPlayer)
{
	if oPlayer.y  > y or oPlayer.input.down_jump or oPlayer.state == "Ladder"
	{
		mask_index = -1;
	}
	else
	{
		mask_index = movingwall_sp;
	}
}
*/



if place_meeting(x, y, movingwall_turningpoint) && act_count <= 0
{
	side = side * -1;

	act_count = 10;
	show_debug_message(side);
}

if act_count > 0
{act_count -= 1;}

move_and_collide(0, side, oWall);

if oPlayer.y  > y	&& place_meeting(x,y-2, oPlayer)
{
	with oPlayer
	{move_and_collide(0, Ymoving_halfwayWall.side, oWall);}
}



