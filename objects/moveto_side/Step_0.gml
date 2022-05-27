if !instance_exists(oPlayer) {exit;}

if place_meeting(x, y, oPlayer)
{
	if oPlayer.state == "Ladder"
	{oPlayer.state = "Move";}
	if side == "up"
	{
		oPlayer.vsp = -move_speed
	}
	
	if side == "left"
	{
		with(oPlayer)
		{move_and_collide(-move_speed, 0)}
	}
	
	if side == "right"
	{
		with(oPlayer)
		{move_and_collide(move_speed, 0)}
	}
}
