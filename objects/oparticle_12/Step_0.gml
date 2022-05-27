
if image_alpha >0
{
	image_alpha -= 0.02;
	image_angle += angspd;
}
else
{
	instance_destroy();
}
if place_meeting(x, y - 8, oWall)
	{instance_destroy();}