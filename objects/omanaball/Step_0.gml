if !instance_exists(oPlayer)
{exit;}

move_towards_point(oPlayer.x, oPlayer.y, speed);
speed += 0.02;
if place_meeting(x, y, oPlayer)
{
	oPlayer.MP += 10;
	instance_destroy();
}