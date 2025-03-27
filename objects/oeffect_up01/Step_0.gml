
if image_alpha >0
{
	image_alpha -= 0.04;
	y -= speed;
	speed -= 0.08;
}
else
{
	instance_destroy();
}