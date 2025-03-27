
if image_alpha >0
{
	image_alpha -= 0.04;
	image_angle += angspd;
}
else
{
	instance_destroy();
}

if place_meeting(x, y, oWall)
{instance_destroy();}